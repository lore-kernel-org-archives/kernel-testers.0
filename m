From: Eric Anholt <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>
Subject: Re: [Bug #12806] i915 broken STR
Date: Tue, 10 Mar 2009 10:32:28 -0700
Message-ID: <1236706348.10190.65.camel@gaiman>
References: <KiHv0irKPzE.A.l3.hUarJB@chimera>
	 <200903072228.47358.rjw@sisk.pl> <1236651832.10190.20.camel@gaiman>
	 <200903101456.48444.rjw@sisk.pl>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1; protocol="application/pgp-signature"; boundary="=-zyLXdcwe2xV8U98OmqfH"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200903101456.48444.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Harvey Harrison <harvey.harrison-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dave Airlie <airlied-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>


--=-zyLXdcwe2xV8U98OmqfH
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Tue, 2009-03-10 at 14:56 +0100, Rafael J. Wysocki wrote:
> On Tuesday 10 March 2009, Eric Anholt wrote:
> > On Sat, 2009-03-07 at 22:28 +0100, Rafael J. Wysocki wrote:
> > > On Saturday 07 March 2009, Harvey Harrison wrote:
> > > > On Tue, 2009-03-03 at 20:25 +0100, Rafael J. Wysocki wrote:
> > > > > This message has been generated automatically as a part of a repo=
rt
> > > > > of recent regressions.
> > > > >=20
> > > > > The following bug entry is on the current list of known regressio=
ns
> > > > > from 2.6.28.  Please verify if it still should be listed and let =
me know
> > > > > (either way).
> > > > >=20
> > > > >=20
> > > > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D12806
> > > > > Subject		: i915 broken STR
> > > > > Submitter	: Harvey Harrison <harvey.harrison-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > > > > Date		: 2009-02-28 4:20 (4 days old)
> > > > > First-Bad-Commit: http://git.kernel.org/?p=3Dlinux/kernel/git/tor=
valds/linux-2.6.git;a=3Dcommit;h=3D5669fcacc58bf3a7386057addffd280d75380858
> > > > > References	: http://marc.info/?l=3Dlinux-kernel&m=3D1235794878010=
64&w=3D4
> > > > >=20
> > > > >=20
> > > >=20
> > > > This looks to have been a case of old-userspace..upgrading to
> > > > xorg-intel-video 2.6.1 (ubuntu Jaunty Alpha5) fixes STR here.
> > >=20
> > > Well, thanks, but I'm not really sure if this is a good news.
> > >=20
> > > Jesse, Eric, does it mean we now break resume on anything earlier tha=
n 2.6.1
> > > on the Harvey's hardware?
> >=20
> > There's not much information (dmesg, Xorg.0.log) with this bug -- I'm
> > guessing he's using KMS, given that that commit was where the problems
> > started.  If so, yes, you really do need good userland for KMS to work.
>=20
> BTW, Is suspend generally supposed to work with KMS and the 2.6.1 (or lat=
er) X
> driver?

I pulled a giant pile of KMS bugfixes into 2.6.2, so I'm not sure about
2.6.1.

We've still got some work to do with making our suspend/resume path
really complete for KMS.  We're missing some register setup that UMS
does, so behavior can be a bit random.  The current plan is to switch to
using the KMS modeset paths for resume, so we hopefully have reliable
(or at least consistent) mode setting behavior, and then fill those
remaining register writes in around it.  Basically, a separate
suspend/resume path for KMS, when we have full control of the device.

--=20
Eric Anholt
eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org                         eric.anholt-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org



--=-zyLXdcwe2xV8U98OmqfH
Content-Type: application/pgp-signature; name=signature.asc
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.9 (GNU/Linux)

iEYEABECAAYFAkm2pCwACgkQHUdvYGzw6vcHuwCfQuIEjQk/sJCwLtvkL5K5SBMp
/30An3IpC4q01nOh0Vq4C4wasjNq9Kv5
=Nk09
-----END PGP SIGNATURE-----

--=-zyLXdcwe2xV8U98OmqfH--
