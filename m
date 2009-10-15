From: Oleg Nesterov <oleg-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #14388] keyboard under X with 2.6.31
Date: Thu, 15 Oct 2009 17:29:59 +0200
Message-ID: <20091015152959.GA18681@redhat.com>
References: <4AD51D6B.7010509@microgate.com> <alpine.LFD.2.01.0910131744590.3404@localhost.localdomain> <20091014125846.1a3c8d40@lxorguk.ukuu.org.uk> <alpine.LFD.2.01.0910140804180.6146@localhost.localdomain> <alpine.LFD.2.01.0910140925440.6146@localhost.localdomain> <20091014182037.GA10076@redhat.com> <alpine.LFD.2.01.0910141131050.6146@localhost.localdomain> <20091014195215.GA12936@redhat.com> <alpine.LFD.2.01.0910141344250.6146@localhost.localdomain> <20091015124730.GA9398@redhat.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20091015124730.GA9398-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>, Paul Fulghum <paulkf-CZzk0lvu1V9l57MIdRCFDg@public.gmane.org>, Boyan <btanastasov-/E1597aS9LT10XsdtD+oqA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dmitry Torokhov <dmitry.torokhov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ed Tomlinson <edt-Yad3+ZauZac@public.gmane.org>, OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>

On 10/15, Oleg Nesterov wrote:
>
> But, this can race with cpu_down(). I think this is solvable but needs
> more locking. I mean, the caller of queue_work_xxx() must not use the old
> get_wq_data(work) if this CPU is already dead, but a simple cpu_online()
> is not enough, we can race with workqueue_cpu_callback(CPU_POST_DEAD)
> flushing this cwq, in this case we should carefully insert this work
> into the almost-dead queue.
>
> Or, perhaps better, instead of new helper, we can probably use the free
> bit in work_struct->data to mark this work/dwork as "single-instance-work".
> In this case __queue_work and queue_delayed_work_on should check this bit.

Actually, this looks simple. Please see the patch below.

Of course! the horror in __queue_work() should be cleanuped somehow.
The change queue_delayed_work_on() needs a separate patch probably.


All, what do you think? Do we need this?

Oleg.

If the work_struct/delayed_work has WORK_STRUCT_XXX bit set, it can never
race with itself.

Note: queue_work_on() or queue_delayed_work_on() must not be used if it is
work_xxx().

Also, we can optimize flush/cancel operations to not scan all CPUs if this
work is "singlethreaded".

PROBLEM: work_xxx() work can block cpu_down() if it contsantly re-queues
itself, hopefully we shouldn't have such stupid users.
---

--- TTT_32/include/linux/workqueue.h~WORK_XXX	2009-09-23 21:12:03.000000000 +0200
+++ TTT_32/include/linux/workqueue.h	2009-10-15 16:49:25.000000000 +0200
@@ -24,7 +24,8 @@ typedef void (*work_func_t)(struct work_
 
 struct work_struct {
 	atomic_long_t data;
-#define WORK_STRUCT_PENDING 0		/* T if work item pending execution */
+#define WORK_STRUCT_PENDING	0	/* T if work item pending execution */
+#define WORK_STRUCT_XXX		1	/* deny multiple running instances */
 #define WORK_STRUCT_FLAG_MASK (3UL)
 #define WORK_STRUCT_WQ_DATA_MASK (~WORK_STRUCT_FLAG_MASK)
 	struct list_head entry;
@@ -148,6 +149,9 @@ struct execute_work {
 #define work_pending(work) \
 	test_bit(WORK_STRUCT_PENDING, work_data_bits(work))
 
+#define work_xxx(work) \
+	test_bit(WORK_STRUCT_XXX, work_data_bits(work))
+
 /**
  * delayed_work_pending - Find out whether a delayable work item is currently
  * pending
--- TTT_32/kernel/workqueue.c~WORK_XXX	2009-09-12 21:40:11.000000000 +0200
+++ TTT_32/kernel/workqueue.c	2009-10-15 17:09:51.000000000 +0200
@@ -145,6 +145,35 @@ static void __queue_work(struct cpu_work
 {
 	unsigned long flags;
 
+	if (work_xxx(work)) {
+		struct cpu_workqueue_struct *old = get_wq_data(work);
+		bool done = false;
+
+		if (!old)
+			goto fallback;
+
+		// This lockless check is racy. We should either remove it
+		// or add mb__before_clear_bit() into run_workqueue().
+		if (old->current_work != work)
+			goto fallback;
+
+		// OK, we should keep this old cwq. But its CPU can be dead,
+		// we have to recheck under old->lock
+		spin_lock_irqsave(&old->lock, flags);
+		if (old->current_work == work) {
+			// It is stiill running, queue the work here.
+			// even if this CPU is dead, run_workqueue()
+			// can't return without noticing this work
+			insert_work(old, work, &old->worklist);
+			done = true;
+		}
+		spin_unlock_irqrestore(&cwq->lock, flags);
+
+		if (done)
+			return;
+	}
+
+fallback:
 	spin_lock_irqsave(&cwq->lock, flags);
 	insert_work(cwq, work, &cwq->worklist);
 	spin_unlock_irqrestore(&cwq->lock, flags);
@@ -246,7 +275,8 @@ int queue_delayed_work_on(int cpu, struc
 		timer_stats_timer_set_start_info(&dwork->timer);
 
 		/* This stores cwq for the moment, for the timer_fn */
-		set_wq_data(work, wq_per_cpu(wq, raw_smp_processor_id()));
+		if (!get_wq_data(work))
+			set_wq_data(work, wq_per_cpu(wq, raw_smp_processor_id()));
 		timer->expires = jiffies + delay;
 		timer->data = (unsigned long)dwork;
 		timer->function = delayed_work_timer_fn;
