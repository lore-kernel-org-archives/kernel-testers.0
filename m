From: Avi Kivity <avi-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #12465] KVM guests stalling on 2.6.28 (bisected)
Date: Sun, 08 Mar 2009 12:04:39 +0200
Message-ID: <49B39837.7010906@redhat.com>
References: <r4SCKuuJK0F.A.UrB.QdarJB@chimera>	 <pRIaSZpQ1ON.A.vrC.udarJB@chimera> <1236136099.7726.12.camel@kulgan.wumi.org.au>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1236136099.7726.12.camel-9TBizaOOD0ujuAshGpSIhRCuuivNXqWP@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Kevin Shanahan <kmshanah-biM/RbsGxha6c6uEtOJ/EA@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>

Kevin Shanahan wrote:
> On Tue, 2009-03-03 at 20:41 +0100, Rafael J. Wysocki wrote:
>   
>> The following bug entry is on the current list of known regressions
>> introduced between 2.6.27 and 2.6.28.  Please verify if it still should
>> be listed and let me know (either way).
>>
>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12465
>> Subject		: KVM guests stalling on 2.6.28 (bisected)
>> Submitter	: Kevin Shanahan <kmshanah-biM/RbsGxha6c6uEtOJ/EA@public.gmane.org>
>> Date		: 2009-01-17 03:37 (46 days old)
>> Handled-By	: Avi Kivity <avi-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
>>     
>
> Yes this should still be listed.
>
> The traces are there waiting to be looked at. If there's anything else I
> can do to help things along, please let me know.
>
>   

I was away on vacation, I'll try to look at the traces soon.  Help from 
the sched developers would be appreciated, though, as I doubt I have the 
skills to decypher them.


-- 
error compiling committee.c: too many arguments to function
