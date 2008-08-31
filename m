From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: Linux 2.6.27-rc5: System boot regression caused by commit a2bd7274b47124d2fc4dfdb8c0591f545ba749dd
Date: Sun, 31 Aug 2008 14:27:18 +0200
Message-ID: <200808311427.19369.rjw@sisk.pl>
References: <alpine.LFD.1.10.0808281555230.3300@nehalem.linux-foundation.org> <200808302334.29156.rjw@sisk.pl> <86802c440808301810r17657f3fnb3c8af5496955e0d@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <86802c440808301810r17657f3fnb3c8af5496955e0d-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, David Witbrodt <dawitbro-rphTv4pjVZMJGwgDXS7ZQA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Sunday, 31 of August 2008, Yinghai Lu wrote:
> On Sat, Aug 30, 2008 at 2:34 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> > On Saturday, 30 of August 2008, Yinghai Lu wrote:
> >> On Sat, Aug 30, 2008 at 2:12 PM, Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> >> > On Sat, Aug 30, 2008 at 1:46 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> >> >> On Saturday, 30 of August 2008, Yinghai Lu wrote:
> >> >>> please check
> >> >>>
> >> >>> [PATCH] x86: split e820 reserved entries record to late v4
> >> >>> [PATCH] x86: split e820 reserved entries record to late v4 - fix v6
> >> >>
> >> >> What kernel should I apply those to and in what order?
> >> >
> >> > linus git tree
> >> > 1. [PATCH] x86: split e820 reserved entries record to late v4
> >> > 2. [PATCH] x86: split e820 reserved entries record to late v4 - fix v6
> >> >
> >> > tip/master
> >> > 1. Resource handling: add 'insert_resource_expand_to_fit()' function
> >> > 2. [PATCH] x86: split e820 reserved entries record to late v4 - fix v6
> >>
> >> actually it is almost the same to tar ball send you for your system...
> >
> > I've just tested these two patches on top of the current Linus' tree and the
> > system works normally.
> >
> 
> Can you try attached in addition to those to patches ?
> 
> want to check if the BAR3 get new resource..., and after that what
> could happen...

Works, dmesg is at:
http://www.sisk.pl/kernel/debug/mainline/2.6.27-rc5/2.6.27-rc5-test.log

Please let me know if you want it with any more command line options.

Thanks,
Rafael
