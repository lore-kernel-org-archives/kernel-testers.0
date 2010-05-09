From: Michael Ellerman <michael-Gsx/Oe8HsFggBc27wqDAHg@public.gmane.org>
Subject: Re: [Bug #15589] 2.6.34-rc1: Badness at fs/proc/generic.c:316
Date: Mon, 10 May 2010 09:34:42 +1000
Message-ID: <1273448082.1431.1.camel@concordia>
References: <10aqDnTJcLO.A.mLE.48y5LB@chimera>
	 <HqroMXsT-CJ.A.DnG.m_y5LB@chimera>
	 <alpine.DEB.2.01.1005091519130.3067@bogon.housecafe.de>
Reply-To: michael-Gsx/Oe8HsFggBc27wqDAHg@public.gmane.org
Mime-Version: 1.0
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature"; boundary="=-Cx+W6AuJMtKF04V8Q+IB"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.DEB.2.01.1005091519130.3067-uKsf7x9sgtqQ/Pez2Lbyp4QuADTiUCJX@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: Christian Kujau <lists-AanptEQQ3TL9uQeqpI+JUg@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, adobriyan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, schwab-Td1EMuHUCqxL1ZNQvxDV9g@public.gmane.org, linuxppc-dev-mnsaURCQ41sdnm+yROfE0A@public.gmane.org


--=-Cx+W6AuJMtKF04V8Q+IB
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, 2010-05-09 at 15:27 -0700, Christian Kujau wrote:
> On Sun, 9 May 2010 at 23:17, Rafael J. Wysocki wrote:
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D15589
> > Subject		: 2.6.34-rc1: Badness at fs/proc/generic.c:316
> > Submitter	: Christian Kujau <lists-AanptEQQ3TL9uQeqpI+JUg@public.gmane.org>
> > Date		: 2010-03-13 23:53 (58 days old)
> > Message-ID	: <<alpine.DEB.2.01.1003131544340.5493-uKsf7x9sgtqQ/Pez2Lbyp4QuADTiUCJX@public.gmane.org>>
> > References	: http://marc.info/?l=3Dlinux-kernel&m=3D126852442903680&w=
=3D2
>=20
> The bug is still present in -rc6, but Michael Ellerman has a patch[0]=20
> which made the warning go away.
>=20
> @Michael: will you post your patch with a Sign-Off, so that it can be=20
>           pushed into mainline?

No, Benh and I decided it's better to just drop those properties all
together. But it's too late in this cycle for a patch like that just to
fix a warning - so we'll do that patch for 35.

cheers

--=-Cx+W6AuJMtKF04V8Q+IB
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)

iEYEABECAAYFAkvnRo8ACgkQdSjSd0sB4dJLUACcDOW1oY8pgDWviiKGYNWTrwBe
SbEAn0P0EwEVSV6wG6nfN044aNwlDxI6
=npWM
-----END PGP SIGNATURE-----

--=-Cx+W6AuJMtKF04V8Q+IB--
