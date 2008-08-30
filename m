From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: Linux 2.6.27-rc5: System boot regression caused by commit
 a2bd7274b47124d2fc4dfdb8c0591f545ba749dd
Date: Sat, 30 Aug 2008 16:28:07 -0700 (PDT)
Message-ID: <alpine.LFD.1.10.0808301615450.3290@nehalem.linux-foundation.org>
References: <alpine.LFD.1.10.0808281555230.3300@nehalem.linux-foundation.org>  <alpine.LFD.1.10.0808291434110.3300@nehalem.linux-foundation.org>  <200808300030.32905.rjw@sisk.pl>  <alpine.LFD.1.10.0808301012060.3290@nehalem.linux-foundation.org> 
 <86802c440808301107n4561e815ldf53183c92a7bc93@mail.gmail.com>  <alpine.LFD.1.10.0808301141590.3290@nehalem.linux-foundation.org>  <86802c440808301210u6db1b4e7p4036bdc95db1a601@mail.gmail.com>  <alpine.LFD.1.10.0808301214310.3290@nehalem.linux-foundation.org>
  <86802c440808301314t525d1b75r9afcc73857cf5c79@mail.gmail.com>  <alpine.LFD.1.10.0808301539391.3290@nehalem.linux-foundation.org> <86802c440808301550s627dfcb0h7ff8971c8248703a@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <86802c440808301550s627dfcb0h7ff8971c8248703a-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Jordan Crouse <jordan.crouse-5C7GfCeVMHo@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, David Witbrodt <dawitbro-rphTv4pjVZMJGwgDXS7ZQA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>



On Sat, 30 Aug 2008, Yinghai Lu wrote:
> 
> wait, THAT BAR is 64BIT capable, So kernel should assign 64bit range to it...
> it request_resource fails...

I don't think we've ever done new allocations in 64 bits. Although looking 
for it, I have to admit that I don't see what would limit us right now. 
There used to be some paths that weren't 64-bit clean, but I think we 
fixed all of those.

		Linus
