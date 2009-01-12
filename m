From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: 2.6.28-rc6: hpet: object is on stack, but not annotated
Date: Mon, 12 Jan 2009 12:59:34 +0100
Message-ID: <20090112115934.GA24266@elte.hu>
References: <a4423d670811240839q54e6b7afxfc49d28b3ea127cb@mail.gmail.com> <a4423d670811241014n2b2192beh931d374bf063894f@mail.gmail.com> <alpine.LFD.2.00.0811241916560.3301@localhost.localdomain> <20081204111621.GA2466@elf.ucw.cz> <a4423d670901120240m6ee29951ucc1c0f16c27d398c@mail.gmail.com> <1231761143.4371.0.camel@laptop>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <1231761143.4371.0.camel@laptop>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Cc: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>, Pavel Machek <pavel-AlSwsSmVLrQ@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, shaohua.li-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org


* Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org> wrote:

> > > (No, introducing WARN_ON()s is not fine; it spams kerneloops.org at 
> > > least...)
> > 
> > The warning is still here on 2.6.29-rc1. It taints the kernel.
> 
> Does this fix it?

i've applied it to tip/timers/urgent and will send it to Linus if it 
passes Alexander's testing too. Below is the prettified commit.

Thanks guys,

	Ingo
-------------->
From b1f1006971b6f8d330c6e8ecf240f51c9eb67f4d Mon Sep 17 00:00:00 2001
From: Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Date: Mon, 12 Jan 2009 12:52:23 +0100
Subject: [PATCH] locking, hpet: annotate false positive warning

Alexander Beregalov reported that this warning is caused by the HPET code:

> hpet0: at MMIO 0xfed00000, IRQs 2, 8, 0
> hpet0: 3 comparators, 64-bit 14.318180 MHz counter
> ODEBUG: object is on stack, but not annotated
> ------------[ cut here ]------------
> WARNING: at lib/debugobjects.c:251 __debug_object_init+0x2a4/0x352()

> Bisected down to 26afe5f2fbf06ea0765aaa316640c4dd472310c0
> (x86: HPET_MSI Initialise per-cpu HPET timers)

The commit is fine - but the on-stack workqueue entry needs annotation.

Reported-and-bisected-by: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Signed-off-by: Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>
Signed-off-by: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
---
 arch/x86/kernel/hpet.c    |    2 +-
 include/linux/workqueue.h |    6 ++++++
 2 files changed, 7 insertions(+), 1 deletions(-)

diff --git a/arch/x86/kernel/hpet.c b/arch/x86/kernel/hpet.c
index cd759ad..bb2e0f0 100644
--- a/arch/x86/kernel/hpet.c
+++ b/arch/x86/kernel/hpet.c
@@ -628,7 +628,7 @@ static int hpet_cpuhp_notify(struct notifier_block *n,
 
 	switch (action & 0xf) {
 	case CPU_ONLINE:
-		INIT_DELAYED_WORK(&work.work, hpet_work);
+		INIT_DELAYED_WORK_ON_STACK(&work.work, hpet_work);
 		init_completion(&work.complete);
 		/* FIXME: add schedule_work_on() */
 		schedule_delayed_work_on(cpu, &work.work, 0);
diff --git a/include/linux/workqueue.h b/include/linux/workqueue.h
index b362911..47151c8 100644
--- a/include/linux/workqueue.h
+++ b/include/linux/workqueue.h
@@ -118,6 +118,12 @@ struct execute_work {
 		init_timer(&(_work)->timer);			\
 	} while (0)
 
+#define INIT_DELAYED_WORK_ON_STACK(_work, _func)		\
+	do {							\
+		INIT_WORK(&(_work)->work, (_func));		\
+		init_timer_on_stack(&(_work)->timer);		\
+	} while (0)
+
 #define INIT_DELAYED_WORK_DEFERRABLE(_work, _func)			\
 	do {							\
 		INIT_WORK(&(_work)->work, (_func));		\
