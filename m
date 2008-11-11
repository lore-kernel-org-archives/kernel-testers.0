From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #11989] Suspend failure on NForce4-based boards due to
	chanes in stop_machine
Date: Tue, 11 Nov 2008 11:52:14 +0100
Message-ID: <20081111105214.GA15645@elte.hu>
References: <YrUCLn0F-xH.A.fhE.E4zFJB@chimera> <20081110120401.GA15518@osiris.boeblingen.de.ibm.com> <200811101547.21325.rjw@sisk.pl> <200811102355.42389.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <200811102355.42389.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Heiko Carstens <heiko.carstens-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>, Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, Oleg Nesterov <oleg-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Dmitry Adamushko <dmitry.adamushko-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>


* Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> However, it is reproducible by doing
> 
> # echo core > /sys/power/pm_test
> 
> and repeating
> 
> # echo disk > /sys/power/state
> 
> for a couple of times, in which case the last two lines printed to the console
> before a (solid) hang are:
> 
> SMP alternatives: switching to SMP code
> Booting processor 1 APIC 0x1 ip 0x6000
> 
> So, it evidently fails while re-enabling the non-boot CPU and not 
> during disabling it as I thought before.
> 
> With commit c9583e55fa2b08a230c549bd1e3c0bde6c50d9cc reverted the 
> issue is not reproducible any more.

[ Cc:-ed workqueue/locking/suspend-race-condition experts. ]

Seems like the new kernel/stop_machine.c logic has a race for the test 
sequence above. (Below is the bisected commit again, maybe the race is 
visible via email review as well.)

	Ingo

-------------->
From c9583e55fa2b08a230c549bd1e3c0bde6c50d9cc Mon Sep 17 00:00:00 2001
From: Heiko Carstens <heiko.carstens-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>
Date: Mon, 13 Oct 2008 23:50:10 +0200
Subject: [PATCH] stop_machine: use workqueues instead of kernel threads

Convert stop_machine to a workqueue based approach. Instead of using kernel
threads for stop_machine we now use a an rt workqueue to synchronize all
cpus.
This has the advantage that all needed per cpu threads are already created
when stop_machine gets called. And therefore a call to stop_machine won't
fail anymore. This is needed for s390 which needs a mechanism to synchronize
all cpus without allocating any memory.
As Rusty pointed out free_module() needs a non-failing stop_machine interface
as well.

As a side effect the stop_machine code gets simplified.

Signed-off-by: Heiko Carstens <heiko.carstens-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>
Signed-off-by: Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>
---
 kernel/stop_machine.c |  111 ++++++++++++++++++-------------------------------
 1 files changed, 41 insertions(+), 70 deletions(-)

