From: Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #10872] x86_64 boot hang when CONFIG_NUMA=n
Date: Sun, 6 Jul 2008 11:17:50 -0700
Message-ID: <20080706111750.a6d77e81.randy.dunlap@oracle.com>
References: <Vu1KV8Wj_GP.A.qW.DzLcIB@albercik>
	<uBi7uNfg81L.A.XLC.s0LcIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <uBi7uNfg81L.A.XLC.s0LcIB@albercik>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Sun,  6 Jul 2008 13:45:53 +0200 (CEST) Rafael J. Wysocki wrote:

> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.25.  Please verify if it still should be listed.
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=10872
> Subject		: x86_64 boot hang when CONFIG_NUMA=n
> Submitter	: Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
> Date		: 2008-06-05 21:50 (32 days old)
> References	: http://marc.info/?l=linux-kernel&m=121270308607116&w=4
> 		  http://lkml.org/lkml/2008/6/11/355
> 		  http://lkml.org/lkml/2008/6/15/117
> Handled-By	: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>


This still happens with 2.6.26-rc9.  Using CONFIG_NUMA=y boots OK.

The last lines from the (netconsole) log are:

calling  early_fill_mp_bus_info+0x0/0x7b2
node 0 link 1: io port [1000, 3fff]
node 1 link 2: io port [4000, ffff]
TOM: 0000000080000000 aka 2048M
node 0 link 1: mmio [e8000000, fddfffff]
node 1 link 2: mmio [fde00000, fdffffff]
node 0 link 1: mmio [80000000, 83ffffff]
node 1 link 2: mmio [84000000, 8fffffff]
node 0 link 1: mmio [a0000, bffff]
TOM2: 0000000280000000 aka 10240M
bus: [00,3f] on node 0 link 1
bus: 00 index 0 io port: [0, 3fff]
bus: 00 index 1 mmio: [90000000, fddfffff]
bus: 00 index 2 mmio: [80000000, 83ffffff]
bus: 00 index 3 mmio: [a0000, bffff]
bus: 00 index 4 mmio: [fe000000, ffffffff]
bus: 00 index 5 mmio: [280000000, fcffffffff]
bus: [40,ff] on node 1 link 2
bus: 40 index 0 io port: [4000, ffff]
bus: 40 index 1 mmio: [fde00000, fdffffff]


---
~Randy
Linux Plumbers Conference, 17-19 September 2008, Portland, Oregon USA
http://linuxplumbersconf.org/
