From: Nico Schottelius <nico-linux-20090213-xuaVFQXs+5hIG4jRRZ66WA@public.gmane.org>
Subject: Re: [Bug #12705] X200: Brightness broken since
	2.6.29-rc4-58-g4c098bc
Date: Mon, 20 Apr 2009 12:36:36 +0200
Message-ID: <20090420103636.GA6611@ikn.schottelius.org>
References: <n4io5wq70ZO.A.gzG.rFn2JB@chimera> <AsKNxFx2juN.A.vfB.lHn2JB@chimera> <alpine.LFD.2.00.0904070011280.5698@localhost.localdomain> <200904072316.15367.rjw@sisk.pl> <20090417143532.GA6195@ikn.schottelius.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="EeQfGwPcQSOJBaQU"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20090417143532.GA6195-9ll+q7fL1vOwdVNcq5OhcUB+6BGkLq7r@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: Nico Schottelius <nico-linux-20090213-xuaVFQXs+5hIG4jRRZ66WA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Len Brown <lenb-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kerne


--EeQfGwPcQSOJBaQU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Nico Schottelius [Fri, Apr 17, 2009 at 04:35:32PM +0200]:
> Brightness is *AGAIN* broken in 2.6.30-rc2-00195-g9f76208.

2.6.30-rc2-next-20090420:

My display *is* at full brightness, but I cannot adjust it,
because I'm missing some files:

[12:35] ikn:~# ls /sys/class/video_output=20
[12:35] ikn:~# ls /sys/class/backlight  =20
[12:35] ikn:~# ls /proc/acpi          =20
ac_adapter  debug_layer  embedded_controller  fan   power_resource  thermal=
_zone
battery     debug_level  event          ibm   processor     wakeup
button      dsdt   fadt         info  sleep

So I cannot adjust brightness. I saw that
/proc/acpi/video/VID/LCD0/brightness was not existing on 2.6.30-rc2-00195-g=
9f76208
either.

Bug or am I missing some new file location?

Nico

--=20
Think about Free and Open Source Software (FOSS).
http://nico.schottelius.org/documentations/foss/the-term-foss/

PGP: BFE4 C736 ABE5 406F 8F42  F7CF B8BE F92A 9885 188C

--EeQfGwPcQSOJBaQU
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.9 (GNU/Linux)

iEYEARECAAYFAknsUDMACgkQuL75KpiFGIyf0gCfb25Zb3ZfQKGgVSpSOGn7dPjg
HqIAoKKn6xKkP/vpFgfYD31BSIxn8fxa
=gITJ
-----END PGP SIGNATURE-----

--EeQfGwPcQSOJBaQU--
