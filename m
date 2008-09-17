From: Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>
Subject: Re: [Bug #11308] tbench regression on each kernel release from
	2.6.22 -&gt; 2.6.28
Date: Wed, 17 Sep 2008 15:11:51 +0200
Message-ID: <1221657111.5511.14.camel@marge.simson.net>
References: <1221306287.5213.111.camel@marge.simson.net>
	 <48CD1D25.9080301@linux-foundation.org>
	 <1221421907.4597.24.camel@marge.simson.net>
	 <1221475440.4784.39.camel@marge.simson.net>
	 <1221568105.5020.17.camel@marge.simson.net>
	 <Pine.LNX.4.64.0809161700020.1034@wrl-59.cs.helsinki.fi>
	 <1221626391.5043.13.camel@marge.simson.net>
	 <1221627676.5125.3.camel@marge.simson.net> <20080917104044.GC18764@elte.hu>
	 <1221651701.5102.17.camel@marge.simson.net> <20080917124943.GA7738@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080917124943.GA7738-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: Ilpo =?ISO-8859-1?Q?J=E4rvinen?= <ilpo.jarvinen-pxSi+dnQzZMxHbG02/KK1g@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Wed, 2008-09-17 at 14:49 +0200, Ingo Molnar wrote:
> * Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org> wrote:
> 
> > > It looks like a potentially bogus bisection result, but _maybe_ it 
> > > has relevance: changes the size of "struct security_operations", 
> > > which could have alignment and layout effects on all sorts of kernel 
> > > variables, kmalloc sizes, etc.
> > 
> > This may well be a mythical creature infestation for all I know ;-), 
> > but it's address is somewhere in the 2069f45..847106f block, 316 
> > commits, none of which look like they should be the least bit 
> > interesting to netperf.  I reverted this particular commit in 27.git, 
> > got the expected result.  Looks like I'll keep poking at it, can't 
> > seem to resist.  Grr.
> 
> are you sure it's 2069f45..847106f? Filtering out the 
> likely-uninteresting commits:

Yeah, as sure as I can be.  I've built both (et al) kernels several
times, and it has repeated every time.  Would be nice if someone would
try to confirm/deny though.  For my little quad, I do..

#!/bin/sh

echo 0 > /proc/sys/kernel/sched_wakeup_granularity_ns 

netserver -p 12865
netserver -p 12866
netserver -p 12867
netserver -p 12868

netperf -p 12865 -t TCP_RR -l 60 -H 127.0.0.1 -T 0,0 -- -r 1,1&
netperf -p 12866 -t TCP_RR -l 60 -H 127.0.0.1 -T 1,1 -- -r 1,1&
netperf -p 12867 -t TCP_RR -l 60 -H 127.0.0.1 -T 2,2 -- -r 1,1&
netperf -p 12868 -t TCP_RR -l 60 -H 127.0.0.1 -T 3,3 -- -r 1,1&

wait
killall netserver


> git log --pretty=format:"%h: %s" 2069f45..847106f | grep -viE \
> 'block|alsa|pcmcia|sound|Merge|iosched|blk|DAC960|scsi|s390|paride|pktcdvd|filter|cdrom|drm'
> 
> gives us:
> 
>  7daf705: Start using the new '%pS' infrastructure to print symbols
>  6f0f0fd: security: remove register_security hook
>  93cbace: security: remove dummy module fix
>  5915eb5: security: remove dummy module
>  b478a9f: security: remove unused sb_get_mnt_opts hook
>  32502b8: splice: fix generic_file_splice_read() race with page invalidation
>  8b3d356: ramfs: enable splice write
>  a144ff0: xen: Avoid allocations causing swap activity on the resume path
> 
> which really only leaves that security commit your bisection fingered. 
> Which _slightly_ raises its likelyhood of being implicated. Structure 
> size changes can move two formerly far-apart netperf-relevant symbols on 
> the same cacheline, which can start cache ping-pong-ing badly.

I sure hope it's something like ping-pong, it's driving me NUTS.

	-Mike
