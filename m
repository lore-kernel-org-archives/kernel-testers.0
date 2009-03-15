From: Avi Kivity <avi-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #12465] KVM guests stalling on 2.6.28 (bisected)
Date: Sun, 15 Mar 2009 11:56:57 +0200
Message-ID: <49BCD0E9.9000305@redhat.com>
References: <9nR7rAsBwYG.A.iEG.fOCvJB@chimera> <qm8_cedJGaP.A.-NH.CPCvJB@chimera> <1237107837.27699.27.camel@kulgan.wumi.org.au> <49BCC7C8.2020503@redhat.com> <20090315094807.GB21169@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090315094807.GB21169-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>, Kevin Shanahan <kmshanah-biM/RbsGxha6c6uEtOJ/EA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Ingo Molnar wrote:
>> I've looked at the traces but lack the skill to make any sense 
>> out of them.
>>     
>
> Do you have specific questions about them that we could answer?
>   

A general question: what's going on?  I guess this will only be answered 
by me getting my hands dirty and understanding how ftrace works and how 
the output maps to what's happening.  I'll look at the docs for a while.

A specific question for now is how can I identify long latency within 
qemu here?  As far as I can tell all qemu latencies in trace6.txt are 
sub 100ms, which, while long, don't explain the guest stalling for many 
seconds.

-- 
error compiling committee.c: too many arguments to function
