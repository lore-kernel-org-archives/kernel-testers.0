From: Avi Kivity <avi-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #12465] KVM guests stalling on 2.6.28 (bisected)
Date: Sun, 15 Mar 2009 12:13:29 +0200
Message-ID: <49BCD4C9.3050806@redhat.com>
References: <9nR7rAsBwYG.A.iEG.fOCvJB@chimera> <qm8_cedJGaP.A.-NH.CPCvJB@chimera> <1237107837.27699.27.camel@kulgan.wumi.org.au> <49BCC7C8.2020503@redhat.com> <20090315094807.GB21169@elte.hu> <49BCD0E9.9000305@redhat.com> <20090315100329.GA23577@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090315100329.GA23577-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>, Kevin Shanahan <kmshanah-biM/RbsGxha6c6uEtOJ/EA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Ingo Molnar wrote:
>> A specific question for now is how can I identify long latency 
>> within qemu here?  As far as I can tell all qemu latencies in 
>> trace6.txt are sub 100ms, which, while long, don't explain the 
>> guest stalling for many seconds.
>>     
>
> Exactly - that in turn means that there's no scheduler latency 
> on the host/native kernel side - in turn it must be a KVM 
> related latency. (If there was any host side scheduler wakeup or 
> other type of latency we'd see it in the trace.)
>   

But if there's a missing wakeup (which is the likeliest candidate for 
the bug) then we would have seen high latencies, no?

Can you explain what the patch in question (14800984706) does?  Maybe 
that will give us a clue.

> The most useful trace would be a specific set of trace_printk() 
> calls (available on the latest tracing tree), coupled with a 
> hyper_trace_printk() which injects a trace entry from the guest 
> side into the host kernel trace buffer. (== that would mean a 
> hypercall that does a trace_printk().)

Yes, that would provide all the information.  Not sure if I would be up 
to decoding it, though.

-- 
error compiling committee.c: too many arguments to function
