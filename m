From: Avi Kivity <avi-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #13116] Can't boot with nosmp
Date: Tue, 09 Jun 2009 21:30:43 +0300
Message-ID: <4A2EAA53.7060006@redhat.com>
References: <bCxQpon4SCJ.A.RrF.yY7KKB@chimera>	 <D9VoutSOyXP.A.xm.Vb7KKB@chimera> <20090608091544.53a94235@nehalam>	 <e9c3a7c20906080929l1a4ec739t7585f6bba54bf684@mail.gmail.com>	 <20090608170437.1c2386a5@nehalam> <e9c3a7c20906091020m19abf3b5wbbb7f5364b2d4905@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <e9c3a7c20906091020m19abf3b5wbbb7f5364b2d4905-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Dan Williams <dan.j.williams-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Cc: Stephen Hemminger <shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org>, Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Dan Williams wrote:
> On Mon, Jun 8, 2009 at 5:04 PM, Stephen Hemminger<shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org> wrote:
>   
>> I did some more debugging, and the problem appears to be that
>> booting with nosmp still leaves all the CPU's present in the cpu
>> possible mask. So code like dma engine (or loopback device), that
>> use alloc_percpu get broken.
>>
>> Not sure why all the cpu's are still showing up in the possible mask.
>> Rusty? do you have an answer.
>>     
>
> Would this recent commit also fix this issue?
>
> commit a4c0364be3f43d3e17fe19270f8b3d64881606e6
> Author: Avi Kivity <avi-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
> Date:   Sat Jun 6 12:34:39 2009 +0300
>
>     KVM: Explicity initialize cpus_hardware_enabled
>
>     Under CONFIG_MAXSMP, cpus_hardware_enabled is allocated from the heap and
>     not statically initialized.  This causes a crash on reboot when kvm thinks
>     vmx is enabled on random nonexistent cpus and accesses nonexistent percpu
>     lists.
>
>     Fix by explicitly clearing the variable.
>
>     Cc: stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
>     Reported-and-tested-by: Yinghai Lu <yinghai-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
>     Signed-off-by: Avi Kivity <avi-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
>   

This only affects reboots.  But yes, the cpumask code has bugs.  Does 
the .config involved select MAXSMP?

-- 
I have a truly marvellous patch that fixes the bug which this
signature is too narrow to contain.
