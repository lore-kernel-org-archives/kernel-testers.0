From: Kevin Shanahan <kmshanah-biM/RbsGxha6c6uEtOJ/EA@public.gmane.org>
Subject: Re: [Bug #12465] KVM guests stalling on 2.6.28 (bisected) [Bug
	12465]
Date: Mon, 23 Feb 2009 22:08:55 +1030
Message-ID: <1235389135.7901.11.camel@kulgan.wumi.org.au>
References: <sTyoMUwdm9B.A.QCH.U40lJB@chimera>
	 <ROx6X68CGJG.A.54H.w40lJB@chimera>
	 <1234691284.4967.23.camel@kulgan.wumi.org.au>
	 <20090215100454.GA30314@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090215100454.GA30314-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>, bugme-daemon-590EEB7GvNiWaY/ihj7yzEB+6BGkLq7r@public.gmane.org, Steven Rostedt <rostedt-nx8X9YLhiw1AfugRpC6u6w@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>

On Sun, 2009-02-15 at 11:04 +0100, Ingo Molnar wrote:
> It would be nice to enhance this single-CPU trace some more - to more
> surgically see what is going on. Firstly, absolute timestamps would b=
e
> nice:
>=20
>   echo funcgraph-abstime  > trace_options
>   echo funcgraph-proc     > trace_options
>=20
> as it's a bit hard to see the global timescale of events.

Okay, here's some more trace data. I grabbed a few samples at different
times during the ping test. I think the data in files trace6.txt and
trace8.txt coincided with some of the biggest delays.

  http://disenchant.net/tmp/bug-12465/trace-2/

This is captured on 2.6.29-rc5-tip-02057-gaad11ad. The kvm guest being
pinged is process 11211:

  flexo:~# pstree -p 11211
  qemu-system-x86(11211)=E2=94=80=E2=94=AC=E2=94=80{qemu-system-x86}(11=
212)
                         =E2=94=9C=E2=94=80{qemu-system-x86}(11213)
                         =E2=94=94=E2=94=80{qemu-system-x86}(11609)

Cheers,
Kevin.

> Secondly, not all events are included - in particular i dont really s=
ee
> the points when packets are passed. Would it be possible to add a tra=
cing
> hypercall so that the guest kernel can inject trace events that can b=
e seen
> on the native-side trace? Regarding ping latencies really just two th=
ings
> matter: the loopback network device's rx and tx path. We should trace=
 the
> outgoing sequence number and the incoming sequence number of IP packe=
ts,
> and inject that to the host side. This way we can correlate the delay=
s
> precisely.
>=20
> 	Ingo

