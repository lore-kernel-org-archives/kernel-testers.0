From: David John <davidjon-XRr60H37pjdAfugRpC6u6w@public.gmane.org>
Subject: Re: [Bug #14897] i915: Commit 0e442c60 causes flickering
Date: Sun, 07 Feb 2010 18:25:32 +0530
Message-ID: <4B6EB844.4090001@xenontk.org>
References: <UgwvXSBS_tM.A.alD.1EiZLB@chimera> <de962C6zBxL.A.NbF.2FiZLB@chimera> <4B669F8F.1030402@xenontk.org> <201002022155.44016.rjw@sisk.pl>
Reply-To: davidjon-XRr60H37pjdAfugRpC6u6w@public.gmane.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <201002022155.44016.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Eric Anholt <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>, ykzhao <yakui.zhao-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

On 02/03/2010 02:25 AM, Rafael J. Wysocki wrote:
> On Monday 01 February 2010, David John wrote:
>> On 02/01/2010 06:13 AM, Rafael J. Wysocki wrote:
>>> This message has been generated automatically as a part of a report
>>> of regressions introduced between 2.6.31 and 2.6.32.
>>>
>>> The following bug entry is on the current list of known regressions
>>> introduced between 2.6.31 and 2.6.32.  Please verify if it still should
>>> be listed and let me know (either way).
>>>
>>>
>>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14897
>>> Subject		: i915: Commit 0e442c60 causes flickering
>>> Submitter	: David John <davidjon-XRr60H37pjdAfugRpC6u6w@public.gmane.org>
>>> Date		: 2009-12-09 17:26 (54 days old)
>>> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=0e442c60dd39ac6924b11a20497734bd2303744c
>>> References	: http://marc.info/?l=linux-kernel&m=126037889600769&w=4
>>> Handled-By	: David John <davidjon-XRr60H37pjdAfugRpC6u6w@public.gmane.org>
>>> Patch		: http://patchwork.kernel.org/patch/75423/
>>>
>>>
>>>
>>
>> Hi Rafael,
>>
>> The patch fixing this has not been merged yet, so the bug should still
>> be listed.
> 
> Thanks for the update, I'll close the bug when I see the patch in the Linus'
> tree.
> 
> Rafael
> 

Hi Rafael,

This regression entry can now be closed, it's fixed by the upstream
commit 33c5fd12 (drm/i915: Disable SR when more than one pipe is enabled).

Thanks,
David.
