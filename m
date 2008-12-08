From: Yves-Alexis Perez <corsac-8fiUuRrzOP0dnm+yROfE0A@public.gmane.org>
Subject: Re: [Bug #12152] Huge wakeups number from i1915
Date: Mon, 08 Dec 2008 08:32:41 +0100
Message-ID: <1228721561.9677.18.camel@hidalgo>
References: <6VnlupFpCsN.A.2rE.MsEPJB@chimera>
	 <20081207151203.46c01a0d@infradead.org> <1228717448.9677.3.camel@hidalgo>
	 <200812080828.07683.rjw@sisk.pl>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1; protocol="application/pgp-signature"; boundary="=-TwdT5fByN8yQ41Zn3B6a"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200812080828.07683.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Arjan van de Ven <arjan-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Matthew Garrett <mjg59-1xO5oi07KQx4cg9Nei1l7Q@public.gmane.org>


--=-TwdT5fByN8yQ41Zn3B6a
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

On lun, 2008-12-08 at 08:28 +0100, Rafael J. Wysocki wrote:
> Any pointers to the patch, please?

The patch I had success with was the one enabling MSI on 965. You can
find it there:

http://marc.info/?l=3Ddri-devel&m=3D122843874524733&w=3D2

Not sure if it's =E2=80=9Cthe one=E2=80=9D really usable, but at least it f=
ixes the
problem for now.

Cheers,
--=20
Yves-Alexis

--=-TwdT5fByN8yQ41Zn3B6a
Content-Type: application/pgp-signature; name=signature.asc
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.9 (GNU/Linux)

iEYEABECAAYFAkk8zZkACgkQTUTAIMXAW677LwCePCGfJO4T6hMLs9lw8FtYTwkw
xbkAn09mjeBuoljT8aFoh+cRzqfNtQiX
=wCHH
-----END PGP SIGNATURE-----

--=-TwdT5fByN8yQ41Zn3B6a--
