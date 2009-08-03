From: Harald Dunkel <harald.dunkel-zqRNUXuvxA0b1SvskN2V4Q@public.gmane.org>
Subject: Re: [Bug #13374] reiserfs blocked for more than 120secs
Date: Mon, 03 Aug 2009 19:43:15 +0200
Message-ID: <4A7721B3.3060300@t-online.de>
References: <upey9ZSfnaF.A.-oE.rpgdKB@chimera>	 <7ixSg7D88bK.A.guG.mrgdKB@chimera> <c62985530908021801r2e302dfel86f69f62143cabc0@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig60B127A1A9B5027D02397445"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <c62985530908021801r2e302dfel86f69f62143cabc0-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: =?ISO-8859-1?Q?Fr=E9d=E9ric_Weisbecker?= <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Jeff Mahoney <jeffm-IBi9RG/b67k@public.gmane.org>

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig60B127A1A9B5027D02397445
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Fr=E9d=E9ric Weisbecker wrote:
> Harald,
>=20
> Does it still happen with 2.6.31-rc5 ?
>=20

Using 2.6.30.x kernels (x>=3D0) I haven't seen this problem anymore.
If it is still in, then it seems to be very hard to reproduce.

As suggested I am moving to 2.6.31-rc5. I will mail immediately if
the problem comes back.


Regards

Harri



--------------enig60B127A1A9B5027D02397445
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.9 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iEYEARECAAYFAkp3IbgACgkQUTlbRTxpHjemEQCbBLiH7fQiOz+DhP2kBLNlBLwX
GRgAmQHrFQ/qCkBYaxSLYaK6ecPKGopW
=RpkA
-----END PGP SIGNATURE-----

--------------enig60B127A1A9B5027D02397445--
