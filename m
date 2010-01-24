From: Nigel Kukard <nkukard-pYARk8SH/DY@public.gmane.org>
Subject: Re: [Bug #15132] OOPS's with large initramfs
Date: Sun, 24 Jan 2010 22:55:01 +0000
Message-ID: <4B5CCFC5.1090002@lbsd.net>
References: <md-TZL3UUvL.A.FiE.xJMXLB@chimera> <hE3x9c-4KZM.A.xDF.8JMXLB@chimera>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig3FA52EE8BCCF4DFA703FCAA9"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <hE3x9c-4KZM.A.xDF.8JMXLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig3FA52EE8BCCF4DFA703FCAA9
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Verified. I have tested this as far back as 2.6.30 with the same problem
with "very" large initramfs's.

> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.32.  Please verify if it still should be listed and let me kno=
w
> (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D15132
> Subject		: OOPS's with large initramfs
> Submitter	: Nigel Kukard <nkukard-pYARk8SH/DY@public.gmane.org>
> Date		: 2010-01-16 11:12 (9 days old)
> References	: http://marc.info/?l=3Dlinux-kernel&m=3D126364100321603&w=3D=
4
>
>
>  =20


--=20
Regards
Nigel Kukard, PhD CompSc
Linux Based Systems Design (Pty) Ltd

Support: 086 747 7600 (premium 24/7/365)
Fax: 086 601 7884

Quote: The best language to use is the language that was designed for
what you want to use it for.

*** The attachment to my email signature.asc is a digital PGP
signature, if your mail client supports digital signatures it will
allow you to verify I am the sender of this email and that it has not
been tampered with along the way ***



--------------enig3FA52EE8BCCF4DFA703FCAA9
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.12 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org/

iEYEARECAAYFAktcz8UACgkQKoUGSidwLE7JtwCgkfRpB78U0i0s7MN7OTjdR0Te
J4IAn3xbpDdglEiKyGHO9TOa5+3G298X
=+UJ9
-----END PGP SIGNATURE-----

--------------enig3FA52EE8BCCF4DFA703FCAA9--