diff --git a/kernel/stop_machine.c b/kernel/stop_machine.c
index af3c7ce..0e688c6 100644
--- a/kernel/stop_machine.c
+++ b/kernel/stop_machine.c
@@ -37,9 +37,13 @@ struct stop_machine_data {
 /* Like num_online_cpus(), but hotplug cpu uses us, so we need this. */
 static unsigned int num_threads;
 static atomic_t thread_ack;
-static struct completion finished;
 static DEFINE_MUTEX(lock);
 
+static struct workqueue_struct *stop_machine_wq;
+static struct stop_machine_data active, idle;
+static const cpumask_t *active_cpus;
+static void *stop_machine_work;
+
 static void set_state(enum stopmachine_state newstate)
 {
 	/* Reset ack counter. */
@@ -51,21 +55,25 @@ static void set_state(enum stopmachine_state newstate)
 /* Last one to ack a state moves to the next state. */
 static void ack_state(void)
 {
-	if (atomic_dec_and_test(&thread_ack)) {
-		/* If we're the last one to ack the EXIT, we're finished. */
-		if (state == STOPMACHINE_EXIT)
-			complete(&finished);
-		else
-			set_state(state + 1);
-	}
+	if (atomic_dec_and_test(&thread_ack))
+		set_state(state + 1);
 }
 
-/* This is the actual thread which stops the CPU.  It exits by itself rather
- * than waiting for kthread_stop(), because it's easier for hotplug CPU. */
-static int stop_cpu(struct stop_machine_data *smdata)
+/* This is the actual function which stops the CPU. It runs
+ * in the context of a dedicated stopmachine workqueue. */
+static void stop_cpu(struct work_struct *unused)
 {
 	enum stopmachine_state curstate = STOPMACHINE_NONE;
-
+	struct stop_machine_data *smdata = &idle;
+	int cpu = smp_processor_id();
+
+	if (!active_cpus) {
+		if (cpu == first_cpu(cpu_online_map))
+			smdata = &active;
+	} else {
+		if (cpu_isset(cpu, *active_cpus))
+			smdata = &active;
+	}
 	/* Simple state machine */
 	do {
 		/* Chill out and ensure we re-read stopmachine_state. */
@@ -90,7 +98,6 @@ static int stop_cpu(struct stop_machine_data *smdata)
 	} while (curstate != STOPMACHINE_EXIT);
 
 	local_irq_enable();
-	do_exit(0);
 }
 
 /* Callback for CPUs which aren't supposed to do anything. */
@@ -101,78 +108,34 @@ static int chill(void *unused)
 
 int __stop_machine(int (*fn)(void *), void *data, const cpumask_t *cpus)
 {
-	int i, err;
-	struct stop_machine_data active, idle;
-	struct task_struct **threads;
+	struct work_struct *sm_work;
+	int i;
 
+	/* Set up initial state. */
+	mutex_lock(&lock);
+	num_threads = num_online_cpus();
+	active_cpus = cpus;
 	active.fn = fn;
 	active.data = data;
 	active.fnret = 0;
 	idle.fn = chill;
 	idle.data = NULL;
 
-	/* This could be too big for stack on large machines. */
-	threads = kcalloc(NR_CPUS, sizeof(threads[0]), GFP_KERNEL);
-	if (!threads)
-		return -ENOMEM;
-
-	/* Set up initial state. */
-	mutex_lock(&lock);
-	init_completion(&finished);
-	num_threads = num_online_cpus();
 	set_state(STOPMACHINE_PREPARE);
 
-	for_each_online_cpu(i) {
-		struct stop_machine_data *smdata = &idle;
-		struct sched_param param = { .sched_priority = MAX_RT_PRIO-1 };
-
-		if (!cpus) {
-			if (i == first_cpu(cpu_online_map))
-				smdata = &active;
-		} else {
-			if (cpu_isset(i, *cpus))
-				smdata = &active;
-		}
-
-		threads[i] = kthread_create((void *)stop_cpu, smdata, "kstop%u",
-					    i);
-		if (IS_ERR(threads[i])) {
-			err = PTR_ERR(threads[i]);
-			threads[i] = NULL;
-			goto kill_threads;
-		}
-
-		/* Place it onto correct cpu. */
-		kthread_bind(threads[i], i);
-
-		/* Make it highest prio. */
-		if (sched_setscheduler_nocheck(threads[i], SCHED_FIFO, &param))
-			BUG();
-	}
-
-	/* We've created all the threads.  Wake them all: hold this CPU so one
+	/* Schedule the stop_cpu work on all cpus: hold this CPU so one
 	 * doesn't hit this CPU until we're ready. */
 	get_cpu();
-	for_each_online_cpu(i)
-		wake_up_process(threads[i]);
-
+	for_each_online_cpu(i) {
+		sm_work = percpu_ptr(stop_machine_work, i);
+		INIT_WORK(sm_work, stop_cpu);
+		queue_work_on(i, stop_machine_wq, sm_work);
+	}
 	/* This will release the thread on our CPU. */
 	put_cpu();
-	wait_for_completion(&finished);
+	flush_workqueue(stop_machine_wq);
 	mutex_unlock(&lock);
-
-	kfree(threads);
-
 	return active.fnret;
-
-kill_threads:
-	for_each_online_cpu(i)
-		if (threads[i])
-			kthread_stop(threads[i]);
-	mutex_unlock(&lock);
-
-	kfree(threads);
-	return err;
 }
 
 int stop_machine(int (*fn)(void *), void *data, const cpumask_t *cpus)
@@ -187,3 +150,11 @@ int stop_machine(int (*fn)(void *), void *data, const cpumask_t *cpus)
 	return ret;
 }
 EXPORT_SYMBOL_GPL(stop_machine);
+
+static int __init stop_machine_init(void)
+{
+	stop_machine_wq = create_rt_workqueue("kstop");
+	stop_machine_work = alloc_percpu(struct work_struct);
+	return 0;
+}
+early_initcall(stop_machine_init);
