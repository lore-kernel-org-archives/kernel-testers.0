From: Harald Dunkel <harald.dunkel-zqRNUXuvxA0b1SvskN2V4Q@public.gmane.org>
Subject: Re: [Bug #13374] reiserfs blocked for more than 120secs
Date: Tue, 18 Aug 2009 19:30:23 +0200
Message-ID: <4A8AE52F.6030606@t-online.de>
References: <upey9ZSfnaF.A.-oE.rpgdKB@chimera> <200908032113.46588.rjw@sisk.pl> <4A83296E.6010700@t-online.de> <200908122315.09420.rjw@sisk.pl>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
 protocol="application/pgp-signature";
 boundary="------------enig8C516E9575354B07B888A04A"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200908122315.09420.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: =?ISO-8859-2?Q?Fr=E9d=E9ric_Weisbecker?= <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jeff Mahoney <jeffm-IBi9RG/b67k@public.gmane.org>

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig8C516E9575354B07B888A04A
Content-Type: text/plain; charset=ISO-8859-2
Content-Transfer-Encoding: quoted-printable

Hi Rafael,

I haven't seen the 120secs timeout yet, but using 2.6.31-rc5 there _are_
some delays that I am not sure of. Sometimes it takes about 30 secs till
the XWindow server comes up, for example. (I use xinit on the command lin=
e
at login. / and /home are both reiserfs.) For 2.6.30.4 and older I haven'=
t
seen this delay yet, AFAIR.

Most recent event: I tried to format a 4 GByte USB stick with reiserfs.
Here is the screen output:

	# device=3D/dev/sdf
	# parted $device mklabel gpt
	Warning: The existing disk label on /dev/sdf will be destroyed and
	all data on this disk will be lost. Do you want to continue?
	Yes/No? Yes
	Information: You may need to update /etc/fstab.

	# parted -- $device mkpart primary 0s -1s
	Warning: You requested a partition from 0.00B to 4127MB.
	The closest location we can manage is 17.4kB to 4127MB.
	Is this still acceptable to you?
	Yes/No? Yes
	Information: You may need to update /etc/fstab.

	# mkreiserfs -l usbstick /dev/sdf1
	mkreiserfs 3.6.21 (2009 www.namesys.com)
	:
	:
	UUID: 154d66cc-02ac-4979-9a39-163e3cf80623
	LABEL: usbstick
	ATTENTION: YOU SHOULD REBOOT AFTER FDISK!
	        ALL DATA WILL BE LOST ON '/dev/sdf1'!
	Continue (y/n):y
	Initializing journal - 0%....20%....40%....60%....80%....100%
	Syncing..ok
	ReiserFS is successfully created on /dev/sdf1.

It took about 2 to 3 minutes till the "ok" in the "Syncing" line
was shown. /var/log/messages was silent. When I tried to reproduce
the delay it was gone, of course.

Since I would like to try 2.6.31-rc6 anyway, maybe you could post
some hints about what debugging options to set in the config file?


Many thanx

Harri



--------------enig8C516E9575354B07B888A04A
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.9 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iEYEARECAAYFAkqK5TQACgkQUTlbRTxpHjeHNgCdG+RVIBC34nz8ePvFFlONBMVp
l1MAn3phSPnUpJT3E+ivFynqXJwpEAZq
=2D/U
-----END PGP SIGNATURE-----

--------------enig8C516E9575354B07B888A04A--
