From: Eric Dumazet <dada1-fPLkHRcR87vqlBn2x/YWAg@public.gmane.org>
Subject: Re: [Bug #11308] tbench regression on each kernel release from 2.6.22
 -&gt; 2.6.28
Date: Fri, 21 Nov 2008 19:16:51 +0100
Message-ID: <4926FB13.3080808@cosmosbay.com>
References: <1ScKicKnTUE.A.VxH.DIHIJB@chimera> <NjF0-fuClJC.A.73B.cLHIJB@chimera> <20081117090648.GG28786@elte.hu> <Pine.LNX.4.64.0811191341570.23502@quilx.com> <Pine.LNX.4.64.0811201727070.9089@quilx.com> <20081121083044.GL16242@elte.hu> <Pine.LNX.4.64.0811210936580.25354@quilx.com> <Pine.LNX.4.64.0811211119550.27777@quilx.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Pine.LNX.4.64.0811211119550.27777-dRBSpnHQED8AvxtiuMwx3w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
To: Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, "David S. Miller" <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>

Christoph Lameter a =E9crit :
> AIM9 results:
> 		TCP		UDP
> 2.6.22		104868.00	489970.03
> 2.6.28-rc5	110007.00	518640.00
> net-next	108207.00	514790.00
>=20
> net-next looses here for some reason against 2.6.28-rc5. But the numb=
ers
> are better than 2.6.22 in any case.
>=20

I found that on current net-next, running oprofile in background can gi=
ve better bench
results. Thats really curious... no ?


So the single loop on close(socket()), on all my 8 cpus is almost 10% f=
aster if oprofile
is running... (20 secs instead of 23 secs)

