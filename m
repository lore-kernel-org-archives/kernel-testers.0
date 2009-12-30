From: Malte =?UTF-8?B?U2NocsO2ZGVy?= <maltesch-Mmb7MZpHnFY@public.gmane.org>
Subject: Re: [Bug #14889] System wakeup by time not working anymore
Date: Wed, 30 Dec 2009 09:56:07 +0100
Message-ID: <20091230095607.7229baf4@highlander.home.lan>
References: <oBElxfTZdhL.A.bx.-vhOLB@chimera>
	<srmJ8vMxKPH.A.BaC.ZwhOLB@chimera>
	<87k4w5u1fr.fsf@devron.myhome.or.jp>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=PGP-SHA1;
 boundary="Sig_/1ShfqTKnzAlgstQpc0jatGp"; protocol="application/pgp-signature"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <87k4w5u1fr.fsf-x/W9pkDDSe1TgC2z9Sl/nXf5DAMn2ifp@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>, David =?UTF-8?B?SMOkcmRlbWFu?= <david-0WFrdVpeebksCylrc8G9yg@public.gmane.org>, Len Brown <lenb-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>

--Sig_/1ShfqTKnzAlgstQpc0jatGp
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, 30 Dec 2009 02:36:56 +0900
OGAWA Hirofumi <hirofumi-UIVanBePwB70ZhReMnHkpc8NsWr+9BEh@public.gmane.org> wrote:

> "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> writes:
>=20
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.31 and 2.6.32.
> >
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.31 and 2.6.32.  Please verify if it still should
> > be listed and let me know (either way).
> >
> >
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D14889
> > Subject		: System wakeup by time not working anymore
> > Submitter	: Malte Schr=C3=B6der <maltesch-Mmb7MZpHnFY@public.gmane.org>
> > Date		: 2009-12-03 18:06 (27 days old)
> > First-Bad-Commit: http://git.kernel.org/?p=3Dlinux/kernel/git/torvalds/=
linux-2.6.git;a=3Dcommit;h=3Dabd6633c67925f90775bb74755f9c547e30f1f20
> > References	: http://marc.info/?l=3Dlinux-kernel&m=3D125986362631900&w=
=3D4
>=20
> Specified commit would break the pnp driver which is using
> driver->shutdown.
>=20
> Could you test this (untested) patch?

I tried to reproduce the problem, it looks like it is working now :)



--=20
---------------------------------------
Malte Schr=C3=B6der
MalteSch-Mmb7MZpHnFY@public.gmane.org
ICQ# 68121508
---------------------------------------


--Sig_/1ShfqTKnzAlgstQpc0jatGp
Content-Type: application/pgp-signature; name=signature.asc
Content-Disposition: attachment; filename=signature.asc

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)

iEYEARECAAYFAks7FacACgkQ4q3E2oMjYtXlLgCdF4SFjIdryZbFV6aJ55lf5y6q
I34An02Vrumsj195KVZoEAs6WsAnozKo
=odZa
-----END PGP SIGNATURE-----

--Sig_/1ShfqTKnzAlgstQpc0jatGp--
