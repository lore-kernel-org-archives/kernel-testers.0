From: "Alan D. Brunelle" <Alan.Brunelle-VXdhtT5mjnY@public.gmane.org>
Subject: Re: [Bug #11342] Linux 2.6.27-rc3: kernel BUG at mm/vmalloc.c - bisected
Date: Mon, 25 Aug 2008 08:03:07 -0400
Message-ID: <48B29F7B.6080405@hp.com>
References: <mzBsPw3QUOF.A.87F.wZGsIB@albercik> <VSpL6AnBTS.A.q9H.6aGsIB@albercik> <alpine.LFD.1.10.0808231257310.3363@nehalem.linux-foundation.org> <alpine.LFD.1.10.0808231313170.3363@nehalem.linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.1.10.0808231313170.3363-nfNrOhbfy2R17+2ddN/4kux8cNe9sq/dYPYVAmT7z5s@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Arjan van de Ven <arjan-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>

Linus Torvalds wrote:
> 
> On Sat, 23 Aug 2008, Linus Torvalds wrote:
>> This one makes no sense. It's triggering a BUG_ON(in_interrupt()), but 
>> then the call chain shows that there is no interrupt going on.
> 
> Ahh, later in that thread there's another totally unrelated oops in 
> debug_mutex_add_waiter().
> 
> I'd guess that it is really wild pointer corrupting memory, quite possibly 
> due to a double free or something like that. Alan - it would be good to 
> run with DEBUG_PAGE_ALLOC and SLUB debugging etc if you don't already do 
> that?
> 
> 		Linus
> 

I'll add those in - as to the repeatability: The "bad" kernels seem to
repeat quite reliably - not only in terms of counts (5 or 6 times in a
row before trying something else), but also in terms of the "what" -
either the original issue () or the other kernel with the later issue
(debug_mutex_add_waiter). That's /goodness/ in that it should help
narrow it down.

I'll make sure the kernel is still failing this morning, and then add in
DEBUG_PAGE_ALLOC and if that doesn't help, SLUB debugging...

Alan
