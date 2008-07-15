From: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
Subject: Re: 2.6.26-rc9-git12: Reported regressions from 2.6.25
Date: Tue, 15 Jul 2008 10:30:38 +0200
Message-ID: <1216110638.3535.0.camel@johannes.berg>
References: <Pine.LNX.4.44L0.0807141153110.2566-100000@iolanthe.rowland.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1; protocol="application/pgp-signature"; boundary="=-+GiSh08knjRFA4qNWoZp"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Pine.LNX.4.44L0.0807141153110.2566-100000-IYeN2dnnYyZXsRXLowluHWD2FQJk+8+b@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Greg KH <greg-U8xfFu+wG4EAvxtiuMwx3w@public.gmane.org>


--=-+GiSh08knjRFA4qNWoZp
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable


> Add
>=20
> 	printk(KERN_ALERT "Unplug now!\n");
> 	ssleep(10);
>=20
> to the start of slave_configure() in drivers/usb/storage/scsiglue.c. =20
> Then it should be very easy to trigger the failure.  :-)

Indeed.

> Assuming the failure does occur without the patch, see if it still=20
> occurs once the patch is in place.

Yes, it occurs without the patch and not with the patch, thanks!

johannes

--=-+GiSh08knjRFA4qNWoZp
Content-Type: application/pgp-signature; name=signature.asc
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Comment: Johannes Berg (powerbook)

iQIcBAABAgAGBQJIfGAqAAoJEKVg1VMiehFYUn8P/AlyE+8PQwLmpAJyaXHXwDAE
y4lNbcj8TYz5lt+h822n+I3FhbvbSTqglY2QndrAOYWqB3suMy2LhMPW4Ybzwa0r
2r0VJqmNkw1kSblDSrTFnM9Ic23JycK8t1E2coZ4wDQFtF3nRBUHnVdeRmJ+W9Hq
HMGcrmfb3K0X/C7Szy9crZfPx9Mi2aQTpN8AxHtFvv4NlQo3o275/04twhNANjP+
r3CKxfjnAi9hoVBrEh+yuUr6TLF1NZ0bSCl6YuYf/2ETVj75CXgB0gEymkM5MdMM
53QS5mFrwmc4su2O1GnG8ctkYJ49nBWFaC3RpinX4pbIxZgqnsiJ5pScCi/AEz8O
yOleDynNFntlo/SkJlxjDpoKdibCAPY7Z80xODyypt39ZCcRAe14h+0XWZZ2V2uL
lqIOb+ayyCmxgWHtRpqMY5XISy4Q65Knob1zt3RqzIKPp0Um3wgQ0/M+IthgoOND
5YsKDjXu5QN6lxL6gA28+1ms1Xw87oarzAcQE5qeVKT/dfmYJ7p+8E6ilz2w3UBZ
sjbfNdYRDEGo6qukMyvkJE/YrUNO9potTbl3oH0cY17wqq0iuUDG890hDNg+ah7l
ZXaKWfBg3X3aHXVIVX0KxDYmeGz6iWGW1itsEKFr3zwQeQkwv6oL/up/ohzubgLb
NkxYxQmHvM2lHno984ms
=ORmp
-----END PGP SIGNATURE-----

--=-+GiSh08knjRFA4qNWoZp--
