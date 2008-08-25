From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #11342] Linux 2.6.27-rc3: kernel BUG at mm/vmalloc.c -
 bisected
Date: Mon, 25 Aug 2008 13:43:03 -0700 (PDT)
Message-ID: <alpine.LFD.1.10.0808251326500.3363@nehalem.linux-foundation.org>
References: <mzBsPw3QUOF.A.87F.wZGsIB@albercik> <VSpL6AnBTS.A.q9H.6aGsIB@albercik> <alpine.LFD.1.10.0808231257310.3363@nehalem.linux-foundation.org> <alpine.LFD.1.10.0808231313170.3363@nehalem.linux-foundation.org> <48B29F7B.6080405@hp.com> <48B2A421.7080705@hp.com>
 <alpine.LFD.1.10.0808251019380.3363@nehalem.linux-foundation.org> <alpine.LFD.1.10.0808251106270.3363@nehalem.linux-foundation.org> <48B313E0.1000501@hp.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <48B313E0.1000501-VXdhtT5mjnY@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Alan D. Brunelle" <Alan.Brunelle-VXdhtT5mjnY@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Arjan van de Ven <arjan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>


On Mon, 25 Aug 2008, Alan D. Brunelle wrote:
> 
> Mine has:
> 
> Dump of assembler code for function sys_init_module:
> 0xffffffff802688c4 <sys_init_module+4>:	sub    $0x1c0,%rsp
> 
> so 448 bytes.

Yeah, your build seems to have consistently bigger stack usage, and that 
may be due to some config option, but most likely it's a compiler version 
issue.

But I think part of the reason is that you have frame pointers enabled: 
that makes the stack frames bigger not only because of the frame pointer 
save/restore, but also because you have more register pressure and thus 
spills.

> The kernel is up at: http://free.linux.hp.com/~adb/bug.11342/vmlinux (if
> you would let me know when you are through with it so I can free up some
> space there I'd appreciate it...)

I'm downloading it now, I'll probably be done by the time you get this 
email.

[ Update. Done. You can remove it ]

> By doing the patch you provided, sys_init_module now looks like:
> 
> Dump of assembler code for function sys_init_module:
> 0xffffffff8026aa24 <sys_init_module+4>:	sub    $0x20,%rsp
> 
> So only 32 bytes. (But of course, load_module() exists, and now has
> 0x1d0 (464) bytes...)

Right - the stack usage didn't go away, but the _lifetimes_ changed.

So now load_module() will still use almost 500 bytes of stack, and it will 
call other routines that use stack too, but the lifetime of that stack 
usage is no longer over the whole module loading and initialization part, 
it's purely over just the loading thing.

And since the deep callchain came much later (in the actual ->init 
routines), by the time we do that, we no longer now have the load_module 
stack usage active any more.

> With the patch you provide, I /was/ able to repeatedly boot OK (latest
> tree, and I also ran the patch against the 26.27.rc3-based kernel I was
> having problems with initially, and that booted OK as well).

I had actually already committed it, because it was correct regardless 
(and gcc really is a total ass for doing that inlining to begin with), but 
it's good to have verification that the behaviour you saw was literally 
about this thing.

I'll look at your vmlinux binary to see what else sucks from a stack depth 
standpoint, but one of the problems in this whole thing is that the 
stack usage is obviously both a static thing (with some functions using 
_way_ too much stack!) _and_ a dynamic thing (with the total stack use 
being not about any individual function, but the whole chain).

My patch obviously doesn't change the static stack usage, it just moves it 
around a bit so that it's no longer on that same deep path, so the dynamic 
stack usage is much less.

But I'll look at your vmlinux, see what stands out.

		Linus
