From: Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #10872] x86_64 boot hang when CONFIG_NUMA=n
Date: Tue, 8 Jul 2008 08:39:02 -0700
Message-ID: <20080708083902.e564face.randy.dunlap@oracle.com>
References: <Vu1KV8Wj_GP.A.qW.DzLcIB@albercik>
	<uBi7uNfg81L.A.XLC.s0LcIB@albercik>
	<20080706111750.a6d77e81.randy.dunlap@oracle.com>
	<alpine.LFD.1.10.0807061133230.3016@woody.linux-foundation.org>
	<20080707063218.GC23583@elte.hu>
	<20080707113917.6fda3f7d.randy.dunlap@oracle.com>
	<20080707154042.04bb492e.randy.dunlap@oracle.com>
	<20080708051629.GA12595@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080708051629.GA12595-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: lkml <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Tue, 8 Jul 2008 07:16:29 +0200 Ingo Molnar wrote:

> 
> * Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org> wrote:
> 
> > > $ git bisect start
> > > $ git bisect bad v2.6.26-rc1
> > > $ git bisect good v2.6.25
> > > 
> > > That's only about 1.29M lines of changes.
> > 
> > git bisect and normal rebooting did not find a problem.
> > 
> > I'll repeat this using kexec to boot the new kernel and see if that 
> > locates any issues... since I normally use kexec to load/test new 
> > kernels and that was how the failure occurred (occurs).
> 
> ah, so the hang only occurs if you kexec a post-v2.6.25 kernel? (from 
> any other kernel, or from a post-v2.6.25 kernel?)

Host (first) kernel is 2.6.25 with NUMA=y.
kexec of 2.6.25 with NUMA=n works, kexec of 2.6.26-rc[123456789] with
NUMA=n fails/hangs.  kexec of 2.6.26-rc* with NUMA=y works.

kernel configs will be in next email reply to YH.

---
~Randy
Linux Plumbers Conference, 17-19 September 2008, Portland, Oregon USA
http://linuxplumbersconf.org/
