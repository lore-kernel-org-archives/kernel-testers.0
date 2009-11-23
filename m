From: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
Subject: Re: [Bug #14267] Disassociating atheros wlan
Date: Mon, 23 Nov 2009 11:33:45 +0100
Message-ID: <1258972425.7094.144.camel@johannes.local>
References: <7qTjLRFNcGF.A.eSE.kCACLB@chimera>
	 <mYW9sxtWd2G.A.EnF.gDACLB@chimera> <4B08258E.9050607@gmail.com>
	 <1258886823.7094.101.camel@johannes.local>
	 <20091122162936.ac603ad1.kristoffer.ericson@gmail.com>
	 <1258969366.7094.136.camel@johannes.local>
	 <20091123105433.d0eb2477.kristoffer.ericson@gmail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature"; boundary="=-xVUgnPsXRvK50gpfLA4P"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20091123105433.d0eb2477.kristoffer.ericson-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: Kristoffer Ericson <kristoffer.ericson-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "John W. Linville" <linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>


--=-xVUgnPsXRvK50gpfLA4P
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2009-11-23 at 10:54 +0100, Kristoffer Ericson wrote:

> > > > +	hw->wiphy->ps_default =3D false;
> > > > +

> I tried the patch last night as I said, thought that it was working. But =
not long after
> sending that email I started seeing those disassociations again (that not=
 appear at all in 2.6.30).
> So doesnt seem like it was due to that after all. :(

But then how reliable is your bisect result? The effect of the patch in
question would've been completely disabled by this line.

johannes

--=-xVUgnPsXRvK50gpfLA4P
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQIcBAABAgAGBQJLCmUFAAoJEODzc/N7+QmaLsgP/19LXbtBl2Y8q3JGAnzWrZ2z
kLo/3LSvDCkw8qDaF8G3gEyVZQwlcsYvIwGkYtIo9t+ihADWuovUDactsiBu9uJ7
mGkj1Dwf86fHUVtaz316eL7JIvXAbUxj7HJthPOXBYtKyhDKMCV19Id6AW0n/1RL
N9m5oYtbZqczUxOvQplF/vi7x95jFxA5baAoGVansl+hUzkRyp2GxJc0H6YdMz9E
bwl5nE/HAowDNU93ITYr2IY0KNmKSI2GRXLW4INMSa9t1GJgPAKqZpJBFayKJH5S
7e53ebWhJRD1jLjjxgVsihMA7vHAxjplVFvjRtGJQZNgRe5w6DWcCGFY/PYRR6qC
dk4hELlyI333IzZpiHrwbwsKtcK2SOY1KbUUyuaWPbawroks4lpRVoUWXZYFOTv+
jPXq7uiVUcdODhT8/o7WAXrvdmdeJusoIE+yK/Ri8LwlTo2jV1Ch6q2Q5UbAA4gj
GY5w4o4k4drVCS8c2t+Z35e0P8qSqFXw/3+yz5KvPwY73nHPMuRv8q85razo346b
2njp56FTKk65LvGbXWGzARVQTQomxgVYKxx5Cyx9bXocHb4kpL7A+d6vnT15fJxy
I1B3Cu8vwfxo1eB/5ziCncSVgmsNMWT/uicK4Lmnd42s3zJxmUUvjlNrlszNhOWJ
w+FAtVn9X0eRnbhNtUA8
=Fr75
-----END PGP SIGNATURE-----

--=-xVUgnPsXRvK50gpfLA4P--
