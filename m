From: Avi Kivity <avi-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #13116] Can't boot with nosmp
Date: Tue, 09 Jun 2009 21:42:55 +0300
Message-ID: <4A2EAD2F.5010505@redhat.com>
References: <bCxQpon4SCJ.A.RrF.yY7KKB@chimera>	<D9VoutSOyXP.A.xm.Vb7KKB@chimera>	<20090608091544.53a94235@nehalam>	<e9c3a7c20906080929l1a4ec739t7585f6bba54bf684@mail.gmail.com>	<20090608170437.1c2386a5@nehalam>	<e9c3a7c20906091020m19abf3b5wbbb7f5364b2d4905@mail.gmail.com>	<4A2EAA53.7060006@redhat.com> <20090609113656.46ed6335@nehalam>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090609113656.46ed6335@nehalam>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Stephen Hemminger <shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org>
Cc: Dan Williams <dan.j.williams-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Stephen Hemminger wrote:

  

>> This only affects reboots.  But yes, the cpumask code has bugs.  Does 
>> the .config involved select MAXSMP?
>>
>>     
>
> Patch does not fix the problem. Not sure if it is KVM only problem.
> Look like possible cpumask always equals what ACPI / SMP tables report.
> So currently looking into alloc_percpu which may not handle the possible
> but never used cpus.
>
>   

Right, it shouldn't have.

> It is x86-64 config and does not have MAXSMP set. It does have NR_CPUS set.
>   

So it's not cpumask.  Dare I suggest a bisect?

-- 
I have a truly marvellous patch that fixes the bug which this
signature is too narrow to contain.
