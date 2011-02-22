From: Paul Rolland (=?UTF-8?B?44Od44O844Or44O744Ot44Op44Oz?=) 
	<rol-fjEKYshTNZ1eoWH0uzbU5w@public.gmane.org>
Subject: Re: [Bug #22542] [2.6.37-rc1] drm:i195 errors
Date: Tue, 22 Feb 2011 08:24:38 +0100
Message-ID: <20110222082438.0c0676ca@tux.DEF.witbe.net>
References: <JwKd6rET8XO.A._ZC.gbuYNB@chimera>
	<f14qsMvj2tF.A.rQF._fuYNB@chimera>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=PGP-SHA1;
 boundary="Sig_/5u3yCMo8rgQ8GF8rn4M7n30"; protocol="application/pgp-signature"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <f14qsMvj2tF.A.rQF._fuYNB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Dave Airlie <airlied-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Keith Packard <keithp-aN4HjG94KOLQT0dZR+AlfA@public.gmane.org>, rol-fjEKYshTNZ1eoWH0uzbU5w@public.gmane.org

--Sig_/5u3yCMo8rgQ8GF8rn4M7n30
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hello Rafael,

On Mon, 21 Feb 2011 23:29:34 +0100 (CET)
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.36 and 2.6.37.
>=20
> The following bug entry is on the current list of known regressions
> introduced between 2.6.36 and 2.6.37.  Please verify if it still should
> be listed and let the tracking team know (either way).
>=20
>=20
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D22542
> Subject		: [2.6.37-rc1] drm:i195 errors
> Submitter	: Paul Rolland <rol-fjEKYshTNZ1eoWH0uzbU5w@public.gmane.org>
> Date		: 2010-11-02 14:58 (112 days old)
> Message-ID	: <20101102155813.09cb2c6e-Hu5lHNoInTV+MQpiyFM1nV6hYfS7NtTn@public.gmane.org>
> References	: http://marc.info/?l=3Dlinux-kernel&m=3D128870991628970&w=3D2
>=20

I think you can remove this one from the regression list. I've received an
update from Florian that said !

--- Comment #27 from Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>  2011-02-20 10:5=
2:15 ---
According to #22652 "*ERROR* Attempting to mmap a purgeable buffer" warns a=
bout
a userspace error. =20

It links to ticket #22652 in which Chris Wilson indicates this is warning
about userspace bug, and that this issue is tracked in :
https://bugs.freedesktop.org/show_bug.cgi?id=3D31419

So, this definitely looks like the problem is not in the kernel (though my
personal view on this is that the message itself should be made much more
clear and reflect that the problem is not in the kernel, but in userspace).

Thanks for the tracking you've made,
Paul

--=20
Paul Rolland                                E-Mail : rol(at)witbe.net
CTO - Witbe.net SA                          Tel. +33 (0)1 47 67 77 77
Les Collines de l'Arche                     Fax. +33 (0)1 47 67 77 99
F-92057 Paris La Defense                    RIPE : PR12-RIPE

LinkedIn : http://www.linkedin.com/in/paulrolland
Skype    : rollandpaul

"I worry about my child and the Internet all the time, even though she's
too young to have logged on yet. Here's what I worry about. I worry that 10
or 15 years from now, she will come to me and say 'Daddy, where were you
when they took freedom of the press away from the Internet?'"
--Mike Godwin, Electronic Frontier Foundation=20



--Sig_/5u3yCMo8rgQ8GF8rn4M7n30
Content-Type: application/pgp-signature; name=signature.asc
Content-Disposition: attachment; filename=signature.asc

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.14 (GNU/Linux)

iEYEARECAAYFAk1jZLYACgkQZP464AVDf+AnwQCfakCGcjmaWsDxQ/yAy0/i/ySz
H/sAnioASPsRR/0Uk7fikEF/HVW1a6ou
=l/BF
-----END PGP SIGNATURE-----

--Sig_/5u3yCMo8rgQ8GF8rn4M7n30--
