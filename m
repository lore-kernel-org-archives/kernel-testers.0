From: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
Subject: Re: [Bug #14352] WARNING: at net/mac80211/scan.c:267
Date: Fri, 27 Nov 2009 15:10:34 +0100
Message-ID: <1259331034.5428.19.camel@johannes.local>
References: <GUZt44bIwCE.A.vLF.pSdALB@chimera>
	 <xXQGFmujPl.A.o1.bUdALB@chimera>
	 <8db1092f0911162204i36dbd472w1d2c88411e151acb@mail.gmail.com>
	 <200911172319.49198.rjw@sisk.pl>
	 <alpine.LFD.2.00.0911271438340.3429@localhost>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature"; boundary="=-cTylexAlDVI3DKO6R6eY"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.2.00.0911271438340.3429@localhost>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: Sebastian Ott <sebott-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>


--=-cTylexAlDVI3DKO6R6eY
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2009-11-27 at 14:46 +0100, Sebastian Ott wrote:

> [ 5724.754068] iwl3945 0000:03:00.0: Error sending REPLY_SCAN_CMD: time=20
> out after 500ms.

That tells you there's something wrong with the device -- and maybe the
driver is misbehaving by telling mac80211 that it couldn't scan but then
still calling scan_completed().

In any case, driver bug as far as I can tell.

johannes

--=-cTylexAlDVI3DKO6R6eY
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQIcBAABAgAGBQJLD93XAAoJEODzc/N7+Qma8X0P/1DfjfPk6uTCNM2FKDrSISeB
cSbofmtR55rBSrgbR4fiy4jftjpoa2hSVWQoTjmZ/5m1vJRiIAkqPUG7rZ/FIIND
X704I+oe/0TfCbuhk56lO+5lo0OpdScZItMK8ZeXgPOJkbzElm2+5wPLdSClXeh/
HQNCzkRhcelqc8fejOQ2VLhopJrx7Kf/xuJCTf2ACbx16lVPyPa8yNQ477J+/KtV
D+lARzdXmKsk52pm0CzyMtXdaJGVYwDrFxmxX0DLfiSW8EenK+DmJVY3Pk/oZw8W
lOjYq3c+vkNHfBVsIf7MeMHbjPahYtZAmWCLmO9Yv7YfewYST1BBQQqq8ZKSN9X6
uYDrx/0fiSUeCRbcYmdycjNTQ6jT39sVtAQWIGADe2bFg9YMZ6kvzeLYPwpVNdL7
3OLUYo4t8yJKc/lFX7/qRPkgDQ3Mbv6Ne5IXFHZsUUPybJutvftek8LD1zsuO7hN
knnLkdEFvD3Ozs0iLanVT+iwR6pymn04e/NoCLBQGcWKtDLR2ElCE6B592M8BtJ2
3MFnM6PZ5IRD4oj5Yhs0kFctE4AG/rvUbXHJweiTs/z3rmixagMKUazeQ7ZI9i5q
ZYfkbh908f+75wlsxm5JPUmu5XFHqKVz1ErlMf3Vi9D7VWEeoouj6ylYgZsqYR/P
BvsUOQdxptVrfOnc3+2y
=OGMK
-----END PGP SIGNATURE-----

--=-cTylexAlDVI3DKO6R6eY--
