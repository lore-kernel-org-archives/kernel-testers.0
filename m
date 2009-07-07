From: Gene Heskett <gene.heskett-H+0wwilmMs3R7s880joybQ@public.gmane.org>
Subject: Re: [Bug #13665] commit 69c854817566 causes OOMs
Date: Tue, 07 Jul 2009 00:25:50 -0400
Message-ID: <200907070025.51256.gene.heskett@verizon.net>
References: <35kKlbXMqWN.A.RXD.D0oUKB@chimera>
 <dWkuWjWDsSB.A.U7E.g0oUKB@chimera>
 <20090707130450.cb14f7b9.minchan.kim@barrios-desktop>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-reply-to: <20090707130450.cb14f7b9.minchan.kim@barrios-desktop>
Content-disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Minchan Kim <minchan.kim-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, David Howells <dhowells-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Wu Fengguang <fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>

On Tuesday 07 July 2009, Minchan Kim wrote:
>On Tue,  7 Jul 2009 02:01:03 +0200 (CEST)
>
>"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
>> This message has been generated automatically as a part of a report
>> of recent regressions.
>>
>> The following bug entry is on the current list of known regressions
>> from 2.6.30.  Please verify if it still should be listed and let me know
>> (either way).
>
>It should be listed.
>
>I think it is caused by forking process bomb by msgctl11 on LTP.
>We can refer old
> discussion(http://osdir.com/ml/linux-kernel/2009-07/msg00926.html)
>
>I think this issue can be solved by
>dynamic reclaim throttling patch which is making by Rik.
>
>After he merges it, Let's test again.
>
>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13665
>> Subject		: commit 69c854817566 causes OOMs
>> Submitter	: David Howells <dhowells-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
>> Date		: 2009-06-27 08:12 (10 days old)
>> First-Bad-Commit:
>> http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;
>>h=69c854817566db82c362797b4a6521d0b00fe1d8 References	:
>> http://lkml.org/lkml/2009/6/27/28
>> Handled-By	: Wu Fengguang <fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
>> Patch		: http://patchwork.kernel.org/patch/32740/

If I can chime in here, I just had to reboot from 2.6.31-rc2 for the 2nd time 
in about 24 hours cuz the oom killer killed it.  Back on 2.6.30.1 ATM for 
effects.

I have a previous post with traces etc.

-- 
Cheers, Gene
"There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo. Please use in that order."
-Ed Howdershelt (Author)
The NRA is offering FREE Associate memberships to anyone who wants them.
<https://www.nrahq.org/nrabonus/accept-membership.asp>

The truth is rarely pure, and never simple.
		-- Oscar Wilde
