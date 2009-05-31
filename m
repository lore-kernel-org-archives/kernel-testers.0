From: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
Subject: Re: [Bug #13362] [mac80211 ] Wifi Network Slownes Bisected
Date: Sun, 31 May 2009 12:01:36 +0200
Message-ID: <1243764096.19302.34.camel@johannes.local>
References: <4to6E2myxvG.A.muC.aIbIKB@chimera>
	 <LEcEO2518_I.A.9zD.8IbIKB@chimera>  <20090531003941.4891c859@varda>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature"; boundary="=-G4caAvjRFPzFIJE3Wduf"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090531003941.4891c859@varda>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: Alejandro Riveira =?ISO-8859-1?Q?Fern=E1ndez?= <ariveira-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Chris Wright <chrisw-69jw2NvuJkxg9hUCZPvPmw@public.gmane.org>, "John W. Linville" <linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>


--=-G4caAvjRFPzFIJE3Wduf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, 2009-05-31 at 00:39 +0200, Alejandro Riveira Fern=C3=A1ndez wrote:
> El Sat, 30 May 2009 21:37:34 +0200 (CEST)
> "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> escribi=C3=B3:
>=20
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> >=20
> > The following bug entry is on the current list of known regressions
> > from 2.6.29.  Please verify if it still should be listed and let me kno=
w
> > (either way).
>=20
>  It should be listed.

But it should definitely be retitled -- the commit bisect pointed out
has little to do with the problem. And Handled-by should point to Ivo
since he was asking for debugging info and stuff.

Retitle to "rt2x00: slow wifi with correct basic rate bitmap" or
something like that, it's not a bug in mac80211.

johannes

--=-G4caAvjRFPzFIJE3Wduf
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQIcBAABAgAGBQJKIlV9AAoJEODzc/N7+QmaBIMP/1/iACeBzugY8xEqsqyC/Nn3
xNnUZCAhhgozkW9hMQUW3vPG9vgx8AV8BlM6rBbUvOf4V3XzIUY5LM1kc5MXC8ox
0SV7OX3jVUGPt6EvQd8YSNbC7/6MeiHPER0AZA/37gEPkCa57GOejPvAlo6TYDsI
lM81bAHX8c2O73rFbhLuTjCWNtaNHNKqT29rEkTcb+pgc56e6MI1m1bS/mb2tekj
0Wz9dgx8YmjrT+2QwUM56XZwaKVIC3B/03r9o12BYdaJukLMX2AEFwIjGg46+mSt
qvZ4Nx3r2x8tFT95gUnYqr3VdxnpoDIIvDHJSVJD1NQiYYjl5zvg5vK6rABtT5Vo
GfLKqWLAyOdGbXZRSHPZEHWkCefD3M9JVMvOxCXMNlESVUaBYAhQojYNkWWkscNa
fatSBfNQ2k0aqt3nRQHyIPK23UT3aiBpwZX3b9RhO5mr2WMRNxkkSvVHMe/RM799
RMHvaOM2rF8KSDYbDPT7GgAOEC4hSf7fbB1o0Zy02ykSgp9MJbtg8WAhlkLMl/da
lGKVCvbVJE2ijUdxmulw+WXEefopPuwrgP4OIY2ZVhpF8QWQgUQvMVrwZlFwgt1U
pvtLYZW9iq2lTeXamAxovycl1COL9KEKSY+6Xy5jDr3uBJncBJ7T0quweVA4so9W
QVVZajruaRXr+Azxnl0v
=xv/r
-----END PGP SIGNATURE-----

--=-G4caAvjRFPzFIJE3Wduf--
