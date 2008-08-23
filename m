From: Arjan van de Ven <arjan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
Subject: Re: [Bug #11342] Linux 2.6.27-rc3: kernel BUG at mm/vmalloc.c - bisected
Date: Sat, 23 Aug 2008 13:15:34 -0700
Message-ID: <48B06FE6.8060404@linux.intel.com>
References: <mzBsPw3QUOF.A.87F.wZGsIB@albercik> <VSpL6AnBTS.A.q9H.6aGsIB@albercik> <alpine.LFD.1.10.0808231257310.3363@nehalem.linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.1.10.0808231257310.3363-nfNrOhbfy2R17+2ddN/4kux8cNe9sq/dYPYVAmT7z5s@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Alan D. Brunelle" <Alan.Brunelle-VXdhtT5mjnY@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>

Linus Torvalds wrote:
> 
> On Sat, 23 Aug 2008, Rafael J. Wysocki wrote:
>> The following bug entry is on the current list of known regressions
>> from 2.6.26.  Please verify if it still should be listed and let me know
>> (either way).
>>
>>
>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11342
>> Subject		: Linux 2.6.27-rc3: kernel BUG at mm/vmalloc.c - bisected
>> Submitter	: Alan D. Brunelle <Alan.Brunelle-VXdhtT5mjnY@public.gmane.org>
>> Date		: 2008-08-13 23:03 (11 days old)
>> References	: http://marc.info/?l=linux-kernel&m=121866876027629&w=4
>> Handled-By	: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
> 
> This one makes no sense. It's triggering a BUG_ON(in_interrupt()), but 
> then the call chain shows that there is no interrupt going on.
> 
> Also, the bisection is senseless - there's a trivial change wrt 
> "do_one_initcall()" that got merged, but everything else is trivial about 
> lguest and has nothing to do with the whole CPU-init thing. But if it was 
> that initcall one, then "git bisect" woul have pointed to it, not the 
> merge. And the merge itself had no conflicts or anything else going on..
> 
> The fact that it came and went later also implies that it's probably just 
> some timing-dependent thing or some subtle memory corruption, making the 
> bisection result even less likely to be exact.
> 
> But I'm adding Arjan and Rusty to the Cc, because that merge was takign 
> Rusty's branch, and the "do_one_initcall()" is Arjan's commit. Since 
> undoing that merge apparently does fix it, I'm wondering if something 
> there just does end up triggering the problem.
> 
> The do_one_commit() thing _is_ in the path of sys_init_module(), so it 
> _is_ at least somewhat relevant from an oops standpoint. 
> 
> One thing the "do_one_commit()" thing does is to put more pressure on the 
> stack due to that whole buffer for the printk's going on.

but it's 64 bit.. with 8Kb stack and separate irq stacks. I'd be surprised if we blow that this easily.
the trace is a tad long with a long ACPI call chain.

Wonder what gcc is in use?
(newer ones tend to be a ton better... but maybe Alex is using a really old one)
