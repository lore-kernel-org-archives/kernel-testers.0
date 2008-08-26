From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #11342] Linux 2.6.27-rc3: kernel BUG at mm/vmalloc.c -
	bisected
Date: Tue, 26 Aug 2008 09:59:37 +0200
Message-ID: <20080826075937.GB7596@elte.hu>
References: <alpine.LFD.1.10.0808231313170.3363@nehalem.linux-foundation.org> <48B29F7B.6080405@hp.com> <48B2A421.7080705@hp.com> <alpine.LFD.1.10.0808251019380.3363@nehalem.linux-foundation.org> <alpine.LFD.1.10.0808251106270.3363@nehalem.linux-foundation.org> <48B313E0.1000501@hp.com> <alpine.LFD.1.10.0808251326500.3363@nehalem.linux-foundation.org> <alpine.LFD.1.10.0808251344250.3363@nehalem.linux-foundation.org> <48B32458.5020104@hp.com> <48B32D39.5040709@linux-foundation.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <48B32D39.5040709-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: "Alan D. Brunelle" <Alan.Brunelle-VXdhtT5mjnY@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Arjan van de Ven <arjan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>, Mike Travis <travis-sJ/iWh9BUns@public.gmane.org>


* Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org> wrote:

> Alan D. Brunelle wrote:
> 
> > I think you're right: the kernel as a whole may not be ready for 4,096
> > CPUs apparently...
> 
> Mike has been working diligently on getting all these cpumasks off the 
> stack for the last months and has created an infrastructure to do 
> this. So I think we are close. It might just be a matter of merging 
> some more patches that are still left in Ingo's tree.

hm, there are no such patches left that i know of - the only bits in 
-tip are the zero-based percpu, which was found to be a bit fragile in 
testing:

 earth4:~/tip> git-log-line --author=Travis linus..
 d379497: Zero based percpu: infrastructure to rebase the per cpu area to zero
 b3a0cb4: x86: extend percpu ops to 64 bit

[and it has no relevance to stack footprint.]

So i dont think the current cpumask_t approach will work. We simply 
should not get into an endless fight against the windmills that 
introduce on-stack cpumask_t again and again. We should just take the 
plunge once and do a clean alloc/free cpumask model. Most of the hotpath 
cpumasks are constant or pre-constructed, so they are not a real issue.

Plus, on the general question of stack footprint problems and the 
difficulty of debugging them, the worst-case stack footprint tracer i 
wrote for -rt some time ago should be dusted off as well and put into 
ftrace. David has something quite close to that for Sparc64 already.

	Ingo
