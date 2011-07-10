From: Keith Packard <keithp-aN4HjG94KOLQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #37472] Lenovo U160 (i915 black screen)
Date: Sun, 10 Jul 2011 13:46:40 -0700
Message-ID: <yun7h7pg8y7.fsf@aiko.keithp.com>
References: <AtAvQwe5sAK.A.loH.OlYGOB@chimera> <gK_efVqs2fP.A.NJ.7lYGOB@chimera> <CAOJsxLGkWX61TLqwgL19tN5ZQuB2cUibPsNSvCB+Ydihtus__w@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; boundary="=-=-=";
	micalg=pgp-sha1; protocol="application/pgp-signature"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <CAOJsxLGkWX61TLqwgL19tN5ZQuB2cUibPsNSvCB+Ydihtus__w-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: Pekka Enberg <penberg-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Robse <rob-se-Dz115AEZgoU@public.gmane.org>, Chris Wilson <chris-Y6uKTt2uX1cEflXRtASbqLVCufUGDwFn@public.gmane.org>

--=-=-=
Content-Transfer-Encoding: quoted-printable

On Sun, 10 Jul 2011 14:56:19 +0300, Pekka Enberg <penberg-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org> wrote:

> There's no mention that the i915 developers know about this problem so
> I'm CC'ing Keith and Chris.

Thanks. I've added a comment to the bug:

First off, of course you are encouraged to re-test with 3.0-rc6 just to
make sure it hasn't changed in some way. I don't think anything has
changed enough to affect this, but it's always good to be sure.

I note a long sequence of patches that are supposed to help with the
U160:

448f53a1ede54eb854d036abf54573281412d650 drm/i915/bios: Reverse order of 10=
0/120 Mhz SSC clocks
bcfbbce822d219eb587acaba8a6e062bbeae4761 Revert "drm/i915/bios: Reverse ord=
er of 100/120 Mhz SSC clocks"
a76150302d6e7ebc43e1a1ddaee7fd51db8da3b3 drm/i915: Add a module option to o=
verride the use of SSC

I'm not sure why a quirk wasn't added for this hardware; it's clearly
'non-standard' in some mystic way.

=2D-=20
keith.packard-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org

--=-=-=
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.11 (GNU/Linux)

iD8DBQFOGg+wQp8BWwlsTdMRAlJ9AJ0aysob1rpLhcgLgHLmaSPOpKbTPQCdE9sg
wS4P4BsoGtzL9Vj1SuYP2lA=
=UXgp
-----END PGP SIGNATURE-----
--=-=-=--
