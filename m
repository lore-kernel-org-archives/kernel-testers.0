From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #11035] System hangs on 2.6.26-rc8
Date: Fri, 18 Jul 2008 09:11:21 +0200
Message-ID: <20080718071121.GB6875@elte.hu>
References: <Vu1KV8Wj_GP.A.qW.DzLcIB@albercik> <uBi7uNfg81L.A.xt.SzLcIB@albercik> <4878D259.7050403@r000n.net> <487CA8E5.8020208@r000n.net>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <487CA8E5.8020208-ioAbOcnQCpJeoWH0uzbU5w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Roman Mindalev <lists-ioAbOcnQCpJeoWH0uzbU5w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>, Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>


* Roman Mindalev <lists-ioAbOcnQCpJeoWH0uzbU5w@public.gmane.org> wrote:

> I done bisection.
> Result below:
> 
> 8f46924600e30b140445f5b84abe9b80d2fff5fb is first bad commit
> commit 8f46924600e30b140445f5b84abe9b80d2fff5fb
> Author: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
> Date:   Wed Jan 30 13:34:09 2008 +0100
> 
>     x86: enable CONFIG_DEBUG_PAGEALLOC more widely
> 
>     make CONFIG_DEBUG_PAGEALLOC universally available.
> 
>     CONFIG_HIBERNATION and CONFIG_HUGETLBFS was disabling it, for no
>     particular reason.

as far as i can see you see a lockup under certain circumstances, right?

this debug option catches use-after-free and other types of invalid 
memory accesses. When it catches a bug the kernel most likely crashes 
and produces a backlog. Because you are in graphical mode that is not 
visible.

This would possibly be debuggable if you set up netconsole logging to 
another system on a local LAN - see 
Documentation/networking/netconsole.txt.

Vegard - would it be possible to make DEBUG_PAGEALLOC faults single-shot 
and non-fatal, just like kmemcheck does it? That way people would see a 
nice kernel message instead of an immediate crash. That means we'd have 
to find a reliable filter for DEBUG_PAGEALLOC-provoked pagefaults though 
...

	Ingo
