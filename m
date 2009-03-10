From: Eric Anholt <eric@anholt.net>
Subject: Re: [Bug #12806] i915 broken STR
Date: Mon, 09 Mar 2009 19:23:52 -0700
Message-ID: <1236651832.10190.20.camel@gaiman>
References: <KiHv0irKPzE.A.l3.hUarJB@chimera>
	 <SLCXkuHtxAO.A.QeB.sUarJB@chimera> <1236405187.7409.2.camel@brick>
	 <200903072228.47358.rjw@sisk.pl>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1; protocol="application/pgp-signature"; boundary="=-oLmvj+c538rHKWMeI61D"
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754224AbZCJCYV@vger.kernel.org>
In-Reply-To: <200903072228.47358.rjw@sisk.pl>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Harvey Harrison <harvey.harrison@gmail.com>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Dave Airlie <airlied@redhat.com>, Jesse Barnes <jbarnes@virtuousgeek.org>


--=-oLmvj+c538rHKWMeI61D
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Sat, 2009-03-07 at 22:28 +0100, Rafael J. Wysocki wrote:
> On Saturday 07 March 2009, Harvey Harrison wrote:
> > On Tue, 2009-03-03 at 20:25 +0100, Rafael J. Wysocki wrote:
> > > This message has been generated automatically as a part of a report
> > > of recent regressions.
> > >=20
> > > The following bug entry is on the current list of known regressions
> > > from 2.6.28.  Please verify if it still should be listed and let me k=
now
> > > (either way).
> > >=20
> > >=20
> > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D12806
> > > Subject		: i915 broken STR
> > > Submitter	: Harvey Harrison <harvey.harrison@gmail.com>
> > > Date		: 2009-02-28 4:20 (4 days old)
> > > First-Bad-Commit: http://git.kernel.org/?p=3Dlinux/kernel/git/torvald=
s/linux-2.6.git;a=3Dcommit;h=3D5669fcacc58bf3a7386057addffd280d75380858
> > > References	: http://marc.info/?l=3Dlinux-kernel&m=3D123579487801064&w=
=3D4
> > >=20
> > >=20
> >=20
> > This looks to have been a case of old-userspace..upgrading to
> > xorg-intel-video 2.6.1 (ubuntu Jaunty Alpha5) fixes STR here.
>=20
> Well, thanks, but I'm not really sure if this is a good news.
>=20
> Jesse, Eric, does it mean we now break resume on anything earlier than 2.=
6.1
> on the Harvey's hardware?

There's not much information (dmesg, Xorg.0.log) with this bug -- I'm
guessing he's using KMS, given that that commit was where the problems
started.  If so, yes, you really do need good userland for KMS to work.

--=20
Eric Anholt
eric@anholt.net                         eric.anholt@intel.com



--=-oLmvj+c538rHKWMeI61D
Content-Type: application/pgp-signature; name=signature.asc
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.9 (GNU/Linux)

iEYEABECAAYFAkm1zzgACgkQHUdvYGzw6vdFbQCgkFO/IraVFg3cqoZxBp2sCL92
lX8An2tURqrVOuxy7TieG7WKjTKC1No6
=HC7T
-----END PGP SIGNATURE-----

--=-oLmvj+c538rHKWMeI61D--
