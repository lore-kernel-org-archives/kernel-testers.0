From: Tilman Schmidt <tilman-ZTO5kqT2PaM@public.gmane.org>
Subject: Re: [Bug #11833] 2.6.27-git8 compile error in drivers/mfd/wm8350-core.c
Date: Sun, 26 Oct 2008 01:02:48 +0200
Message-ID: <4903A598.7020706@imap.cc>
References: <nw2Y6lk-0lG.A.VUB.RV5AJB@chimera> <t1C3RWL0r7M.A.rkC.xV5AJB@chimera>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig2231BCA7B5E660B151A62462"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <t1C3RWL0r7M.A.rkC.xV5AJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig2231BCA7B5E660B151A62462
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Rafael J. Wysocki schrieb:
> The following bug entry is on the current list of known regressions
> from 2.6.27.  Please verify if it still should be listed and let me kno=
w
> (either way).
>=20
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11833
> Subject		: 2.6.27-git8 compile error in drivers/mfd/wm8350-core.c
> Submitter	: Tilman Schmidt <tilman-ZTO5kqT2PaM@public.gmane.org>
> Date		: 2008-10-19 18:17 (7 days old)
> References	: http://marc.info/?l=3Dlinux-kernel&m=3D122444027920472&w=3D=
4

Fixed in 2.6.28-rc1 by commit c7752351c34d852ca0da697f812534101eecd82e:
mfd: Don't use NO_IRQ in WM8350

Thanks,
Tilman


--------------enig2231BCA7B5E660B151A62462
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.4-svn0 (GNU/Linux)
Comment: Using GnuPG with SUSE - http://enigmail.mozdev.org

iD8DBQFJA6WiQ3+did9BuFsRArJHAJ9tMZ730OzWIFp4y81SZXLOQRnG0gCfXmRQ
7ZHBg3R5D0w0fNc6BKgPWWA=
=2f5c
-----END PGP SIGNATURE-----

--------------enig2231BCA7B5E660B151A62462--
