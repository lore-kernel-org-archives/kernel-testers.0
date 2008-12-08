From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #12152] Huge wakeups number from i1915
Date: Mon, 8 Dec 2008 08:28:07 +0100
Message-ID: <200812080828.07683.rjw@sisk.pl>
References: <6VnlupFpCsN.A.2rE.MsEPJB@chimera> <20081207151203.46c01a0d@infradead.org> <1228717448.9677.3.camel@hidalgo>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1228717448.9677.3.camel@hidalgo>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Yves-Alexis Perez <corsac-8fiUuRrzOP0dnm+yROfE0A@public.gmane.org>
Cc: Arjan van de Ven <arjan-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Matthew Garrett <mjg59-1xO5oi07KQx4cg9Nei1l7Q@public.gmane.org>

On Monday, 8 of December 2008, Yves-Alexis Perez wrote:
> On dim, 2008-12-07 at 15:12 -0800, Arjan van de Ven wrote:
> >=20
> > > > at least in some of the cases where this has been seen the caus=
e
> > is
> > > > the following:
> > > > The i915 DRM driver used to do polling for completion, busy
> > > > waiting. It moved to be interrupt driven, which is usually bett=
er
> > > > for power, but it will show up as more wakeups in powertop....
> > >=20
> > > IOW, this is not a regression?
> >=20
> > I don't know about this specifc case (not enough information) but f=
or
> > the case I described it's not a regression. Going to interrupt driv=
en
> > from busy waiting is an improvement not a regression :)
>=20
> Well, several thousand or more interrupts really seems like a
> regression :). But it seems that's the same thing as the =E2=80=9CIRQ
> spinning=E2=80=9D (there was a thread on dri-devel about that).
>=20
> It seems fixed with a patch from Matthew Garrett applied to
> drm-intel/for-airlied but I don't think this has been applied to Linu=
s
> master.

Any pointers to the patch, please?

Rafael
