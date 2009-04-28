From: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
Subject: Re: [PATCH] [RFC] EEE PC hangs when booting off battery
Date: Tue, 28 Apr 2009 12:35:44 +0200
Message-ID: <1240914944.28835.11.camel@johannes.local>
References: <49E065CF.6040408@tuffmail.co.uk>
	 <200904140859.02188.bjorn.helgaas@hp.com>
	 <20090414081728.10de978a@infradead.org>
	 <200904140948.37633.bjorn.helgaas@hp.com> <49E5F01B.2060201@tuffmail.co.uk>
		 <49EF0ABD.2080801@tuffmail.co.uk> <49F446AE.6070607@tuffmail.co.uk>
		 <49F6CA0E.5040101@tuffmail.co.uk>
	 (sfid-20090428_111942_198975_13CDA6F5) <1240912688.28835.10.camel@johannes.local>
	 <49F6DA14.7030608@tuffmail.co.uk>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature"; boundary="=-Jprxz+NasVEGsZrS3KWk"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <49F6DA14.7030608-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Cc: "linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Arjan van de Ven <arjan-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>


--=-Jprxz+NasVEGsZrS3KWk
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Tue, 2009-04-28 at 11:27 +0100, Alan Jenkins wrote:

> > Can you point out where? I can't find that.

>=20
> I posted the calltraces earlier at
> <http://marc.info/?l=3Dlinux-wireless&m=3D124074566523506&w=3D2>.
>=20
> wait_for_completion
> flush_cpu_workqueue
> ? wq_barrier_func
> flush_workqueue
> flush_scheduled_work
> tty_ldisc_release

Ah, I was just grepping for the wrong thing :)

johannes

--=-Jprxz+NasVEGsZrS3KWk
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Comment: Johannes Berg (powerbook)

iQIcBAABAgAGBQJJ9tv9AAoJEKVg1VMiehFY4ugP/1sFv/kru9oViL9kbbpm63mU
cAtEAsnOXGIF+XT9Xp+Jn2z10lUe70aX/xT43eR4jcMw8ER1pKcbx5WymNVp7qvS
4IoBCQEFI0VtH5BrL4yifRtkFF+RLgUdYHsR3cw3aGcE3LDInZDOQgTZlhdiuwaM
rEL0o7xOjn7nEyNKWVZgVIEmOMKf7KdbB+G+T0tlAeeq+MZKowq3Ch38PlitqPO3
3CGW82HlgU2ydGnkcH7Ep48BufJ/tJV/VfaG7ymVGHGcnhl8WOLKRBLT6cJFMwpL
cfUtajLbz9lLfYbqgnWw/wvwrPhmwB1kRq1BXEoF7TaE5TI2Mb4jhC5tY+HWDeap
ICgGQ6Q1d/ttTMbLUliVA5QtbQPVRmyuQD4X+A8IXhkvSeQyN3j+xvMRSVVP0waC
8mkFDeactbPaiCJktuQNjMg0ydxVACmC/4e09G2W+UlEf2lYN3MrQlQME3u0s7xX
E0GGCKyb9i9ale0kzIfLr8FXcV8zbaCcdGtNLODXlc8ZOldC5t/O4wlPTwrv4762
976oU7qIjCU7/X1vNAWlNCxuSg8H6Vbeiprl1cQlRUofXz8eM8cy7ys9ksbFbREf
ez80lBWmdi4F8izE3HZFbLHAJ7xHmHTtk+RwyQFqwpQU62zc+Yn5RvEfBIGkL4e8
VPBwyRnbkgI4LMw8e6Yw
=UJME
-----END PGP SIGNATURE-----

--=-Jprxz+NasVEGsZrS3KWk--
