From: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
Subject: Re: [Bug #14267] Disassociating atheros wlan
Date: Mon, 23 Nov 2009 11:50:21 +0100
Message-ID: <1258973421.7094.152.camel@johannes.local>
References: <7qTjLRFNcGF.A.eSE.kCACLB@chimera>
	 <mYW9sxtWd2G.A.EnF.gDACLB@chimera> <4B08258E.9050607@gmail.com>
	 <1258886823.7094.101.camel@johannes.local>
	 <20091122162936.ac603ad1.kristoffer.ericson@gmail.com>
	 <1258969366.7094.136.camel@johannes.local>
	 <20091123105433.d0eb2477.kristoffer.ericson@gmail.com>
	 <1258972425.7094.144.camel@johannes.local>
	 <20091123114832.0a7730a7.kristoffer.ericson@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature"; boundary="=-A45qwp2UXjLOJ0uqXTZo"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20091123114832.0a7730a7.kristoffer.ericson-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: Kristoffer Ericson <kristoffer.ericson-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "John W. Linville" <linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>


--=-A45qwp2UXjLOJ0uqXTZo
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2009-11-23 at 11:48 +0100, Kristoffer Ericson wrote:
> On Mon, 23 Nov 2009 11:33:45 +0100
> Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org> wrote:
>=20
> > On Mon, 2009-11-23 at 10:54 +0100, Kristoffer Ericson wrote:
> >=20
> > > > > > +	hw->wiphy->ps_default =3D false;
> > > > > > +
> >=20
> > > I tried the patch last night as I said, thought that it was working. =
But not long after
> > > sending that email I started seeing those disassociations again (that=
 not appear at all in 2.6.30).
> > > So doesnt seem like it was due to that after all. :(
> >=20
> > But then how reliable is your bisect result? The effect of the patch in
> > question would've been completely disabled by this line.
>=20
> Will have to ask Justin about that.=20

Oh, sorry. Maybe you're just running into different bugs that have the
same visible effect?

johannes

--=-A45qwp2UXjLOJ0uqXTZo
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQIcBAABAgAGBQJLCmjpAAoJEODzc/N7+Qma8kIQAIlZx3gkanhAbIabAdtQxTw5
OoImyZZ6/GiH2xPFku7H7nvWJHnr866Kyyjxdy7SV9H9cXCXeO6VTCoaMgeh91Sr
UBdayWn/xKudjC/w+ML1wajxquCFHBwWbgMbvjH1pxt/C4NPnb4d3GxrerwHZlCF
rYahiP01rIrWQSDuUORfT/9hLh/8zkmZa0uuGoNZr5J9IGrSPwH6hssQxtJkQ6ZJ
d/5xuQJP1vWFaEbCM1tR0sAdw3Uup05yQdrP8uaXp0kUpD2ecD+KN2cIi4Buocba
QkgdCt55gUKRhLQSySdyP4b5Gfu3rKRTAthhKMIvGCgm6xBF3w9mSTun61shfCiw
pc6Fta6aVGIfyhwCz5upjGEhPwLU+9YVEL/jEqt0AUz0Qn0rWzCYrwMIcZGfCYYU
UtZCDya3d/xELQNVMQP+G4matVmy6v4YfBU8Z8lhjlHFxwCsQh1K/2RExtx8aU6J
prbq6acYtkb5pU3v71BBs+iZ9QHwj2hN28Bn+NhgPvyIC1p3kA2UwcyTVamM4/sD
BvQV7lMBRLCkuW+KWCArlxyjgcQw693vUg9uLcUFEZsTq4t0qLF4mjO21+jQqo8b
GwTkZ4UwEVdszWAqMNfVR4uGjyWiWsysXhmpmbr7pNWQBdrmJIK86+07dSpYDk6J
v/FI9dZY/Ul4I6gN14Bn
=V2GR
-----END PGP SIGNATURE-----

--=-A45qwp2UXjLOJ0uqXTZo--
