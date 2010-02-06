From: Soeren Sonnenburg <sonne-8fiUuRrzOP0dnm+yROfE0A@public.gmane.org>
Subject: Re: [Bug #15043] Display goes off with i915.powersave=1 after
 suspend-resume
Date: Sat, 06 Feb 2010 06:53:55 +0100
Message-ID: <1265435635.31082.1.camel@no>
References: <vZZJKzCUn4G.A.CPB.F7hZLB@chimera>
	 <d3IDKWHT5gE.A.-nC.G8hZLB@chimera> <1265314137.10203.0.camel@no>
	 <201002042142.02127.rjw@sisk.pl>  <20100205112952.01affddb@jbarnes-piketon>
	 <1265433062.26151.1.camel@no>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature"; boundary="=-Jm65NCNnjNEajrEO7VYD"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1265433062.26151.1.camel@no>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, dri-devel-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org


--=-Jm65NCNnjNEajrEO7VYD
Content-Type: text/plain; charset="ISO-8859-15"
Content-Transfer-Encoding: quoted-printable

On Sat, 2010-02-06 at 06:11 +0100, Soeren Sonnenburg wrote:
> On Fri, 2010-02-05 at 11:29 -0800, Jesse Barnes wrote:
> > On Thu, 4 Feb 2010 21:42:02 +0100
> > "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> >=20
> > > On Thursday 04 February 2010, Soeren Sonnenburg wrote:
> > > > On Mon, 2010-02-01 at 01:22 +0100, Rafael J. Wysocki wrote:
> > > > > This message has been generated automatically as a part of a
> > > > > report of recent regressions.
> > > > >=20
> > > > > The following bug entry is on the current list of known
> > > > > regressions from 2.6.32.  Please verify if it still should be
> > > > > listed and let me know (either way).
> > > > >=20
> > > > >=20
> > > > > Bug-Entry	:
> > > > > http://bugzilla.kernel.org/show_bug.cgi?id=3D15043
> > > > > Subject		: Display goes off with i915.powersave=3D1
> > > > > after suspend-resume Submitter	: Soeren Sonnenburg
> > > > > <sonne-8fiUuRrzOP0dnm+yROfE0A@public.gmane.org> Date		: 2010-01-10 20:09 (22
> > > > > days old) References	:
> > > > > http://marc.info/?l=3Dlinux-kernel&m=3D126315457519505&w=3D4
> > > >=20
> > > > yes still exists in current git.
> > >=20
> > > Thanks for the update.
> >=20
> > Just updated the corresponding FDO bug
> > (https://bugs.freedesktop.org/show_bug.cgi?id=3D24314).  There are some
> > hw bugs related to FBC handling on 945GM though, so we may have to
> > disable it on some machines.
>=20
> FYI: With the patch from #14897 it was working for the last day and a
> half at least...

Just after I wrote that email it was happening again. So I take that
back. Flickering and display -> off just happened with that patch.

Soeren
--=20
For the one fact about the future of which we can be certain is that it
will be utterly fantastic. -- Arthur C. Clarke, 1962

--=-Jm65NCNnjNEajrEO7VYD
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)

iQIcBAABAgAGBQJLbQPtAAoJEH82z1Wqh6p3cD4QANMyPIF0Vu6GG13ls7O1BHiV
WCEf8ubF8sums+/0UmO5y4+FOFo1e2/qYu+3E2oArKlyZKqWPqZTCFb1if64I9Xc
0iS3BJaT8Vx2aJS8u818cbSzpOueYBPi85aLt3l11BHNO9lzC/3LSTYVOqBprV7f
hopwHvDvtH2kpL28o5/p5g/Ze38x5ksYNZj454BTtGvOiLBoEG2i2T3c3VrhrWaW
5OvxLtuMiI10woHfXqkTDdck5w4PZaxj2H35qaMcu7A5DkQgSL8jUMz9j6C3EWjk
UGLuRiuFSZBUu2ZT3LfhnRu4PXXA+1draCz08OJbWVRvG7D1+q9J9IDAPjd0dvov
Ywzn2uwjevPSZgbQGVRmhHOVyVwycyeku1ord19NWBaaLl8F8L5zFdU2Z0vDqc3D
dRveYPdLK3Yxf40/OMu0d2zZhfim142UxhpphJ5OeSMzYlSgpLfNnVjnVl41SPls
DF7mgdWXGRvfpRwyrChNM8dJlVfXXalgFT5DuDBN4WbhvJT2KC1XfH/kVarRd65q
NgsyTUav2FZFGGDSbxiSZ3dG3BFKEQj/mZuvLZLE/7UcK1mq14ZGnSaP6LwuBAgG
CUYtNSPB94DacGyH6CPN/gytTCdToAQ2LAQiC0f0M7+HdRAsqh5KGlkDYygW1Cmx
s3my0Z7eMlEngOsVzovo
=HaoE
-----END PGP SIGNATURE-----

--=-Jm65NCNnjNEajrEO7VYD--
