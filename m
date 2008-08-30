From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: Linux 2.6.27-rc5: System boot regression caused by commit
 a2bd7274b47124d2fc4dfdb8c0591f545ba749dd
Date: Sat, 30 Aug 2008 15:41:13 -0700 (PDT)
Message-ID: <alpine.LFD.1.10.0808301539391.3290@nehalem.linux-foundation.org>
References: <alpine.LFD.1.10.0808281555230.3300@nehalem.linux-foundation.org>  <200808292157.24179.rjw@sisk.pl>  <alpine.LFD.1.10.0808291434110.3300@nehalem.linux-foundation.org>  <200808300030.32905.rjw@sisk.pl>  <alpine.LFD.1.10.0808301012060.3290@nehalem.linux-foundation.org>
  <86802c440808301107n4561e815ldf53183c92a7bc93@mail.gmail.com>  <alpine.LFD.1.10.0808301141590.3290@nehalem.linux-foundation.org>  <86802c440808301210u6db1b4e7p4036bdc95db1a601@mail.gmail.com>  <alpine.LFD.1.10.0808301214310.3290@nehalem.linux-foundation.org>
 <86802c440808301314t525d1b75r9afcc73857cf5c79@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <86802c440808301314t525d1b75r9afcc73857cf5c79-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, David Witbrodt <dawitbro-rphTv4pjVZMJGwgDXS7ZQA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>



On Sat, 30 Aug 2008, Yinghai Lu wrote:
> 
> in old kernel, after BAR3 request_filed, pci_assigned_unassigned
> should get update resource for that... but it could find that big
> space for it.

Exactly. So what happens is that it doesn't actually re-allocate it at 
all. Not that it is necessarily even possible - it's quite possible that 
that field is effectively locked some way and is read-only. Without 
knowing the chipset details, we can only guess.

		Linus
