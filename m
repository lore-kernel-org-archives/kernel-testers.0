From: Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>
Subject: Re: [Bug #11308] tbench regression on each kernel release from 
	2.6.22 -&gt; 2.6.28
Date: Sat, 13 Sep 2008 13:44:47 +0200
Message-ID: <1221306287.5213.111.camel@marge.simson.net>
References: <j3zWxt-CgYL.A.WTF.bbsyIB@albercik>
	 <SpS7rta8n4.A.mr.ZesyIB@albercik>  <48CAE7A0.8000004@linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <48CAE7A0.8000004-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Fri, 2008-09-12 at 17:05 -0500, Christoph Lameter wrote:
> Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.26.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11308
> > Subject		: tbench regression on each kernel release from 2.6.22 -&gt; 2.6.28
> > Submitter	: Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
> > Date		: 2008-08-11 18:36 (33 days old)
> > References	: http://marc.info/?l=linux-kernel&m=121847986119495&w=4
> > 
> > 
> > 
> 
> tbench
> 
> 2.6.27-rc6	2760 MB/sec
> 2.6.22 		3235.47 MB/sec

Numbers from my Q6600 Aldi supermarket box (hm, your box is from different shelf)

tbench -t 60 4 localhost followed by 4 60s netperf TCP_RR pairs, each pair
jabbering on a separate port and affine to a separate CPU.  Configs are
as close as I can make them, all kernels built and tested today by
identical userland.

2.6.22.19
Throughput 1136.02 MB/sec 4 procs

16384  87380  1        1       60.01    94179.12
16384  87380  1        1       60.01    88780.61
16384  87380  1        1       60.01    91057.72
16384  87380  1        1       60.01    94242.16

2.6.22.19-cfs-v24.1  (identical config)
Throughput 1126.79 MB/sec 4 procs

16384  87380  1        1       60.00    88809.14
16384  87380  1        1       60.00    89971.25
16384  87380  1        1       60.01    89452.91
16384  87380  1        1       60.01    89478.63

2.6.23.17
Throughput 1073.2 MB/sec 4 procs

16384  87380  1        1       60.00    83635.61
16384  87380  1        1       60.00    82754.36
16384  87380  1        1       60.00    84594.59
16384  87380  1        1       60.00    82995.81

2.6.23.17-cfs-v24.1  (identical config)
Throughput 1145.28 MB/sec 4 procs

16384  87380  1        1       60.00    90278.55
16384  87380  1        1       60.01    90579.31
16384  87380  1        1       60.01    89412.14
16384  87380  1        1       60.00    90270.97

2.6.24.7
Throughput 1119.28 MB/sec 4 procs

16384  87380  1        1       60.00    84092.78
16384  87380  1        1       60.00    84120.68
16384  87380  1        1       60.00    84076.73
16384  87380  1        1       60.00    83995.07

2.6.25.17
Throughput 1113.82 MB/sec 4 procs

16384  87380  1        1       60.00    84629.98
16384  87380  1        1       60.00    84776.38
16384  87380  1        1       60.00    84356.49
16384  87380  1        1       60.00    84469.71

2.6.26.5
Throughput 1095.26 MB/sec 4 procs

16384  87380  1        1       60.00    84481.11
16384  87380  1        1       60.00    84604.38
16384  87380  1        1       60.01    86526.84
16384  87380  1        1       60.01    84478.01

2.6.27-rc6
Throughput 1037.98 MB/sec 4 procs

16384  87380  1        1       60.00    80293.80
16384  87380  1        1       60.00    80266.60
16384  87380  1        1       60.00    80394.83
16384  87380  1        1       60.01    80397.27

I spent two weeks chasing various and sundry netperf numbers recently,
only learning in the process that netperf is _utterly immune_ to
bisection.  Tbench numbers don't look promising for bisection from here.

Note to quixotic self: destroy log immediately lest you be tempted.

	-Mike
