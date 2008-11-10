From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #11380] lockdep warning: cpu_add_remove_lock
	at:cpu_maps_update_begin+0x14/0x16
Date: Mon, 10 Nov 2008 08:30:47 +0100
Message-ID: <20081110073047.GA28578@elte.hu>
References: <A3oCZU7cpuO.A.ChB.ZZ1FJB@chimera> <4B0Eqx89uNG.A.J5D.9b1FJB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <4B0Eqx89uNG.A.J5D.9b1FJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Oleg Nesterov <oleg-6lXkIZvqkOAvJsYlp49lxw@public.gmane.org>, Dmitry Torokhov <dmitry.torokhov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Dmitry Adamushko <dmitry.adamushko-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Max Krasnyansky <maxk@q>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>


* Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.26 and 2.6.27.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.26 and 2.6.27.  Please verify if it still should
> be listed and let me know (either way).
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11380
> Subject		: lockdep warning: cpu_add_remove_lock at:cpu_maps_update_begin+0x14/0x16
> Submitter	: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
> Date		: 2008-08-20 6:44 (82 days old)
> References	: http://marc.info/?l=linux-kernel&m=121921480931970&w=4

had a quick look again: i believe this one still triggers, and it's 
caused by some interaction between input code and workqueue code. I 
think it started triggering when Oleg's workqueue annotation patches 
went upstream:

6af8bf3: workqueues: add comments to __create_workqueue_key()
8448502: workqueues: do CPU_UP_CANCELED if CPU_UP_PREPARE fails
8de6d30: workqueues: schedule_on_each_cpu() can use schedule_work_on()
ef1ca23: workqueues: queue_work() can use queue_work_on()
a67da70: workqueues: lockdep annotations for flush_work()
3da1c84: workqueues: make get_online_cpus() useable for work->func()
8616a89: workqueues: schedule_on_each_cpu: use flush_work()
db70089: workqueues: implement flush_work()
1a4d9b0: workqueues: insert_work: use "list_head *" instead of "int tail"

plus when the cpu_active_map changes went upstream:

e761b77: cpu hotplug, sched: Introduce cpu_active_map and redo sched domain ma

so it's possibly an old input layer locking problem that only got 
exposed via current changes. It's not an input layer bug that got 
introduced ~80 days ago, but possibly an input layer problem. Or a CPU 
hotplug bug. Or a workqueue bug.

	Ingo
