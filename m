From: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
Subject: Re: [Bug #14267] Disassociating atheros wlan
Date: Mon, 23 Nov 2009 10:42:46 +0100
Message-ID: <1258969366.7094.136.camel@johannes.local>
References: <7qTjLRFNcGF.A.eSE.kCACLB@chimera>
	 <mYW9sxtWd2G.A.EnF.gDACLB@chimera> <4B08258E.9050607@gmail.com>
	 <1258886823.7094.101.camel@johannes.local>
	 <20091122162936.ac603ad1.kristoffer.ericson@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature"; boundary="=-tI7BhJzGHXdKd8/OEBT5"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20091122162936.ac603ad1.kristoffer.ericson-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: Kristoffer Ericson <kristoffer.ericson-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "John W. Linville" <linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>


--=-tI7BhJzGHXdKd8/OEBT5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, 2009-11-22 at 16:29 +0100, Kristoffer Ericson wrote:

> > +	hw->wiphy->ps_default =3D false;
> > +
> >  	hw->queues =3D 4;
> >  	hw->max_rates =3D 4;
> >  	hw->channel_change_time =3D 5000;
> >=20
> >=20
>=20
> Johannes, am I correct in thinking that this also solves the decreased si=
gnal strength
> issue in bug http://bugzilla.kernel.org/show_bug.cgi?id=3D13807 ?

Unless the driver is really very broken, that's rather unlikely.

johannes

--=-tI7BhJzGHXdKd8/OEBT5
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQIcBAABAgAGBQJLClkTAAoJEODzc/N7+QmabvoQAI/WvqmSw9Tmkc/5bnVsCgng
nYKDxefC4irZyDknjqqB16D3Qf6k9qvhUr5X0jGIkdJ35XAK0DfltfJn6zNgNT6z
cxc2xB0ye9X5nZn0a9WxNpG06kz/ayu/1igZ2tsyOKOHOGstwuILEd3k7PDDBSvd
uXSPvI0XOV8DkkMrhWSqsZ0rbxqxrh+Hop94BHDBRvZQ9WS6weWh0wuF0BQUkhEz
zPm63e4OVgb3+LFwIuoANGMY3FzfPmaV+3yErZiROn02uJPELNBpwcQGR2zxlQTM
eNJGkAXYg4Hjde+3+n1DmofWDPJTgXzDLSt28NjHopcXMYs9z+WqnOCyFiOhNn9H
DGMi04X8CcYP0AXXyonmk62WR3SsosCpoQoDnXjcmP8OyrcRW31hiVBHBkO6dqLz
Cs5owgtcydt2jZ199mlrfPCuqBaRjdusYyKkqh5hgiSWXf4y61I8Wnv4VbcMeFdR
fWTRoE3G0fAVklS6XPxkJUsojruE6j6Iyz/OoaoLvmPpOTQcNaxDe7k+avb0Dqzj
ywzho+yieLE3ymRNFsNxlb3CCrR7+sYSsoWscy5omt/Eu7V6wID0ny91gQ/CsYwM
cC1vzVbqL3/5ktHezHxlz/xoyivZKJoQX6e4YmRzElN301Sv0fMihQDvxOdpMomP
x+m7P8PesH+WUthQasdz
=or9T
-----END PGP SIGNATURE-----

--=-tI7BhJzGHXdKd8/OEBT5--
