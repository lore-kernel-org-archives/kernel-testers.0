From: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
Subject: Re: [Bug #13306] hibernate slow on _second_ run
Date: Mon, 01 Jun 2009 22:41:00 +0200
Message-ID: <1243888860.5299.32.camel@johannes.local>
References: <4to6E2myxvG.A.muC.aIbIKB@chimera>
	 <LEcEO2518_I.A.qkE.kJbIKB@chimera>
	 <1243764129.19302.37.camel@johannes.local> <200906012226.46086.rjw@sisk.pl>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature"; boundary="=-r64bO7P722GTdMy6rXOt"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200906012226.46086.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>


--=-r64bO7P722GTdMy6rXOt
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Mon, 2009-06-01 at 22:26 +0200, Rafael J. Wysocki wrote:
> On Sunday 31 May 2009, Johannes Berg wrote:
> > On Sat, 2009-05-30 at 21:37 +0200, Rafael J. Wysocki wrote:
> > > This message has been generated automatically as a part of a report
> > > of recent regressions.
> > >=20
> > > The following bug entry is on the current list of known regressions
> > > from 2.6.29.  Please verify if it still should be listed and let me k=
now
> > > (either way).
> > >=20
> > >=20
> > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D13306
> > > Subject		: hibernate slow on _second_ run
> > > Submitter	: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
> > > Date		: 2009-05-14 09:34 (17 days old)
> >=20
> > I'm trying to get an ftrace profile that covers the point in question,
> > but it might take me a couple of days.
>=20
> Did it work?

No, it's now hanging 20 seconds much later, after returning to
userspace :( But the dmesg log still has a hang of ~20.5 seconds just
like before, between two kernel messages...

johannes

--=-r64bO7P722GTdMy6rXOt
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQIcBAABAgAGBQJKJDzYAAoJEODzc/N7+QmaVv8P/RddjlPNg9N0AnA0fKja1ZTw
pJggHftqMBAMk8ml57zZXG/WxcjoyenBgJTVtz1jQ+EjYAfc3SRotl5zKIt9M2GA
CVYmsC9HntRtU3x1N2s79a4d+eXNvVzyHZ3NRUDgx3lNXGJuyyIhPA16Xpd4OU6Z
0lgVs2ASetCccB3rB1yVbEl3s04hWT9fBgnP8OkBob6cO7gCJcqYRHCt7p00qit7
enQTpk93pXTkLP7QbAnM/YC5lbfgW4jHDLE1lwLeQpDCKd8OWx8+SGjbVvgMfs9J
1hrutDkDfcnHDZb/rgZH2xgNQo1L4/cwO7FgOYwMTCfISfJ6Hhm+gjDML2J3uJpU
2bfE8yxgKZ0mmXfwXKlGNgZGNIHK2yk9rP8jrDgu4LnWWBk0sAcq/SVX1ma6gR0+
k+5mrMPnZGVSgtoC/vxFdoz8DfDu8hkStHfnHmJTG09GV8Ndvqt7Vpl8ihoLKLwu
uFAtqjhEINUL578YKiL0A7qrXUxAQ3f1vXB26it7Qt+jtZz3T9Bnu0U2UfcRzRSg
0RPZMAGll6Iex7mLtCh8sKP6QUiEXc+J5qHqGx/fX2EbRbKbcOwKhnQ60XAroUKx
aDKABzHb5t+Ap7+0MJ7KAJgpE3H9uLC/xbciwn7aN0iXZk5pcMIFYkhktdACxHTO
fl24eJuzxGs/wWiODP3F
=jEbG
-----END PGP SIGNATURE-----

--=-r64bO7P722GTdMy6rXOt--
