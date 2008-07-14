From: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
Subject: Re: 2.6.26-rc9-git12: Reported regressions from 2.6.25
Date: Mon, 14 Jul 2008 16:06:38 +0200
Message-ID: <1216044398.23746.10.camel@johannes.berg>
References: <Pine.LNX.4.44L0.0807140955020.2566-100000@iolanthe.rowland.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1; protocol="application/pgp-signature"; boundary="=-NtqE1GeviUS5bNnqjzEZ"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Pine.LNX.4.44L0.0807140955020.2566-100000-IYeN2dnnYyZXsRXLowluHWD2FQJk+8+b@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Greg KH <greg-U8xfFu+wG4EAvxtiuMwx3w@public.gmane.org>


--=-NtqE1GeviUS5bNnqjzEZ
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable


> > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11072
> > > Subject		: scsi-layer crash after usb storage device unplug
> > > Submitter	: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
> > > Date		: 2008-07-12 01:50 (2 days old)
> > > Handled-By	: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
> > > Patch		: http://bugzilla.kernel.org/show_bug.cgi?id=3D11072#c3
> >=20
> > Alan, Greg?
>=20
> We haven't heard back yet from Johannes to confirm that the fix really
> works.  If it does, IMO the patch should go into 2.6.26.1.
>=20
> (In fact it might not be so easy to tell, since the failure is caused=20
> be a race.  Perhaps it would be best to submit the patch in any case.)

I haven't had a chance to apply the patch, but given that to cause the
oops to happen I had to unplug/replug the device at random intervals for
probably 10 minutes (yes, it took me that long to figure out I had put
an SDHC card into an SD reader) I suppose it really won't be easy to
tell.

johannes

--=-NtqE1GeviUS5bNnqjzEZ
Content-Type: application/pgp-signature; name=signature.asc
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Comment: Johannes Berg (powerbook)

iQIcBAABAgAGBQJIe11rAAoJEKVg1VMiehFYoJAQAKgRQ38FD2mq1TLWWRy/XZzm
aTJ+CEIJpaYKeKvoRJsvIGDZQSrmRXscRRUoNuxzjBWHWsUzZ05AtnKvM1l8w2Iy
Aa/qxDoGi1FxIrVc/ztO2ORM+kDaDZAcdIJ1kVwLc8qagNpct5Ygvr12Ff0k3F5r
cX4P+fX0t4CTg4L7ncZOlY6s4KhLOfRy1WvWnoOJ9oKRlqO+oI9PEjr/e52bFo4l
ZCfMGPGOihP+o+Nz7UGwJFmJTkY76DqWxMM+AJnbZQ9DpKWrikZyh88kE7tNe+gT
hD7aKcYHgCFz1xeS8rBQsvZbieccBQ85NbJEk6F1aMbMKVQD1Lvc0PRilIs5hScl
FfVANU41Y+wc1lG1HcSZB5BiRdn+Y0wMJUwCrh/pAa9dlumzv0jYckzGkFpMmnkr
cvMM+1SAHYqRLGPmVI5co4mSTzurtC81wJX8jx9snXLOsPX10apeGplN3Ya76q7T
k+fLAmT3+NiP+kaji84mkpHo1Icvd4+Hw/cb3Kq8pme4q3Ae2puY9jN01p6rs2jg
zThdzqUwYKilpj86tzJh9aPYRQREcQftu2RVVk4o9zy3n0V8eFICFzjOqyAscCqt
FHJBHMFr2NhLtvuAGC2ju+9QQT6kdDJrPszDFkY27dk2C0Kvl/CMov90fjZZHHL/
YVk2JQ53UuyQGt6qAk9s
=ynW0
-----END PGP SIGNATURE-----

--=-NtqE1GeviUS5bNnqjzEZ--
