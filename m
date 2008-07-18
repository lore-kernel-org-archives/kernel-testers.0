From: Nigel Cunningham <ncunningham@crca.org.au>
Subject: Re: [Bug #11035] System hangs on 2.6.26-rc8
Date: Fri, 18 Jul 2008 17:17:32 +1000
Message-ID: <1216365452.26544.22.camel@nigel-laptop>
References: <Vu1KV8Wj_GP.A.qW.DzLcIB@albercik>
	 <uBi7uNfg81L.A.xt.SzLcIB@albercik> <4878D259.7050403@r000n.net>
	 <487CA8E5.8020208@r000n.net>  <20080718071121.GB6875@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755240AbYGRHRs@vger.kernel.org>
In-Reply-To: <20080718071121.GB6875@elte.hu>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ingo Molnar <mingo@elte.hu>
Cc: Roman Mindalev <lists@r000n.net>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Thomas Gleixner <tglx@linutronix.de>, Vegard Nossum <vegard.nossum@gmail.com>

Hi.

On Fri, 2008-07-18 at 09:11 +0200, Ingo Molnar wrote:
> * Roman Mindalev <lists@r000n.net> wrote:
> 
> > I done bisection.
> > Result below:
> > 
> > 8f46924600e30b140445f5b84abe9b80d2fff5fb is first bad commit
> > commit 8f46924600e30b140445f5b84abe9b80d2fff5fb
> > Author: Ingo Molnar <mingo@elte.hu>
> > Date:   Wed Jan 30 13:34:09 2008 +0100
> > 
> >     x86: enable CONFIG_DEBUG_PAGEALLOC more widely
> > 
> >     make CONFIG_DEBUG_PAGEALLOC universally available.
> > 
> >     CONFIG_HIBERNATION and CONFIG_HUGETLBFS was disabling it, for no
> >     particular reason.
> 
> as far as i can see you see a lockup under certain circumstances, right?
> 
> this debug option catches use-after-free and other types of invalid 
> memory accesses. When it catches a bug the kernel most likely crashes 
> and produces a backlog. Because you are in graphical mode that is not 
> visible.
> 
> This would possibly be debuggable if you set up netconsole logging to 
> another system on a local LAN - see 
> Documentation/networking/netconsole.txt.
> 
> Vegard - would it be possible to make DEBUG_PAGEALLOC faults single-shot 
> and non-fatal, just like kmemcheck does it? That way people would see a 
> nice kernel message instead of an immediate crash. That means we'd have 
> to find a reliable filter for DEBUG_PAGEALLOC-provoked pagefaults though 
> ...

Not that it matters now, but that original commit message was wrong -
CONFIG_HIBERNATION used to be incompatible with CONFIG_DEBUG_PAGEALLOC
because [u]swsusp didn't (until very recently) handle the fact that
DEBUG_SLAB unmaps empty pages on x86.

Regards,

Nigel
