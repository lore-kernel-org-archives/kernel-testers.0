From: Yves-Alexis Perez <corsac-8fiUuRrzOP0dnm+yROfE0A@public.gmane.org>
Subject: Re: [Bug #12152] Huge wakeups number from i1915
Date: Mon, 08 Dec 2008 07:24:08 +0100
Message-ID: <1228717448.9677.3.camel@hidalgo>
References: <6VnlupFpCsN.A.2rE.MsEPJB@chimera>
	 <07Xes05z25M.A.VtF.ksEPJB@chimera> <20081207145203.0f998d5b@infradead.org>
	 <200812072352.07151.rjw@sisk.pl>  <20081207151203.46c01a0d@infradead.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1; protocol="application/pgp-signature"; boundary="=-gfCYkbYSEa3tvhD/BZvV"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20081207151203.46c01a0d-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: Arjan van de Ven <arjan-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>


--=-gfCYkbYSEa3tvhD/BZvV
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On dim, 2008-12-07 at 15:12 -0800, Arjan van de Ven wrote:
>=20
> > > at least in some of the cases where this has been seen the cause
> is
> > > the following:
> > > The i915 DRM driver used to do polling for completion, busy
> > > waiting. It moved to be interrupt driven, which is usually better
> > > for power, but it will show up as more wakeups in powertop....
> >=20
> > IOW, this is not a regression?
>=20
> I don't know about this specifc case (not enough information) but for
> the case I described it's not a regression. Going to interrupt driven
> from busy waiting is an improvement not a regression :)

Well, several thousand or more interrupts really seems like a
regression :). But it seems that's the same thing as the =E2=80=9CIRQ
spinning=E2=80=9D (there was a thread on dri-devel about that).

It seems fixed with a patch from Matthew Garrett applied to
drm-intel/for-airlied but I don't think this has been applied to Linus
master.

Cheers,
--=20
Yves-Alexis

--=-gfCYkbYSEa3tvhD/BZvV
Content-Type: application/pgp-signature; name=signature.asc
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.9 (GNU/Linux)

iEYEABECAAYFAkk8vYEACgkQTUTAIMXAW64vDwCgh1LNVqPipycZnKo+/KVfU+Z0
aA0An1yBDT5SXJHCgc9uo/F+F3O8eJZZ
=SR7r
-----END PGP SIGNATURE-----

--=-gfCYkbYSEa3tvhD/BZvV--
