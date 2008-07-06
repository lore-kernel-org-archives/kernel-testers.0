From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: 2.6.26-rc9: Reported regressions from 2.6.25
Date: Sun, 6 Jul 2008 08:46:09 -0700 (PDT)
Message-ID: <alpine.LFD.1.10.0807060816070.3016@woody.linux-foundation.org>
References: <Vu1KV8Wj_GP.A.qW.DzLcIB@albercik>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Vu1KV8Wj_GP.A.qW.DzLcIB@albercik>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maximilian Engelhardt <maxi-OwNUvPV92VfddJNmlsFzeA@public.gmane.org>, Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, "Paul E. McKenney" <paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, James Bottomley <James.Bottomley-d9PhHud1JfjCXq6kfMZ53/egYHeGw8Jk@public.gmane.org>



On Sun, 6 Jul 2008, Rafael J. Wysocki wrote:
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11025
> Subject		: [problem] raid performance loss with 2.6.26-rc8 on 32-bit x86 (bisected)
> Submitter	: Dan Williams <dan.j.williams-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> Date		: 2008-07-01 1:57 (6 days old)
> References	: http://marc.info/?l=linux-kernel&m=121487749429883&w=4
> Handled-By	: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
> 		  Andy Whitcroft <apw-26w3C0LaAnFg9hUCZPvPmw@public.gmane.org>

Fixed by commit 494de90098784b8e2797598cefdd34188884ec2e: "Do not 
overwrite nr_zones on !NUMA when initialising zlcache_ptr" by Mel.

> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=10919
> Subject		: [regression] display dimming is slow and laggy - Acer Travelmate 661lci
> Submitter	: Maximilian Engelhardt <maxi-OwNUvPV92VfddJNmlsFzeA@public.gmane.org>
> Date		: 2008-06-14 22:31 (23 days old)
> References	: http://marc.info/?l=linux-kernel&m=121348428828320&w=4

I wonder if this one could be related. The 'nr_zones' overwriting bug 
would result in kswapd not reclaiming any memory asynchronously, so the 
kernel would basically be constantly under a low-memory situation, and 
processes would be forced to do synchronous reclaim. 

That, in turn, could easily explain laggy operation, especially if it is 
something bigger that needs to allocate new memory (not that I know if X 
dimming needs to, but I could imagine that it does some double buffering 
or whatever).

> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=10872
> Subject		: x86_64 boot hang when CONFIG_NUMA=n
> Submitter	: Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
> Date		: 2008-06-05 21:50 (32 days old)
> References	: http://marc.info/?l=linux-kernel&m=121270308607116&w=4
> 		  http://lkml.org/lkml/2008/6/11/355
> 		  http://lkml.org/lkml/2008/6/15/117
> Handled-By	: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

This really doesn't sound like low memory, but the CONFIG_NUMA thing is 
intriguing, since again, the 'nr_zones' thing depended on that. It would 
break 'balance_pgdat()' entirely, and maybe some balancing operation can 
get confused even before you actually run out of memory

Unlikely, but worth re-testing.

> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11008
> Subject		: after laptop re-dock: usb-storage device no longer detected
> Submitter	: Lukas Hejtmanek <xhejtman-8qz54MUs51PtwjQa/ONI9g@public.gmane.org>
> Date		: 2008-06-26 17:37 (11 days old)
> References	: http://lkml.org/lkml/2008/6/26/391
> Handled-By	: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
> Patch		: http://lkml.org/lkml/2008/6/30/305

This patch got merged: commit 1236edf1c70107a0d31b3fba0b2a8783615d0d24 
("USB: don't lose disconnections during suspend").

> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11006
> Subject		: 2.6.26-rc6: pcmcia stopped working
> Submitter	: Pavel Machek <pavel-AlSwsSmVLrQ@public.gmane.org>
> Date		: 2008-06-22 22:40 (15 days old)
> References	: http://marc.info/?l=linux-kernel&m=121420740806363&w=4
> 		  http://marc.info/?t=121439185700001&r=1&w=4
> Handled-By	: Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> 		  Bartlomiej Zolnierkiewicz <bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Patch		: http://marc.info/?l=linux-kernel&m=121526230022719&w=4

Ditto: commit 7cd95f56cb61f5348d062527c9d3653196f6e629 ("ide: fix 
hwif->gendev refcounting")

> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=10860
> Subject		: total system freeze at boot with 2.6.26-rc
> Submitter	: Christian Casteyde <casteyde.christian-GANU6spQydw@public.gmane.org>
> Date		: 2008-06-05 12:38 (32 days old)
> Handled-By	: Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Patch		: http://bugzilla.kernel.org/attachment.cgi?id=16556

Fixed in commit 70a3143af87c6ca188107cbd49ab5eec2c86c456 ("sata_uli: 
hardreset is broken")

> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=10815
> Subject		: 2.6.26-rc4: RIP find_pid_ns+0x6b/0xa0
> Submitter	: Alexey Dobriyan <adobriyan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2008-05-27 09:23 (41 days old)
> References	: http://lkml.org/lkml/2008/5/27/9
> 		  http://lkml.org/lkml/2008/6/14/87
> Handled-By	: Oleg Nesterov <oleg-6lXkIZvqkOAvJsYlp49lxw@public.gmane.org>
> 		  Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
> 		  Paul E. McKenney <paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
> Patch		: http://lkml.org/lkml/2008/5/28/16

This one is the same thing that is reported as unresolved, and no, I don't 
think that existing patch was ever really tested to fix anything. Paul?

I suspect SRCU will need to be simply marked BROKEN for now, because 
nobody knows what the problem Alexey sees is. Apparently it's been seen by 
a few other people too.

> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=10726
> Subject		: x86-64 NODES_SHIFT compile failure.
> Submitter	: Dave Jones <davej-rdkfGonbjUTCLXcRTR1eJlpr/1R2p/CL@public.gmane.org>
> Date		: 2008-05-16 12:54 (52 days old)
> References	: http://lkml.org/lkml/2008/5/16/312
> Handled-By	: Mike Travis <travis-sJ/iWh9BUns@public.gmane.org>
> Patch		: http://lkml.org/lkml/2008/5/16/343

Fixed in commit efac41894df57d32b483ac622d03541b5b2692c0 ("x86: fix 
NODES_SHIFT Kconfig range").

> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=10725
> Subject		: USB Mass storage mount fails: Write protect on
> Submitter	: Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2008-05-16 14:55 (52 days old)
> References	: http://marc.info/?l=linux-kernel&m=121095168003572&w=4
> Handled-By	: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
> Patch		: http://marc.info/?l=linux-scsi&m=121433068314568&w=2

Hmm. James?

				Linus
