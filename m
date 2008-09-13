From: Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>
Subject: Re: [Bug #11308] tbench regression on each kernel release from 
	2.6.22 -&gt; 2.6.28
Date: Sat, 13 Sep 2008 13:57:41 +0200
Message-ID: <1221307061.5213.115.camel@marge.simson.net>
References: <j3zWxt-CgYL.A.WTF.bbsyIB@albercik>
	 <SpS7rta8n4.A.mr.ZesyIB@albercik>  <48CAE7A0.8000004@linux-foundation.org>
	 <1221306287.5213.111.camel@marge.simson.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1221306287.5213.111.camel-YqMYhexLQo1vAv1Ojkdn7Q@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Sat, 2008-09-13 at 13:44 +0200, Mike Galbraith wrote:

> 2.6.23.17-cfs-v24.1  (identical config)
> Throughput 1145.28 MB/sec 4 procs
> 
> 16384  87380  1        1       60.00    90278.55
> 16384  87380  1        1       60.01    90579.31
> 16384  87380  1        1       60.01    89412.14
> 16384  87380  1        1       60.00    90270.97
> 
> 2.6.24.7
> Throughput 1119.28 MB/sec 4 procs
> 
> 16384  87380  1        1       60.00    84092.78
> 16384  87380  1        1       60.00    84120.68
> 16384  87380  1        1       60.00    84076.73
> 16384  87380  1        1       60.00    83995.07

P.S. fwiw, scheduler difference between these two kernels is practically
nill.
