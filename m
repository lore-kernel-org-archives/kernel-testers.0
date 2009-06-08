From: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
Subject: Re: [Bug #13306] hibernate slow on _second_ run
Date: Mon, 08 Jun 2009 08:36:01 +0200
Message-ID: <1244442961.11457.0.camel@johannes.local>
References: <bCxQpon4SCJ.A.RrF.yY7KKB@chimera>
	 <D9VoutSOyXP.A.u-H.Ra7KKB@chimera>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature"; boundary="=-Pw5MQ5+MXSaMjMRO+pXz"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <D9VoutSOyXP.A.u-H.Ra7KKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>


--=-Pw5MQ5+MXSaMjMRO+pXz
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Sun, 2009-06-07 at 11:52 +0200, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>=20
> The following bug entry is on the current list of known regressions
> from 2.6.29.  Please verify if it still should be listed and let me know
> (either way).
>=20
>=20
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D13306
> Subject		: hibernate slow on _second_ run
> Submitter	: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
> Date		: 2009-05-14 09:34 (25 days old)

I'm still seeing this, did you get a chance to look at the ftrace?

johannes

--=-Pw5MQ5+MXSaMjMRO+pXz
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQIcBAABAgAGBQJKLLFOAAoJEODzc/N7+QmaHycQAILsevi+FrWBDk23U3QGCSdb
/Bpe4AwvXlGEx9tQ0gO7GEAQucXZPnY8ivHUTkp+/sWmQCAGhoK3pjuF+7IHdOhN
VFQCndInO4/VaJFx2Uz52wLvCKfdikK8ueTSIpUbzf8STJRSFlgGbsfqx5UbeIkD
1B0N+P5qUssdSj9a6rc3AwDaIy9a/GqlPLQb+WQEeRc+WjbEzZANnM4HXvNLiK98
MY2+tz0pP4VeUGQDDJI6gaqVW+M/UdPWHfveAuB5Jfnld90YfXsNH4c5PRUVqBJo
RKGYGpgj5SSPLCu2txNh/EohioUNgWLWo6D+4uf/Igf2nk8UXC5XSC37tCLWHkCU
FpMgm+1k8dNgjlBBjqDmbxzWeheCjAES2HkAzPGlzeTir+X1zuvYyyKTPhSN/Ood
bRo0yUnj9pSL9UjmitaNnKRTlWq8KR8tajVLYIYOaie4+zmrbfJgPnEihREiGxNh
APcdK8tCsTS8TBrSC6KGYNxahUfKG/rwa3NjeV4QaWQYfV4p5XsHRMguByfFClvc
fbmlBpefJHluOiTLsU2SnXPU+/aULuyP2kpjim6qEyWJIgL8LbKGRBGr6CmosfY0
cs4WNGou+ujZXYHecO7YJZBucdU/y/W+fHa45NJUq5hAPGpFej/Swb7XHsjxIDbe
vdk7POK70pEx5psNY2LE
=D2ID
-----END PGP SIGNATURE-----

--=-Pw5MQ5+MXSaMjMRO+pXz--
