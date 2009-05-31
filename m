From: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
Subject: Re: [Bug #13306] hibernate slow on _second_ run
Date: Sun, 31 May 2009 12:02:09 +0200
Message-ID: <1243764129.19302.37.camel@johannes.local>
References: <4to6E2myxvG.A.muC.aIbIKB@chimera>
	 <LEcEO2518_I.A.qkE.kJbIKB@chimera>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature"; boundary="=-P8K8pZPSdWyFI+gl2aZU"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <LEcEO2518_I.A.qkE.kJbIKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>


--=-P8K8pZPSdWyFI+gl2aZU
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Sat, 2009-05-30 at 21:37 +0200, Rafael J. Wysocki wrote:
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
> Date		: 2009-05-14 09:34 (17 days old)

I'm trying to get an ftrace profile that covers the point in question,
but it might take me a couple of days.

johannes

--=-P8K8pZPSdWyFI+gl2aZU
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQIcBAABAgAGBQJKIlWbAAoJEODzc/N7+QmaQsEQAJGIYhPZ+/xSUTAsLWqoskKW
ohU51uHJoKXgY+ozIqWzP29EMDOv5Tuz0bYq/WiDyUUA44UVpLVfQfWof5m4H736
5vkbwiOYIGa0/wbjzBu3onHCMCV2BB8aYGyqhoBKWJAD+ZW6ZZ3gl6hiz9qmcdu5
ZAIWFTbtVU+Np5IqRsdB98HJLXVlgJf0FSDNjzvtwAhm8B1+27Fnhbxj7lqRLwwN
THTvIswwSCkwoc9H7y1t/c4O69Gmr7102dnsEKFt8EAHbvaVn+0ltp24h0+UhAVU
2OtaQevSqFGdoAnMc1CeMreXLF1o5+oNAPV/COY9N9LndBLkEoVHNJ9B6vZPRN5E
QC9yjuYXKWT5+6XGFSSHCpVvnUAYNk5dP4/YesFC71SVWsS7v+PDpbXT7hS2UVUZ
n2Uytt+67ANs5QLWb7eaBeA0lZKcmi7GO0bWv7Ltsre7TuyPSz1NFsIXVkUAmKSs
aNtujS/Xnx7Y09Qx1inew2ruleaTgwxmRclurAAixxMysmn0Kc+/g36VEk0NJ1yD
pvBLJjHW05DY2Ogl7J2ZdvT5plDKbRGMBdWjq9xx7dGcCeHy3ba3JdhmKjs2RTny
tOOV97ZbjNbCjromTT6akaVrvmGXVidotwzAf8f1K26Fh6DHekdVbG+0+kUM2yMo
t0XgSAAplO+B1fDXSNNb
=Bou0
-----END PGP SIGNATURE-----

--=-P8K8pZPSdWyFI+gl2aZU--
