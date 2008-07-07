From: Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #10872] x86_64 boot hang when CONFIG_NUMA=n
Date: Mon, 7 Jul 2008 15:40:42 -0700
Message-ID: <20080707154042.04bb492e.randy.dunlap@oracle.com>
References: <Vu1KV8Wj_GP.A.qW.DzLcIB@albercik>
	<uBi7uNfg81L.A.XLC.s0LcIB@albercik>
	<20080706111750.a6d77e81.randy.dunlap@oracle.com>
	<alpine.LFD.1.10.0807061133230.3016@woody.linux-foundation.org>
	<20080707063218.GC23583@elte.hu>
	<20080707113917.6fda3f7d.randy.dunlap@oracle.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080707113917.6fda3f7d.randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: lkml <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Mon, 7 Jul 2008 11:39:17 -0700 Randy Dunlap wrote:

> On Mon, 7 Jul 2008 08:32:18 +0200 Ingo Molnar wrote:
> 
> > 
> > * Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org> wrote:
> > 
> > > > This still happens with 2.6.26-rc9.  Using CONFIG_NUMA=y boots OK.
> > > 
> > > Ok, then it wasn't the nr_zones thing.
> > > 
> > > Since it seems to be repeatable for you, can you bisect it?
> > 
> > one guess would be:
> > 
> > | commit e8ee6f0ae5cd860e8e6c02807edfa3c1fa01bcb5
> > | Author: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > | Date:   Sun Apr 13 01:41:58 2008 -0700
> > |
> > |     x86: work around io allocation overlap of HT links
> > 
> > but ... since CONFIG_NUMA makes it work, i'm not sure about that.
> > 
> > Randy, could you post the full CONFIG_NUMA bootlog as well, does it show 
> > any difference in resource allocations?
> 
> Good and bad boot logs are attached.  There are several differences, but I don't
> see any that are significant.
> 
> I've started bisecting with:
> 
> $ git bisect start
> $ git bisect bad v2.6.26-rc1
> $ git bisect good v2.6.25
> 
> That's only about 1.29M lines of changes.

git bisect and normal rebooting did not find a problem.

I'll repeat this using kexec to boot the new kernel and see if that
locates any issues... since I normally use kexec to load/test new kernels
and that was how the failure occurred (occurs).

---
~Randy
Linux Plumbers Conference, 17-19 September 2008, Portland, Oregon USA
http://linuxplumbersconf.org/
