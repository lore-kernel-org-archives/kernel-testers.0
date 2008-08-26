From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #11342] Linux 2.6.27-rc3: kernel BUG at mm/vmalloc.c -
 bisected
Date: Tue, 26 Aug 2008 10:35:05 -0700 (PDT)
Message-ID: <alpine.LFD.1.10.0808261019450.3363@nehalem.linux-foundation.org>
References: <mzBsPw3QUOF.A.87F.wZGsIB@albercik> <48B313E0.1000501@hp.com> <alpine.LFD.1.10.0808251326500.3363@nehalem.linux-foundation.org> <200808261111.19205.rusty@rustcorp.com.au>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200808261111.19205.rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>
Cc: "Alan D. Brunelle" <Alan.Brunelle-VXdhtT5mjnY@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Arjan van de Ven <arjan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>



On Tue, 26 Aug 2008, Rusty Russell wrote:
> 
> Your workaround is very random, and that scares me.  I think a huge number of 
> CPUs needs a real solution (an actual cpumask allocator, then do something 
> clever if we come across an actual fastpath).

The thing is, the inlining thing is a separate issue.

Yes, the cpumasks were what made stack pressure so critical to begin with, 
but no, a 400-byte stack frame in a deep callchain isn't acceptable 
_regardless_ of any cpumask_t issues.

Gcc inlining is a total and utter pile of shit. And _that_ is the problem. 
I seriously think we shouldn't allow gcc to inline anything at all unless 
we tell it to. That's how it used to work, and quite frankly, that's how 
it _should_ work.

The downsides of inlining are big enough from both a debugging and a real 
code generation angle (eg stack usage like this), that the upsides 
(_somesimes_ smaller kernel, possibly slightly faster code) simply aren't 
relevant.

So the "noinline" was random, yes, but this is a real issue. Looking at 
checkstack output for a saner config (NR_CPUS=16), the top entries for me 
are things like

	ide_generic_init [vmlinux]:             1384
	idefloppy_ioctl [vmlinux]:              1208
	e1000_check_options [vmlinux]:  	1152
	...

which are "leaf" functions. They are broken as hell (the e1000 is 
apparently because it builds structs on the stack that should all be 
"static const", for example), but they are different from something like 
the module init sequence in that they are not going to affect anything 
else.

It would be interesting to see what "-fno-default-inline" does to the 
kernel. It really would get rid of a _lot_ of gcc version issues too. 
Inlining behavior of gcc has long been a problem for us.

			Linus
