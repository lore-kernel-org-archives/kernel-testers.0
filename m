From: Scott James Remnant <scott-GeWIH/nMZzLQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #13845] inotify regression, missing events
Date: Wed, 29 Jul 2009 13:04:20 +0100
Message-ID: <1248869060.23840.10.camel@quest>
References: <Jya1GruKQpD.A.16.2GObKB@chimera>
	 <3zAHs5O6maO.A.ATB.-GObKB@chimera> <1248683738.22308.0.camel@quest>
	 <200907280052.44653.rjw@sisk.pl>  <1248812102.15671.0.camel@localhost>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature"; boundary="=-NgBWNOL97O7ujlzklrCb"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1248812102.15671.0.camel@localhost>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: Eric Paris <eparis-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>


--=-NgBWNOL97O7ujlzklrCb
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Tue, 2009-07-28 at 16:15 -0400, Eric Paris wrote:

> On Tue, 2009-07-28 at 00:52 +0200, Rafael J. Wysocki wrote:
> > On Monday 27 July 2009, Scott James Remnant wrote:
> > > On Sun, 2009-07-26 at 22:28 +0200, Rafael J. Wysocki wrote:
> > >=20
> > > > This message has been generated automatically as a part of a report
> > > > of recent regressions.
> > > >=20
> > > > The following bug entry is on the current list of known regressions
> > > > from 2.6.30.  Please verify if it still should be listed and let me=
 know
> > > > (either way).
> > > >=20
> > > >=20
> > > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D13845
> > > > Subject		: inotify regression, missing events
> > > > Submitter	: Scott James Remnant <scott-GeWIH/nMZzLQT0dZR+AlfA@public.gmane.org>
> > > > Date		: 2009-07-11 16:02 (16 days old)
> > > > References	: http://marc.info/?l=3Dlinux-kernel&m=3D124732816314881=
&w=3D4
> > > > Handled-By	: Eric Paris <eparis-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
> > > >=20
> > > This patch hasn't found its way into Linus' tree yet, so it's definit=
ely
> > > still an issue and should be listed.
> >=20
> > Thanks for the update
>=20
> Looks like it was pulled into Linus's tree last night if you would like
> to test and verify.
>=20
Tested and verified, good work!

Thanks,

Scott
--=20
Scott James Remnant
scott-GeWIH/nMZzLQT0dZR+AlfA@public.gmane.org

--=-NgBWNOL97O7ujlzklrCb
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.9 (GNU/Linux)

iEYEABECAAYFAkpwOsQACgkQSnQiFMl4yK7sxgCdH0q6Usn3wYpConvBUUsv5DfV
ggYAn3XOQspHdY2ebOdkbDq75q1c60/A
=xlzn
-----END PGP SIGNATURE-----

--=-NgBWNOL97O7ujlzklrCb--
