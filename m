From: Keith Packard <keithp-aN4HjG94KOLQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #37472] Lenovo U160 (i915 black screen)
Date: Tue, 12 Jul 2011 08:47:19 -0700
Message-ID: <yunei1vec1k.fsf@aiko.keithp.com>
References: <AtAvQwe5sAK.A.loH.OlYGOB@chimera> <gK_efVqs2fP.A.NJ.7lYGOB@chimera> <CAOJsxLGkWX61TLqwgL19tN5ZQuB2cUibPsNSvCB+Ydihtus__w@mail.gmail.com> <yun7h7pg8y7.fsf@aiko.keithp.com> <gisjqb6h0q.fsf@karga.hank.lab> <gioc0z6gn2.fsf@karga.hank.lab>
Mime-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha1; protocol="application/pgp-signature"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <gioc0z6gn2.fsf-XGOYYVKeyQUMVNNnvMCQ9Q@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: Dirk Gouders <gouders-UkMx63StcVObyvKg4uJg4nF3/sHOsa9/WV23jfQ1LcY@public.gmane.org>
Cc: Pekka Enberg <penberg-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Robse <rob-se-Dz115AEZgoU@public.gmane.org>, Chris Wilson <chris-Y6uKTt2uX1cEflXRtASbqLVCufUGDwFn@public.gmane.org>

--=-=-=
Content-Transfer-Encoding: quoted-printable

On Tue, 12 Jul 2011 10:35:13 +0200, Dirk Gouders <gouders-UkMx63StcVObyvKg4uJg4mZHpeb/A1Y/@public.gmane.org=
senkirchen.de> wrote:

> I'm sorry for the noise, I did not check new comments in the bug report
> where Robse noted that the workaround works for him.  I'm not sure if
> that means the bug can be closed.

A kernel commandline workaround isn't ideal; we should at least provide
a quirk that does this automatically for this hardware. Can we get the
PCI information for the graphics device on this hardware (lspci -v -n)?

=2D-=20
keith.packard-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org

--=-=-=
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iD8DBQFOHGyHQp8BWwlsTdMRAkNEAJ9mp2xyLUl1Pvd/taJez7H3GtnR4wCgrne7
b9hOIxlNuT0L6/89rxhwl+g=
=IVWY
-----END PGP SIGNATURE-----
--=-=-=--
