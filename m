From: Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Subject: Re: [Bug #39342] [3.0.0-rc6-git7] possible recursive locking
 atcache_alloc_refill
Date: Mon, 22 Aug 2011 10:54:22 +0200
Message-ID: <1314003262.24275.2.camel@twins>
References: <xuTC4jRtHbB.A.l4H.gMCSOB@chimera>
	 <bkwpSnItbJM.A.o3.YNCSOB@chimera>
	 <alpine.DEB.2.00.1108142259120.4228@tiger>
	 <201108150736.FFC69227.MQSJVFHFFOOOtL@I-love.SAKURA.ne.jp>
	 <CAOJsxLH+qQxVwwx+2t-azc8fw+uz2+M9SCRzMUGdKKbUc1nC7A@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <CAOJsxLH+qQxVwwx+2t-azc8fw+uz2+M9SCRzMUGdKKbUc1nC7A-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Pekka Enberg <penberg-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: Tetsuo Handa <penguin-kernel-1yMVhJb1mP/7nzcFbJAaVXf5DAMn2ifp@public.gmane.org>, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org

On Mon, 2011-08-15 at 08:46 +0300, Pekka Enberg wrote:
> On Mon, Aug 15, 2011 at 1:36 AM, Tetsuo Handa
> <penguin-kernel-1yMVhJb1mP/7nzcFbJAaVXf5DAMn2ifp@public.gmane.org> wrote:
> > Pekka Enberg wrote:
> >> Tetsuio, did Peter's commit 30765b9 ("slab, lockdep: Annotate the locks
> >> before using them") and commit 83835b3 ("slab, lockdep: Annotate slab ->
> >> rcu -> debug_object -> slab") in Linus' git fix this for you?
> >
> > Yes. Applying these two commits fixes this problem.
> >
> > Thank you.
> 
> The commits weren't tagged for -stable, I'm afraid. Peter?

I must have forgotten people were actually triggering this on 3.0. Feel
free to tell gregkh to include those two patches in his next 3.0-stable
lineup.
