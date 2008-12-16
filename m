From: Miklos Szeredi <miklos-sUDqSbJrdHQHWmgEVkV9KA@public.gmane.org>
Subject: Re: [Bug #12208] uml is very slow on 2.6.28 host
Date: Tue, 16 Dec 2008 16:27:12 +0100
Message-ID: <E1LCbpI-0002MN-7R@pomaz-ex.szeredi.hu>
References: <u7kfEgp36eE.A.qpG.Y4_QJB@chimera>
	 <T1gm2CtAHBF.A.u6G.g4_QJB@chimera>  <E1LCO85-0000rR-Br@pomaz-ex.szeredi.hu>
	 <1229397927.5296.48.camel@marge.simson.net>
	 <E1LCX8h-0001sh-Uo@pomaz-ex.szeredi.hu> <1229437180.5379.76.camel@marge.simson.net>
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-reply-to: <1229437180.5379.76.camel-YqMYhexLQo1vAv1Ojkdn7Q@public.gmane.org> (message from Mike
	Galbraith on Tue, 16 Dec 2008 15:19:40 +0100)
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: efault-Mmb7MZpHnFY@public.gmane.org
Cc: miklos-sUDqSbJrdHQHWmgEVkV9KA@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org, mingo-X9Un+BFzKDI@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Tue, 16 Dec 2008, Mike Galbraith wrote:
> We definitely don't want to do that.  Hm.  There are only two commits
> that spring to mind...
> 
> 1af5f730fc1bf7c62ec9fb2d307206e18bf40a69, which is another hope not, and

This didn't fix it either.

> 3f3a490480d8ab96e0fe30a41f80f14e6a0c579d which doesn't seem likely.

This can't be reverted on latest git.

Is there a way to trace what is happening in the scheduler?

Thanks,
Miklos
