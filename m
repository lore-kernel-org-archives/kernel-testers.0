From: Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>
Subject: Re: [Bug #11308] tbench regression on each kernel release from 
	2.6.22 -&gt; 2.6.28
Date: Sun, 14 Sep 2008 09:02:26 +0200
Message-ID: <1221375746.5390.6.camel@marge.simson.net>
References: <j3zWxt-CgYL.A.WTF.bbsyIB@albercik>
	 <SpS7rta8n4.A.mr.ZesyIB@albercik>  <48CAE7A0.8000004@linux-foundation.org>
	 <1221306287.5213.111.camel@marge.simson.net>
	 <1221373494.4979.1.camel@marge.simson.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1221373494.4979.1.camel-YqMYhexLQo1vAv1Ojkdn7Q@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Sun, 2008-09-14 at 08:24 +0200, Mike Galbraith wrote:
> On Sat, 2008-09-13 at 13:44 +0200, Mike Galbraith wrote:
> 
> > 2.6.27-rc6
> > Throughput 1037.98 MB/sec 4 procs
> > 
> > 16384  87380  1        1       60.00    80293.80
> > 16384  87380  1        1       60.00    80266.60
> > 16384  87380  1        1       60.00    80394.83
> > 16384  87380  1        1       60.01    80397.27
> 
> <snip... sigh>
> 
> goes back to current real .27 config
> 
> Throughput 1022.52 MB/sec 4 procs
> 
> 16384  87380  1        1       60.00    75941.95
> 16384  87380  1        1       60.01    76002.46
> 16384  87380  1        1       60.01    76367.55
> 16384  87380  1        1       60.00    76188.66
> 
> ...
> 
> demodularizes seriously over-configured network
> 
> Throughput 750.175 MB/sec 4 procs
> 
> 16384  87380  1        1       60.00    49270.35
> 16384  87380  1        1       60.01    49233.86
> 16384  87380  1        1       60.00    49265.72
> 16384  87380  1        1       60.00    49227.00
> 
> Very un-good thing to try.  Stupid thing too?

Apparently stupid for netfilter.  Uninteresting to this thread I
suppose, so disregard.

	-Mike
