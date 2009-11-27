From: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
Subject: Re: [Bug #14352] WARNING: at net/mac80211/scan.c:267
Date: Fri, 27 Nov 2009 15:11:56 +0100
Message-ID: <1259331116.5428.20.camel@johannes.local>
References: <GUZt44bIwCE.A.vLF.pSdALB@chimera>
	 <xXQGFmujPl.A.o1.bUdALB@chimera>
	 <8db1092f0911162204i36dbd472w1d2c88411e151acb@mail.gmail.com>
	 <200911172319.49198.rjw@sisk.pl>
	 <alpine.LFD.2.00.0911271438340.3429@localhost>
	 <1259331034.5428.19.camel@johannes.local>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature"; boundary="=-IzSG0d0YN3I9AB9mjgpC"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1259331034.5428.19.camel-YfaajirXv2244ywRPIzf9A@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: Sebastian Ott <sebott-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>


--=-IzSG0d0YN3I9AB9mjgpC
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2009-11-27 at 15:10 +0100, Johannes Berg wrote:
> On Fri, 2009-11-27 at 14:46 +0100, Sebastian Ott wrote:
>=20
> > [ 5724.754068] iwl3945 0000:03:00.0: Error sending REPLY_SCAN_CMD: time=
=20
> > out after 500ms.
>=20
> That tells you there's something wrong with the device -- and maybe the
> driver is misbehaving by telling mac80211 that it couldn't scan but then
> still calling scan_completed().
>=20
> In any case, driver bug as far as I can tell.

Oh and it's also not /this/ bug for sure, it just happens to hit the
same WARN_ON(), but the cause is very different.

johannes

--=-IzSG0d0YN3I9AB9mjgpC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQIcBAABAgAGBQJLD94mAAoJEODzc/N7+Qma8GEP/0jubs26zeI1kgHjc24vu1t7
k0PSDbjTOjkQbjJmFInYsVNpV9rkqKJegohXVZz6JVlJfIokMXa8yjLgZqzp+jEv
vZI2epmTuAuBVDsl7wKMVyKmZXVhNQB5xDeJoWaR11bAZyqPCOdl9+or4Eg7Nw3v
M7VIEBvE3lQ1VgRO13KdM7myfUJ7wafJL3hdRGlw43DlbrzwAn3fdy2lyxLhP72A
CQwL4fiTQC2/yIlvR4Vi4F9ZhHumo6HzpZjyqwAQGJpJV7bcwi7MqAhdlVoeIe1u
d16DOrnPlD1AnnAqOOhZQ5KutpCDzPOvre95SMSrRQvX8EX8szO+WgXv70xqu8VN
DAnf0/pTq1XHj5TsbqrUZnEZCiNsE/V8W9s6ZDO25XsN2dlYt+Kmgu4Bwma3RtmZ
Roxrq5x4WM8RW98IgJNxoNTeEQasa2AwWxJzWho5br/NJv9He/MekOiHgu442ZGG
FoswkThuyOlrH72XnRuZG9WAq9RQ5J5dIoGQ9TlazLRBvcQ3OnudjYZCSnKyLlme
iS9JlVVKyoDudiTwiC8J3127rQ5MDsYXJJpq5/N9dNmn5eq+ncdFAYIUGolCq0CI
kdbUiS1YDJdBk+bps+lISDmXTQZ21o2q0V54f1KY8y6aEWK7iJrvBo4selIH9hiR
n5spAfeCAPqFOZO70UZv
=xuBF
-----END PGP SIGNATURE-----

--=-IzSG0d0YN3I9AB9mjgpC--
