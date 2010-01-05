From: Daniel Kahn Gillmor <dkg-QLrU/DhXBlmnlhUoGqYIEF6hYfS7NtTn@public.gmane.org>
Subject: Re: [Bug #14893] Tasks stuck on I/O on armel with 2.6.32-rc8
Date: Mon, 04 Jan 2010 20:34:35 -0500
Message-ID: <4B42972B.6030801@fifthhorseman.net>
References: <oBElxfTZdhL.A.bx.-vhOLB@chimera> <srmJ8vMxKPH.A.LFC.UwhOLB@chimera>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature";
 boundary="------------enig39C2CA2F58849057D8154A02"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <srmJ8vMxKPH.A.LFC.UwhOLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

This is an OpenPGP/MIME signed message (RFC 2440 and 3156)
--------------enig39C2CA2F58849057D8154A02
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Rafael--

On 12/29/2009 10:28 AM, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.31 and 2.6.32.
>=20
> The following bug entry is on the current list of known regressions
> introduced between 2.6.31 and 2.6.32.  Please verify if it still should=

> be listed and let me know (either way).
>=20
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D14893
> Subject		: Tasks stuck on I/O on armel with 2.6.32-rc8
> Submitter	: Daniel Kahn Gillmor <dkg-QLrU/DhXBlmnlhUoGqYIEF6hYfS7NtTn@public.gmane.org>
> Date		: 2009-11-24 23:05 (36 days old)
> References	: http://marc.info/?l=3Dlinux-kernel&m=3D125910438530554&w=3D=
4

The machine in question has been up continuously (though not under heavy
load) since it was rebooted after the reported failure.  it has even
withstood additional mpd index updates, all running the same kernel it
crashed with before.

So i can't say that the problem is resolved, but i haven't replicated it
either.  Wish i had more interesting details to report.

Thanks for doing followup/triage like this.  it's an important (and too
often neglected) part of software development.

Regards,

	--dkg


--------------enig39C2CA2F58849057D8154A02
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iQIVAwUBS0KXLMzS7ZTSFznpAQpaig//V7x/9Gux8udLgD2vmUxlrMQx9jhEw6EI
QgQAbeCvQQhL20JWunNWxapc1DYQTpgZU1s2Lv2WzDmeDPVrEoUkyfiCVska6+mZ
A18zvFRv1HWP5taqTUdqUU3wh8usDC+Y6DSKR4QGuKhedJ1BA6relQ53D84Fzq2P
KhfIadP4N1yHS9s3TsR3Hp2VMzQZWN/6unSYpx0epQCPcgPf8wfowzojlBw9LH1m
XJ5F2KhbFI3mYmVeq17w+Gl+Rdi1DK5Wgsj/KGm15Qh5xXgj6rq7aQBdlPTNV9v/
yPckjWZQQ7B0ZdFgM+JqlMNzGCo2pQuhTMbryJtnklcxIMTXzZwuZ/Aay5VfHLOT
0ktOeZpXOv46i9hUSr/w4YXKSQnvKUZ+xcwrhhltuVnq1geSPCPcISBYRP0sXrTw
+5I5xFCV8Rpd9o9W14wpLr5e8WQ7G2YWyWjkBySNoY7B2RhZB95yPYHr6W1ijbWY
guTBqhfh7dJACpzre/7q+NpvIbEAXRJgLooxkhlw0uX0d7ahQgAXDDdzKgDw70BW
bmaqL/FhgE8NCbQURJzXuB/xJHnr5yVY9rTTyYaEtnT+pm6hDvo83YZt6E2E0lnC
gMaSPXce28ECrb958oVo850be2KQ8BYOPKfdatvz2979P+RvEBF+r5w5qsbNU/op
NikyPBWONWA=
=zmWS
-----END PGP SIGNATURE-----

--------------enig39C2CA2F58849057D8154A02--
