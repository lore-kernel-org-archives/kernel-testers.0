From: Yves-Alexis Perez <corsac-8fiUuRrzOP0dnm+yROfE0A@public.gmane.org>
Subject: Re: [Bug #12152] Huge wakeups number from i1915
Date: Mon, 08 Dec 2008 07:32:49 +0100
Message-ID: <1228717969.9677.9.camel@hidalgo>
References: <6VnlupFpCsN.A.2rE.MsEPJB@chimera>
	 <07Xes05z25M.A.VtF.ksEPJB@chimera> <20081207145203.0f998d5b@infradead.org>
	 <200812072352.07151.rjw@sisk.pl>  <20081207151203.46c01a0d@infradead.org>
	 <1228717448.9677.3.camel@hidalgo>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1; protocol="application/pgp-signature"; boundary="=-N7OvyR/HkP2IoUFv5dAc"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1228717448.9677.3.camel@hidalgo>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: Arjan van de Ven <arjan-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>


--=-N7OvyR/HkP2IoUFv5dAc
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On lun, 2008-12-08 at 07:24 +0100, Yves-Alexis Perez wrote:
> On dim, 2008-12-07 at 15:12 -0800, Arjan van de Ven wrote:
> >=20
> > > > at least in some of the cases where this has been seen the cause
> > is
> > > > the following:
> > > > The i915 DRM driver used to do polling for completion, busy
> > > > waiting. It moved to be interrupt driven, which is usually better
> > > > for power, but it will show up as more wakeups in powertop....
> > >=20
> > > IOW, this is not a regression?
> >=20
> > I don't know about this specifc case (not enough information) but for
> > the case I described it's not a regression. Going to interrupt driven
> > from busy waiting is an improvement not a regression :)
>=20
> Well, several thousand or more interrupts really seems like a
> regression :). But it seems that's the same thing as the =E2=80=9CIRQ
> spinning=E2=80=9D (there was a thread on dri-devel about that).
>=20
> It seems fixed with a patch from Matthew Garrett applied to
> drm-intel/for-airlied but I don't think this has been applied to Linus
> master.

And it seems the same thing as
https://bugs.freedesktop.org/show_bug.cgi?id=3D18609

Cheers,
--=20
Yves-Alexis

--=-N7OvyR/HkP2IoUFv5dAc
Content-Type: application/pgp-signature; name=signature.asc
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.9 (GNU/Linux)

iEYEABECAAYFAkk8v5EACgkQTUTAIMXAW65VPACgjy4sTQKfUdrovAB0Gl85du7e
upwAoLDQfHNRZBvuIgE7W5ZHmvxPS2Uj
=UzHe
-----END PGP SIGNATURE-----

--=-N7OvyR/HkP2IoUFv5dAc--
