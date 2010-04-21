From: Michael Ellerman <michael-Gsx/Oe8HsFggBc27wqDAHg@public.gmane.org>
Subject: Re: [Bug #15589] 2.6.34-rc1: Badness at fs/proc/generic.c:316
Date: Wed, 21 Apr 2010 10:25:27 +1000
Message-ID: <1271809527.13262.10.camel@concordia>
References: <deuQKFRcc0B.A.3EG.BRSzLB@tosh> <YeFfFNFyTSF.A.vUB.fSSzLB@tosh>
	 <alpine.DEB.2.01.1004192339190.13016@bogon.housecafe.de>
	 <1271765898.4324.2.camel@concordia>
	 <alpine.DEB.2.01.1004201104170.13016@bogon.housecafe.de>
Reply-To: michael-Gsx/Oe8HsFggBc27wqDAHg@public.gmane.org
Mime-Version: 1.0
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature"; boundary="=-7mMsqZUyl6FWoxy/VMhC"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.DEB.2.01.1004201104170.13016-uKsf7x9sgtqQ/Pez2Lbyp4QuADTiUCJX@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: Christian Kujau <lists-AanptEQQ3TL9uQeqpI+JUg@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linuxppc-dev-mnsaURCQ41sdnm+yROfE0A@public.gmane.org, schwab-Td1EMuHUCqxL1ZNQvxDV9g@public.gmane.org, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, adobriyan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>


--=-7mMsqZUyl6FWoxy/VMhC
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2010-04-20 at 11:15 -0700, Christian Kujau wrote:
> On Tue, 20 Apr 2010 at 22:18, Michael Ellerman wrote:
> > Try this 100% unbuilt, 100% untested patch.
>=20
> I added GFP_KERNEL to kstrdup to make the compile error go away:
>=20
> fs/proc/proc_devtree.c: In function =E2=80=98unslash_name=E2=80=99:
> fs/proc/proc_devtree.c:183: error: too few arguments to function =E2=80=
=98kstrdup=E2=80=99
> make[2]: *** [fs/proc/proc_devtree.o] Error 1
> make[1]: *** [fs/proc] Error 2
> make: *** [fs] Error 2

Yeah oops, told you I hadn't built it.

> And now 2.6.34-rc5 compiles and boots without the warning. Thanks!=20
> New dmesg and /proc/device-tree on:
>=20
>   http://nerdbynature.de/bits/2.6.34-rc1/xlate_proc_name/

Cool, and we see:

./uni-n@f8000000/i2c@f8001000/i2c-bus@1/fan@5c/pulses_rev

Which is the one that needed fixing.

> Alexey mentioned that this is "wasteful" - does it make the kernel slower=
?=20
> I have not done any performance tests, but I'd rather stick with the=20
> warning than make this Powerbook G4 any more slower :-\

Maybe a little. It has to check every string to see if it contains a
"/". But then you save the cost of taking an exeception for the WARN,
which might make up the difference. But it's a one time fixup at boot,
so it's not going to be noticeable.

cheers

--=-7mMsqZUyl6FWoxy/VMhC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.9 (GNU/Linux)

iEYEABECAAYFAkvORfYACgkQdSjSd0sB4dJ5TwCfS/XLWyVT0bVe+ByKEDs3H1Ym
Ja8AoLErg+pQjsiMOCJZsqagicowbCiV
=mzdz
-----END PGP SIGNATURE-----

--=-7mMsqZUyl6FWoxy/VMhC--
