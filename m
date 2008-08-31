From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: Linux 2.6.27-rc5: System boot regression caused by commit
 a2bd7274b47124d2fc4dfdb8c0591f545ba749dd
Date: Sun, 31 Aug 2008 11:03:44 -0700 (PDT)
Message-ID: <alpine.LFD.1.10.0808311100520.12958@nehalem.linux-foundation.org>
References: <alpine.LFD.1.10.0808281555230.3300@nehalem.linux-foundation.org>  <200808302334.29156.rjw@sisk.pl>  <86802c440808301810r17657f3fnb3c8af5496955e0d@mail.gmail.com>  <200808311427.19369.rjw@sisk.pl>  <alpine.LFD.1.10.0808311039330.12958@nehalem.linux-foundation.org>
 <86802c440808311054q4b8e8921qa9f090527b456e34@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <86802c440808311054q4b8e8921qa9f090527b456e34-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, David Witbrodt <dawitbro-rphTv4pjVZMJGwgDXS7ZQA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>



On Sun, 31 Aug 2008, Yinghai Lu wrote:
> 
> wonder how the probe could find out the size of is 1fff_ffff..

Heh. That's how PCI sizing works: you write all ones to the register, and 
read back the result. The low bits won't change, and that indicates the 
size.

But if _none_ of the bits change, then that simply means that the size 
will be calculated to be 0xffffffff-start.

So the sizing will "work", it will just always report that the BAR covers 
everything from start to the 4G limit.

		Linus
