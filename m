From: David John <davidjon-XRr60H37pjdAfugRpC6u6w@public.gmane.org>
Subject: Re: [Bug #14897] i915: Commit 0e442c60 causes flickering
Date: Wed, 13 Jan 2010 13:36:05 +0530
Message-ID: <4B4D7EED.7010207@xenontk.org>
References: <nzLqtSp97aP.A.RGB.hglSLB@chimera>	<CXIfLt-ygXM.A.DAC.zglSLB@chimera>	<4B4AB589.7080004@xenontk.org>	<201001112052.57339.rjw@sisk.pl> <20100112101446.7fac096e@jbarnes-piketon>
Reply-To: davidjon-XRr60H37pjdAfugRpC6u6w@public.gmane.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20100112101446.7fac096e@jbarnes-piketon>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Eric Anholt <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>, yakui.zhao-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org

On 01/12/2010 11:44 PM, Jesse Barnes wrote:
> On Mon, 11 Jan 2010 20:52:57 +0100
> "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> 
>> On Monday 11 January 2010, David John wrote:
>>> On 01/11/2010 04:26 AM, Rafael J. Wysocki wrote:
>>>> This message has been generated automatically as a part of a
>>>> report of regressions introduced between 2.6.31 and 2.6.32.
>>>>
>>>> The following bug entry is on the current list of known
>>>> regressions introduced between 2.6.31 and 2.6.32.  Please verify
>>>> if it still should be listed and let me know (either way).
>>>>
>>>>
>>>> Bug-Entry	:
>>>> http://bugzilla.kernel.org/show_bug.cgi?id=14897
>>>> Subject		: i915: Commit 0e442c60 causes flickering
>>>> Submitter	: David John <davidjon-XRr60H37pjdAfugRpC6u6w@public.gmane.org>
>>>> Date		: 2009-12-09 17:26 (33 days old)
>>>> First-Bad-Commit:
>>>> http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=0e442c60dd39ac6924b11a20497734bd2303744c
>>>> References	:
>>>> http://marc.info/?l=linux-kernel&m=126037889600769&w=4
>>>>
>>>>
>>>>
>>>
>>> Still present in 2.6.33-rc3.
>>
>> Thanks for the update.
> 
> David I guess you weren't on the bug cc list so you didn't see Yakui's
> question.  I just attached a patch to it as well.  Please check it out.
> 

Hi Jesse,

I've updated the bug report with more info. If you have any other ideas,
I can test those also.

Regards,
David.
