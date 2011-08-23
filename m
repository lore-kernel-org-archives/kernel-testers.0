From: Dheeraj Reddy <dheeraj.reddy-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #39342] [3.0.0-rc6-git7] possible recursive locking atcache_alloc_refill
Date: Tue, 23 Aug 2011 00:42:47 -0700
Message-ID: <87hb58inew.fsf@franklin.jf.intel.com>
References: <xuTC4jRtHbB.A.l4H.gMCSOB@chimera>
	<bkwpSnItbJM.A.o3.YNCSOB@chimera>
	<alpine.DEB.2.00.1108142259120.4228@tiger>
	<201108150736.FFC69227.MQSJVFHFFOOOtL@I-love.SAKURA.ne.jp>
	<CAOJsxLH+qQxVwwx+2t-azc8fw+uz2+M9SCRzMUGdKKbUc1nC7A@mail.gmail.com>
	<1314003262.24275.2.camel@twins>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org> writes:

> On Mon, 2011-08-15 at 08:46 +0300, Pekka Enberg wrote:
>> On Mon, Aug 15, 2011 at 1:36 AM, Tetsuo Handa
>> <penguin-kernel-1yMVhJb1mP/7nzcFbJAaVXf5DAMn2ifp@public.gmane.org> wrote:
>> > Pekka Enberg wrote:
>> >> Tetsuio, did Peter's commit 30765b9 ("slab, lockdep: Annotate the locks
>> >> before using them") and commit 83835b3 ("slab, lockdep: Annotate slab ->
>> >> rcu -> debug_object -> slab") in Linus' git fix this for you?
>> >
>> > Yes. Applying these two commits fixes this problem.
>> >
>> > Thank you.
>> 
>> The commits weren't tagged for -stable, I'm afraid. Peter?
>
> I must have forgotten people were actually triggering this on 3.0. Feel
> free to tell gregkh to include those two patches in his next 3.0-stable
> lineup.

I have added some more info to the bug report. I can see a similar
lockdep issue in 3.1 rc3.

dheeraj
-- 
