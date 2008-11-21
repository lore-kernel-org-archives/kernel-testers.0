From: Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #11308] tbench regression on each kernel release from 2.6.22
 -&gt; 2.6.28
Date: Fri, 21 Nov 2008 10:11:49 -0600 (CST)
Message-ID: <Pine.LNX.4.64.0811210936580.25354@quilx.com>
References: <1ScKicKnTUE.A.VxH.DIHIJB@chimera> <NjF0-fuClJC.A.73B.cLHIJB@chimera>
 <20081117090648.GG28786@elte.hu> <Pine.LNX.4.64.0811191341570.23502@quilx.com>
 <Pine.LNX.4.64.0811201727070.9089@quilx.com> <20081121083044.GL16242@elte.hu>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20081121083044.GL16242-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, "David S. Miller" <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>

On Fri, 21 Nov 2008, Ingo Molnar wrote:

> > 2.6.22:
> > Throughput 2526.15 MB/sec 8 procs
> > 2.6.28-rc5:
> > Throughput 2486.2 MB/sec 8 procs
> >
> > 8p Dell 1950 and the number of processors specified on the tbench
> > command line.
>
> ... so might be worth a test. Just to satisfy our curiosity and to
> possibly close the entry :-)

Ahh.. Wow.... net-next gets us:

Throughput 2685.17 MB/sec 8 procs

