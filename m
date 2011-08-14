From: Tetsuo Handa <penguin-kernel-JPay3/Yim36HaxMnTkn67Xf5DAMn2ifp@public.gmane.org>
Subject: Re: [Bug #39342] [3.0.0-rc6-git7] possible recursive locking atcache_alloc_refill
Date: Mon, 15 Aug 2011 07:36:29 +0900
Message-ID: <201108150736.FFC69227.MQSJVFHFFOOOtL@I-love.SAKURA.ne.jp>
References: <xuTC4jRtHbB.A.l4H.gMCSOB@chimera>
	<bkwpSnItbJM.A.o3.YNCSOB@chimera>
	<alpine.DEB.2.00.1108142259120.4228@tiger>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.DEB.2.00.1108142259120.4228@tiger>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: penberg-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org, peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org

Pekka Enberg wrote:
> Tetsuio, did Peter's commit 30765b9 ("slab, lockdep: Annotate the locks 
> before using them") and commit 83835b3 ("slab, lockdep: Annotate slab -> 
> rcu -> debug_object -> slab") in Linus' git fix this for you?

Yes. Applying these two commits fixes this problem.

Thank you.
