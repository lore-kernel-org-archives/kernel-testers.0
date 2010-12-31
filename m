From: Ben Hutchings <ben-/+tVBieCtBitmTQ+vhA3Yw@public.gmane.org>
Subject: Re: [Bug #25442] ixp4xx defines FREQ macro; conflicts with
 gspca/ov519 driver
Date: Fri, 31 Dec 2010 14:40:47 +0000
Message-ID: <1293806447.2870.36.camel@localhost>
References: <96DQe4a_2tH.A.4RE.497GNB@chimera>
	 <sV7shrPOroO.A.CqE.K-7GNB@chimera> <m3zkrnv1x9.fsf@intrepid.localdomain>
	 <201012301545.15667.rjw@sisk.pl>  <m339pe6nmp.fsf@intrepid.localdomain>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature"; boundary="=-3WouH82J6WMWfUvMN0bF"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <m339pe6nmp.fsf-gTjgKJgtlHj77SC2UrCW1FMQynFLKtET@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: Krzysztof Halasa <khc-9GfyWEdoJtJmR6Xm/wNWPw@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>


--=-3WouH82J6WMWfUvMN0bF
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2010-12-31 at 15:08 +0100, Krzysztof Halasa wrote:
> "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> writes:
>=20
> >> This FREQ has been there for years. Not that it makes it smart, and
> >> I'll obviously send Ben's patch upstream for 2.6.38. Still processing
> >> incoming mail queue :-(
> >
> > Well, the patch is in the mainline, which is why it's still listed.
>=20
> s/is/isn't/ I assume.
>=20
> I was referring to the "regression" thing only, i.e. there is no any
> regression here, AFAIK at least.

There is a regression for the ov519 driver on ixp4xx.

Ben.

--=20
Ben Hutchings
Once a job is fouled up, anything done to improve it makes it worse.

--=-3WouH82J6WMWfUvMN0bF
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)

iQIVAwUATR3rbee/yOyVhhEJAQI4cQ//Wip3xNzlQpAPI+H1H8dAoMXNn7vXWrfw
/nc4JmIHlxr0yZxpeqivCRO35Pxu/XMrxe4d758LWWYiSWsjHo4uh17lmI+O3/H9
lVbwsb/M+wHlBufBwQBG5OXFAfbTWV2IzYYc3QiZy2px0dkGAFoxw2VviK/ICAAk
oIUB7dYZDm9KrIg9DCT+kWjvAiRVAi0tM0piIXnvvmwofqtQoTb0VYMu96hff/ue
StBNay0ZEPCXlLZcdMcFMdatyvR8ji2Iauwr5DOT+uGl4kEvYDl2FHz7hjEaoNIp
F7bFia2IGGp05uIUZ0Hv7w2omNg7txuvooXVtUa2G9dqWTcjXCU6rwAfiGxWPMzH
jUZihed6rp1gfIi6ML3FkKgBFKUTd2isX/tTA7VEFYRH70+/TkjWFzQDYvjcxGQJ
fx/8r6lbHHEIl8MrRrSRDKEZG+KMMgSLKYmkHBudnEY7YVb0f3uQO7Vc1c7AHoRy
A7l5AeRtgl0dgwDO0hknSsvBMuMqqtrWupaYt/9EfGhltYWANsudyXMU7krYVJWo
scuPpGrqTVaEBwEoZx9R/4KYtQrKuIjf4BvNlpqvTarXhguO9ujn3yxKZM4l6aAd
FaV3Pk7451dm2YF13e/i1Eh+Urppn4nPohZgO8K5Uo0FvcTHBZK1JRsIEXE2XSzx
qbukk+DDYs0=
=OqBa
-----END PGP SIGNATURE-----

--=-3WouH82J6WMWfUvMN0bF--
