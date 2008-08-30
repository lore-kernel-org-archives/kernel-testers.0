From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: Linux 2.6.27-rc5: System boot regression caused by commit a2bd7274b47124d2fc4dfdb8c0591f545ba749dd
Date: Sat, 30 Aug 2008 23:34:27 +0200
Message-ID: <200808302334.29156.rjw@sisk.pl>
References: <alpine.LFD.1.10.0808281555230.3300@nehalem.linux-foundation.org> <86802c440808301412k4e0b5562ie03ce41547ddab9a@mail.gmail.com> <86802c440808301413g7f496e8bxd21adc60b328cd24@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <86802c440808301413g7f496e8bxd21adc60b328cd24-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, David Witbrodt <dawitbro-rphTv4pjVZMJGwgDXS7ZQA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Saturday, 30 of August 2008, Yinghai Lu wrote:
> On Sat, Aug 30, 2008 at 2:12 PM, Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> > On Sat, Aug 30, 2008 at 1:46 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> >> On Saturday, 30 of August 2008, Yinghai Lu wrote:
> >>> please check
> >>>
> >>> [PATCH] x86: split e820 reserved entries record to late v4
> >>> [PATCH] x86: split e820 reserved entries record to late v4 - fix v6
> >>
> >> What kernel should I apply those to and in what order?
> >
> > linus git tree
> > 1. [PATCH] x86: split e820 reserved entries record to late v4
> > 2. [PATCH] x86: split e820 reserved entries record to late v4 - fix v6
> >
> > tip/master
> > 1. Resource handling: add 'insert_resource_expand_to_fit()' function
> > 2. [PATCH] x86: split e820 reserved entries record to late v4 - fix v6
> 
> actually it is almost the same to tar ball send you for your system...

I've just tested these two patches on top of the current Linus' tree and the
system works normally.

Thanks,
Rafael
