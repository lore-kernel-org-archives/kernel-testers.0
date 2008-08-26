From: Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>
Subject: Re: [Bug #11342] Linux 2.6.27-rc3: kernel BUG at mm/vmalloc.c - bisected
Date: Tue, 26 Aug 2008 15:55:14 -0400
Message-ID: <48B45FA2.8040603@garzik.org>
References: <mzBsPw3QUOF.A.87F.wZGsIB@albercik> <48B313E0.1000501@hp.com> <alpine.LFD.1.10.0808251326500.3363@nehalem.linux-foundation.org> <200808261111.19205.rusty@rustcorp.com.au> <alpine.LFD.1.10.0808261019450.3363@nehalem.linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.1.10.0808261019450.3363-nfNrOhbfy2R17+2ddN/4kux8cNe9sq/dYPYVAmT7z5s@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>, "Alan D. Brunelle" <Alan.Brunelle-VXdhtT5mjnY@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Arjan van de Ven <arjan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

Linus Torvalds wrote:
> The downsides of inlining are big enough from both a debugging and a real 
> code generation angle (eg stack usage like this), that the upsides 
> (_somesimes_ smaller kernel, possibly slightly faster code) simply aren't 
> relevant.
> 
> So the "noinline" was random, yes, but this is a real issue. Looking at 
> checkstack output for a saner config (NR_CPUS=16), the top entries for me 
> are things like
> 
> 	ide_generic_init [vmlinux]:             1384
> 	idefloppy_ioctl [vmlinux]:              1208
> 	e1000_check_options [vmlinux]:  	1152
> 	...
> 
> which are "leaf" functions. They are broken as hell (the e1000 is 
> apparently because it builds structs on the stack that should all be 
> "static const", for example), but they are different from something like 
> the module init sequence in that they are not going to affect anything 
> else.


e1000_check_options builds a struct (singular) on the stack, really... 
struct e1000_option is reasonably small.

The problem, which has also shown itself in large ioctl-style switch{} 
statements, is that gcc will generate code such that the stack usage 
from independent code branches

	if {cond1} {
		char buster1[1000];
		foo(buster1);
	} else if (cond2) {
		char buster2[1000];
		foo(buster2);
	}

are added together, not noticed as mutually exclusive.

Of course, adding 'static const' as you noted is a reasonable 
workaround, but gcc is really annoying WRT stack allocation in this manner.

I had problems in the past, before struct ethtool_ops, with like ethtool 
ioctl switch statements using gobs of stack.  In fact, that was a big 
motivation for struct ethtool_ops.

	Jeff

