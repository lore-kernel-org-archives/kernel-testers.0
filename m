From: Jens Axboe <jaxboe-5c4llco8/ftWk0Htik3J/w@public.gmane.org>
Subject: Re: 2.6.35-rc2-git2: Reported regressions from 2.6.34
Date: Fri, 11 Jun 2010 21:11:49 +0200
Message-ID: <4C128A75.3030501@fusionio.com>
References: <Rlf_Qjov7bG.A.a8F.I8rDMB@chimera> <alpine.LFD.2.00.1006081814240.4506@i5.linux-foundation.org> <4C0F4872.7090909@fusionio.com> <20100611083249.GA11143@elte.hu> <4C11F661.3070604@fusionio.com> <20100611085520.GA20218@elte.hu> <4C11FF77.1000101@fusionio.com> <20100611190714.GA20837@redhat.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20100611190714.GA20837-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Vivek Goyal <vgoyal-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Cc: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Carl Worth <cworth-4HiWtcSh4w0dnm+yROfE0A@public.gmane.org>, Eric Anholt <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>, Divyesh Shah <dpshah-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, "guijianfeng-BthXqXjhjHXQFUHtdCDX3A@public.gmane.org" <guijianfeng-BthXqXjhjHXQFUHtdCDX3A@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On 11/06/10 21.07, Vivek Goyal wrote:
> On Fri, Jun 11, 2010 at 11:18:47AM +0200, Jens Axboe wrote:
>> On 2010-06-11 10:55, Ingo Molnar wrote:
>>>>> Caused by the same blkiocg_update_io_add_stats() function. Bootlog and config 
>>>>> attached. Reproducible on that sha1 and with that config.
>>>>
>>>> I think I see it, the internal CFQ blkg groups are not properly
>>>> initialized... Will send a patch shortly.
>>>
>>> Cool - can test it with a short turnaround, the bug is easy to reproduce.
>>
>> Here's a nasty patch that should fix it. Not optimal, since we really
>> just want empty functions for these when cfq group scheduling is not
>> defined.
>>
>> CC'ing the guilty parties to come up with a better patch that does NOT
>> involve ifdefs in cfq-iosched.c. We want blk-cgroup.[ch] fixed up.
>> And trimming the CC list a bit.
> 
> Jens, Ingo, I am sorry for this mess.
> 
> Jens,
> 
> How about introducing "block/cfq.h" and declaring additional set of wrapper
> functions to update blkiocg stats and make these do nothing if
> CFQ_GROUP_IOSCHED=n.
> 
> For example, in linux-2.6/block/cfq.h, we can define functions as follows.
> 
> #ifdef CONFIG_CFQ_GROUP_IOSCHED
> cfq_blkiocg_update_dequeue_stats () {
> 	blkiocg_update_dequeue_stats()
> }
> #else
> cfq_blkiocg_update_dequeue_stats () {}
> #endif
> 
> Fixing it blk-cgroup.[ch] might not be best as BLK_CGROUP is set.
> Secondly, if there are other IO control policies later, they might
> want to make use of BLK_CGROUP while cfq has disabled the group io 
> scheduling.

I already tried such a patch, but it's not exactly pretty. How about
splitting blk-cgroup.c into two parts, one that is built for
BLK_CGROUP and an additional one that is also built for
CFQ_GROUP_SCHED? Lets try and improve on the ifdef mess, not extend
it.

-- 
Jens Axboe
