From: Christoph Thielecke <christoph.thielecke-Mmb7MZpHnFY@public.gmane.org>
Subject: Re: [Bug #14018] kernel freezes, inotify problem
Date: Wed, 9 Sep 2009 07:58:32 +0200
Message-ID: <200909090758.40514.christoph.thielecke@gmx.de>
References: <2ehA7xoGvXL.A.4PB.3eBpKB@chimera> <1252273078.27723.0.camel@dhcp231-106.rdu.redhat.com> <200909062351.02664.rjw@sisk.pl>
Reply-To: christoph.thielecke-Mmb7MZpHnFY@public.gmane.org
Mime-Version: 1.0
Content-Type: multipart/signed;
  boundary="nextPart2844453.UKP6nlZWuT";
  protocol="application/pgp-signature";
  micalg=pgp-sha1
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200909062351.02664.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Eric Paris <eparis-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Eric Paris <eparis-FjpueFixGhCM4zKIHC2jIg@public.gmane.org>

--nextPart2844453.UKP6nlZWuT
Content-Type: text/plain;
  charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

Hello,
> > > The following bug entry is on the current list of known regressions
> > > from 2.6.30.  Please verify if it still should be listed and let me
> > > know (either way).
> > >
> > >
> > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D14018
> > > Subject		: kernel freezes, inotify problem
> > > Submitter	: Christoph Thielecke <christoph.thielecke-Mmb7MZpHnFY@public.gmane.org>
> > > Date		: 2009-08-19 12:48 (19 days old)
> > > References	: http://marc.info/?l=3Dlinux-kernel&m=3D125068616818353&w=
=3D4
> > > Handled-By	: Eric Paris <eparis-FjpueFixGhCM4zKIHC2jIg@public.gmane.org>
> >
> > This should be marked as fixed.
>
> Yeah, I forgot to close it.  Thanks for the heads up.
Right, seems working fine (sorry for the delay I tested a while).


With best regards

Christoph
=2D-=20
Linux User Group Wernigerode
http://www.lug-wr.de/

--nextPart2844453.UKP6nlZWuT
Content-Type: application/pgp-signature; name=signature.asc 
Content-Description: This is a digitally signed message part.

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.9 (GNU/Linux)

iEYEABECAAYFAkqnRAsACgkQd9JRTD5SjRg8GQCeJCznPmVi9TGzGkOvEEI6G0YI
WxIAoKS1tBgCopLWM/WsfvN9w+JIieDS
=zgyW
-----END PGP SIGNATURE-----

--nextPart2844453.UKP6nlZWuT--
