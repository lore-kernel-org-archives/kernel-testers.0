From: Matthew Garrett <mjg59-1xO5oi07KQx4cg9Nei1l7Q@public.gmane.org>
Subject: Re: [Bug #12152] Huge wakeups number from i1915
Date: Mon, 8 Dec 2008 12:59:38 +0000
Message-ID: <20081208125938.GB31976@srcf.ucam.org>
References: <6VnlupFpCsN.A.2rE.MsEPJB@chimera> <20081207151203.46c01a0d@infradead.org> <1228717448.9677.3.camel@hidalgo> <200812080828.07683.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <200812080828.07683.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Yves-Alexis Perez <corsac-8fiUuRrzOP0dnm+yROfE0A@public.gmane.org>, Arjan van de Ven <arjan-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Mon, Dec 08, 2008 at 08:28:07AM +0100, Rafael J. Wysocki wrote:
> On Monday, 8 of December 2008, Yves-Alexis Perez wrote:
> > On dim, 2008-12-07 at 15:12 -0800, Arjan van de Ven wrote:
> > >=20
> > > > > at least in some of the cases where this has been seen the ca=
use
> > > is
> > > > > the following:
> > > > > The i915 DRM driver used to do polling for completion, busy
> > > > > waiting. It moved to be interrupt driven, which is usually be=
tter
> > > > > for power, but it will show up as more wakeups in powertop...=
=2E
> > > >=20
> > > > IOW, this is not a regression?
> > >=20
> > > I don't know about this specifc case (not enough information) but=
 for
> > > the case I described it's not a regression. Going to interrupt dr=
iven
> > > from busy waiting is an improvement not a regression :)
> >=20
> > Well, several thousand or more interrupts really seems like a
> > regression :). But it seems that's the same thing as the =E2=80=9CI=
RQ
> > spinning=E2=80=9D (there was a thread on dri-devel about that).
> >=20
> > It seems fixed with a patch from Matthew Garrett applied to
> > drm-intel/for-airlied but I don't think this has been applied to Li=
nus
> > master.
>=20
> Any pointers to the patch, please?

Doesn't ring any bells for me...

--=20
Matthew Garrett | mjg59-1xO5oi07KQx4cg9Nei1l7Q@public.gmane.org
