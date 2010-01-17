From: Florian Mickler <florian@mickler.org>
Subject: Re: 2.6.33-rc2: Reported regressions from 2.6.32
Date: Sun, 17 Jan 2010 16:17:26 +0100
Message-ID: <20100117161726.5752b181@schatten.dmk.lab>
References: <LptzGUUXbTK.A.MSF.ymhOLB@chimera>
	<20100116174821.GA18306@redhat.com>
	<201001162257.16277.rjw@sisk.pl>
	<alpine.LFD.2.00.1001161402400.13231@localhost.localdomain>
	<20100117123218.GA3182@redhat.com>
	<84144f021001170618g708a7c14ob1b222ab1cbdaa20@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754113Ab0AQPSG@vger.kernel.org>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: linux-kernel@vger.kernel.org
Cc: kernel-testers@vger.kernel.org

On Sun, 17 Jan 2010 16:18:39 +0200
Pekka Enberg <penberg@cs.helsinki.fi> wrote:

> On Sun, Jan 17, 2010 at 2:32 PM, Michael S. Tsirkin
> <m.s.tsirkin@gmail.com> wrote:
> > On Sat, Jan 16, 2010 at 02:04:07PM -0800, Linus Torvalds wrote:
> >>
> >>
> >> On Sat, 16 Jan 2010, Rafael J. Wysocki wrote:
> >> >
> >> > > Immediately upon startup, screen is flickering (becomes
> >> > > lighter and darker again). The problem occurs with kernels
> >> > > 2.6.33-rc1 to 2.6.33-rc4, but not with kernel 2.6.32 and below=
=2E
> >> >
> >> > We've already had several reports like this already.
> >> >
> >> > Care to review the bugs linked to http://bugzilla.kernel.org/sho=
w_bug.cgi?id=3D14885
> >> > and check if none of them matches the problem you describe?
> >>
> >> I suspect that should be fixed by commit 33814341f22 ("drm/i915: d=
isable
> >> LVDS downclock by default") that got merged today.
> >>
> >> So try current -git.
> >>
> >> =A0 =A0 =A0 =A0 =A0 =A0 =A0 Linus
> >
> >
> > Tested with 6ccf80eb15ccaca4d3f1ab5162b9ded5eecd9971, still get
> > the flickering effect. so 33814341f22 does not seem to help.
>=20
> Yeah, me too which is why I am doing a git bisect here. What's strang=
e
> about it is that the first bisection point seems to suggest that the
> regression happened _before_ the DRM merge to 2.6.33-rc1. I guess it'=
s
> possible that the bug is already in 2.6.32 but I've yet to see the
> flickering effect. Oh well, back to bisect...
>=20
>                         Pekka

on which side of the merge? linus or drm?=20
i.e. it is to be expected to be before the merge, (but on the drm side)
so don't get confused... or did i misunderstood the situation?

