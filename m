From: Sachin Sant <sachinp-xthvdsQ13ZrQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #12792] 2.6.29-rc6-git4 boot failure
Date: Mon, 23 Mar 2009 10:34:47 +0530
Message-ID: <49C7186F.3050403@in.ibm.com>
References: <GPBuLTara4J.A.3kH.TZTxJB@chimera> <l8NZ2a3iQtG.A.6EB.JaTxJB@chimera> <1237758581.25062.677.camel@pasglop>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1237758581.25062.677.camel@pasglop>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Benjamin Herrenschmidt wrote:
> On Sat, 2009-03-21 at 17:39 +0100, Rafael J. Wysocki wrote:
>   
>> This message has been generated automatically as a part of a report
>> of recent regressions.
>>
>> The following bug entry is on the current list of known regressions
>> from 2.6.28.  Please verify if it still should be listed and let me know
>> (either way).
>>     
>
> Sachin, did you find anything about this one ?
>   
Hi Ben,

I narrowed it down to 2.6.28-git2(Boots) while 2.6.28-git4(fails to boot).
I could not boot test 2.6.28-git3 as i ran into kernel compilation issues.

Here is the error message i got when i tried compiling 2.6.28-git3.

  LD      vmlinux.o
ld: dynreloc miscount for kernel/built-in.o, section .opd
ld: can not edit opd Bad value

I think the above one was some tool chain related issue.

I don't know how to git bisect using these two releases (2.6.28-git2/2.6.28-git4).
I guess that is not possible since there are no commit tags for these releases.
But i could be wrong.

Is there anything else that i could try out to find a solution for this ?
The machine in question is a Power Mac G5 running Ubuntu Hardy with a
PPC970, altivec supported CPU(2).

For the record i can still recreate this issue with 2.6.29-rc8-git6.

Thanks
-Sachin

-- 

---------------------------------
Sachin Sant
IBM Linux Technology Center
India Systems and Technology Labs
Bangalore, India
---------------------------------
