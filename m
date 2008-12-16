From: Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>
Subject: Re: [Bug #12208] uml is very slow on 2.6.28 host
Date: Tue, 16 Dec 2008 15:19:40 +0100
Message-ID: <1229437180.5379.76.camel@marge.simson.net>
References: <u7kfEgp36eE.A.qpG.Y4_QJB@chimera>
	 <T1gm2CtAHBF.A.u6G.g4_QJB@chimera>  <E1LCO85-0000rR-Br@pomaz-ex.szeredi.hu>
	 <1229397927.5296.48.camel@marge.simson.net>
	 <E1LCX8h-0001sh-Uo@pomaz-ex.szeredi.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <E1LCX8h-0001sh-Uo-8f8m9JG5TPIdUIPVzhDTVZP2KDSNp7ea@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Miklos Szeredi <miklos-sUDqSbJrdHQHWmgEVkV9KA@public.gmane.org>
Cc: rjw-KKrjLPT3xs0@public.gmane.org, a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org, mingo-X9Un+BFzKDI@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Tue, 2008-12-16 at 11:26 +0100, Miklos Szeredi wrote:
> On Tue, 16 Dec 2008, Mike Galbraith wrote:

> > If that commit is responsible, then it should also be very slow in pre
> > 28 kernels, where the same exists.
> 
> Everything prior to 2.6.28 was fine in this respect, so there must be
> some subtle difference.

Yeah, strange.

> >   Hm, there's another possibility.
> > Can you try echo NO_LAST_BUDDY > /sys/kernel/debug/sched_features?
> 
> It didn't help, unfortunately.

I'm happy to hear that actually.

> Applying this patch on top of latest git (which essentially reverts
> the above commit) fixes the slowness.

We definitely don't want to do that.  Hm.  There are only two commits
that spring to mind...

1af5f730fc1bf7c62ec9fb2d307206e18bf40a69, which is another hope not, and
3f3a490480d8ab96e0fe30a41f80f14e6a0c579d which doesn't seem likely.

	-Mike
