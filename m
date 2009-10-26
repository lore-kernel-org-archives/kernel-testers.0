From: Tilman Schmidt <tilman@imap.cc>
Subject: Re: [Bug #14477] possible circular locking dependency in ISDN PPP
Date: Mon, 26 Oct 2009 23:00:48 +0100
Message-ID: <4AE61C10.5030409@imap.cc>
References: <Sj-rRjx6TwF.A.djE.vqe5KB@chimera> <6dRYo8ss7vL.A.9NF.9qe5KB@chimera>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig076DA8E40535481A6C5FC38C"
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1753731AbZJZWA6@vger.kernel.org>
In-Reply-To: <6dRYo8ss7vL.A.9NF.9qe5KB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig076DA8E40535481A6C5FC38C
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Rafael J. Wysocki schrieb:
> This message has been generated automatically as a part of a report
> of recent regressions.
>=20
> The following bug entry is on the current list of known regressions
> from 2.6.31.  Please verify if it still should be listed and let me kno=
w
> (either way).
>=20
>=20
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D14477
> Subject		: possible circular locking dependency in ISDN PPP
> Submitter	: Tilman Schmidt <tilman@imap.cc>
> Date		: 2009-10-18 22:16 (9 days old)
> References	: http://marc.info/?l=3Dlinux-kernel&m=3D125590423416087&w=3D=
4

Fixed by

http://git.kernel.org/?p=3Dlinux/kernel/git/davem/net-2.6.git;a=3Dcommit;=
h=3D2bd9af046fdc10703b266b0f3b25423f0b7d703e

Thanks,
Tilman

--=20
Tilman Schmidt                    E-Mail: tilman@imap.cc
Bonn, Germany
Diese Nachricht besteht zu 100% aus wiederverwerteten Bits.
Unge=C3=B6ffnet mindestens haltbar bis: (siehe R=C3=BCckseite)


--------------enig076DA8E40535481A6C5FC38C
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.4-svn0 (GNU/Linux)
Comment: Using GnuPG with SUSE - http://enigmail.mozdev.org

iD8DBQFK5hwaQ3+did9BuFsRAqGmAJ9GHHUb/HQtcNMApoSI4XBjKYiFuQCcC5l4
bts8dXJ/s37kt55FZe5bcXo=
=DUSg
-----END PGP SIGNATURE-----

--------------enig076DA8E40535481A6C5FC38C--
