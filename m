From: Miklos Szeredi <miklos-sUDqSbJrdHQHWmgEVkV9KA@public.gmane.org>
Subject: Re: [Bug #12208] uml is very slow on 2.6.28 host
Date: Tue, 16 Dec 2008 01:49:41 +0100
Message-ID: <E1LCO85-0000rR-Br@pomaz-ex.szeredi.hu>
References: <u7kfEgp36eE.A.qpG.Y4_QJB@chimera> <T1gm2CtAHBF.A.u6G.g4_QJB@chimera>
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-reply-to: <T1gm2CtAHBF.A.u6G.g4_QJB@chimera> (rjw-KKrjLPT3xs0@public.gmane.org)
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: rjw-KKrjLPT3xs0@public.gmane.org
Cc: a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org, efault-Mmb7MZpHnFY@public.gmane.org, mingo-X9Un+BFzKDI@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, miklos-sUDqSbJrdHQHWmgEVkV9KA@public.gmane.org

On Sat, 13 Dec 2008, Rafael J. Wysocki wrote:
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12208
> Subject		: uml is very slow on 2.6.28 host
> Submitter	: Miklos Szeredi <miklos-sUDqSbJrdHQHWmgEVkV9KA@public.gmane.org>
> Date		: 2008-12-12 9:35 (2 days old)
> References	: http://marc.info/?l=linux-kernel&m=122907463518593&w=4

I did a bisection, and this is the commit which is responsible:

  commit 464b75273f64be7c81fee975bd6ca9593df3427b
  Author: Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>
  Date:   Fri Oct 24 11:06:15 2008 +0200
  
      sched: re-instate vruntime based wakeup preemption
  
      The advantage is that vruntime based wakeup preemption has a better
      conceptual model. Here wakeup_gran = 0 means: preempt when 'fair'.
      Therefore wakeup_gran is the granularity of unfairness we allow in order
      to make progress.
  
      Signed-off-by: Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>
      Acked-by: Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>
      Signed-off-by: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

Miklos
