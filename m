From: Wolfram Sang <w.sang@pengutronix.de>
Subject: Re: [Bug #15494] BUG: key ffff88013d4f4c70 not in .data! when
	loading microcode.ko
Date: Mon, 22 Mar 2010 00:17:49 +0100
Message-ID: <20100321231749.GA8441@pengutronix.de>
References: <QQGfxbJf48H.A.NFD.uNopLB@chimera> <hTwaxgnIZ2O.A.kfD.NOopLB@chimera>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="Dxnq1zWXvFF0Q93v"
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <hTwaxgnIZ2O.A.kfD.NOopLB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Alex Villacis Lasso <avillaci@ceibo.fiec.espol.edu.ec>


--Dxnq1zWXvFF0Q93v
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sun, Mar 21, 2010 at 09:30:51PM +0100, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.32 and 2.6.33.
>=20
> The following bug entry is on the current list of known regressions
> introduced between 2.6.32 and 2.6.33.  Please verify if it still should
> be listed and let the tracking team know (either way).

This is actually a regression from 2.6.33. It should haven been fixed
in rc2 with e1955ca0ee55286cbc65a8ed7471d540ae83dac8.

Regards,

   Wolfram

--=20
Pengutronix e.K.                           | Wolfram Sang                |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

--Dxnq1zWXvFF0Q93v
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.9 (GNU/Linux)

iEYEARECAAYFAkumqR0ACgkQD27XaX1/VRuMdgCdFUnnEQvRxeFKxQLGVACaeDn4
JuYAni5pgqSVQQcmB5VaNkn8vFKKqf1N
=vLBm
-----END PGP SIGNATURE-----

--Dxnq1zWXvFF0Q93v--
