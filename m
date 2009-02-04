From: Andrey Borzenkov <arvidjaar@mail.ru>
Subject: Re: [Bug #12606] fb_mmap: circular locking dependency on hibernation
Date: Wed, 4 Feb 2009 17:43:00 +0300
Message-ID: <200902041743.08010.arvidjaar@mail.ru>
References: <kkuKoQJIW-D.A.61C.auYiJB@chimera> <pWZw1SZjMCH.A.jNE.xuYiJB@chimera>
Mime-Version: 1.0
Content-Type: multipart/signed;
  boundary="nextPart4609451.9OHcauY7sL";
  protocol="application/pgp-signature";
  micalg=pgp-sha1
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754226AbZBDOn2@vger.kernel.org>
In-Reply-To: <pWZw1SZjMCH.A.jNE.xuYiJB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>

--nextPart4609451.9OHcauY7sL
Content-Type: text/plain;
  charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

On 4 of February 2009 13:24:06 Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.28.  Please verify if it still should be listed and let me
> know (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D12606
> Subject		: fb_mmap: circular locking dependency on hibernation
> Submitter	: Andrey Borzenkov <arvidjaar@mail.ru>
> Date		: 2009-01-27 18:37 (9 days old)
> References	: http://marc.info/?l=3Dlinux-kernel&m=3D123308162731408&w=3D4

for me it is fixed with
http://marc.info/?l=3Dlinux-kernel&m=3D123365581406194&w=3D2=20

--nextPart4609451.9OHcauY7sL
Content-Type: application/pgp-signature; name=signature.asc 
Content-Description: This is a digitally signed message part.

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.9 (GNU/Linux)

iEYEABECAAYFAkmJqXYACgkQR6LMutpd94yIigCfZQtVS9FxvYb4wxBcouQp4yIj
g8MAnjurXaxW9J7216qbny8NfgCMknan
=wUKV
-----END PGP SIGNATURE-----

--nextPart4609451.9OHcauY7sL--
