From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #11342] Linux 2.6.27-rc3: kernel BUG at mm/vmalloc.c -
 bisected
Date: Tue, 26 Aug 2008 12:09:46 -0700 (PDT)
Message-ID: <alpine.LFD.1.10.0808261205530.3363@nehalem.linux-foundation.org>
References: <mzBsPw3QUOF.A.87F.wZGsIB@albercik> <VSpL6AnBTS.A.q9H.6aGsIB@albercik> <alpine.LFD.1.10.0808231257310.3363@nehalem.linux-foundation.org> <alpine.LFD.1.10.0808231313170.3363@nehalem.linux-foundation.org> <48B29F7B.6080405@hp.com> <48B2A421.7080705@hp.com>
 <alpine.LFD.1.10.0808251019380.3363@nehalem.linux-foundation.org> <alpine.LFD.1.10.0808251106270.3363@nehalem.linux-foundation.org> <48B313E0.1000501@hp.com> <alpine.LFD.1.10.0808251326500.3363@nehalem.linux-foundation.org>
 <alpine.LFD.1.10.0808251344250.3363@nehalem.linux-foundation.org> <alpine.LFD.1.10.0808251401590.3363@nehalem.linux-foundation.org> <48B452F3.9040304@sgi.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <48B452F3.9040304-sJ/iWh9BUns@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Mike Travis <travis-sJ/iWh9BUns@public.gmane.org>
Cc: "Alan D. Brunelle" <Alan.Brunelle-VXdhtT5mjnY@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Arjan van de Ven <arjan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>, "Siddha, Suresh B" <suresh.b.siddha-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "Luck, Tony" <tony.luck-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Jack Steiner <steiner-sJ/iWh9BUns@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>



On Tue, 26 Aug 2008, Mike Travis wrote:
> 
> The need to allow distros to set NR_CPUS=4096 (and NODES_SHIFT=9) is
> critical to our upcoming SGI systems using what we have been calling
> "UV".

That's fine. You can do it. The default kernel will not, because it's 
clearly not safe.

I really don't care what you do to _your_ images. But I will not 
distribute a known-broken kernel, and I will not debug random stack 
overflows that happen in it.

If you want the default kernel to support 4k cores, we'll need to fix the 
stack usage.  I don't think that is impossible, but IT IS NOT GOING TO 
HAPPEN for 2.6.27.

And quite frankly, if some vendor like RedHat enables NR_CPUS=4096 by 
default, they are totally and utterly crazy.

But some SGI-specific binary that is meant for SGI machines only, and has 
been extensively tested with the setup used on SGI machines is a different 
thing.

			Linus
