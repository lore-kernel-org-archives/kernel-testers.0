From: Michael Ellerman <michael-Gsx/Oe8HsFggBc27wqDAHg@public.gmane.org>
Subject: Re: [Bug #15589] 2.6.34-rc1: Badness at fs/proc/generic.c:316
Date: Wed, 21 Apr 2010 10:21:39 +1000
Message-ID: <1271809299.13262.6.camel@concordia>
References: <deuQKFRcc0B.A.3EG.BRSzLB@tosh> <YeFfFNFyTSF.A.vUB.fSSzLB@tosh>
	 <alpine.DEB.2.01.1004192339190.13016@bogon.housecafe.de>
	 <1271765898.4324.2.camel@concordia>  <20100421155547.GA4222@x200>
Reply-To: michael-Gsx/Oe8HsFggBc27wqDAHg@public.gmane.org
Mime-Version: 1.0
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature"; boundary="=-ks/erLzbOJ+lZLQiQRTx"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20100421155547.GA4222@x200>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: Alexey Dobriyan <adobriyan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Christian Kujau <lists-AanptEQQ3TL9uQeqpI+JUg@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linuxppc-dev-mnsaURCQ41sdnm+yROfE0A@public.gmane.org, schwab-Td1EMuHUCqxL1ZNQvxDV9g@public.gmane.org, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>


--=-ks/erLzbOJ+lZLQiQRTx
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2010-04-21 at 18:55 +0300, Alexey Dobriyan wrote:
> On Tue, Apr 20, 2010 at 10:18:18PM +1000, Michael Ellerman wrote:
> > On Mon, 2010-04-19 at 23:45 -0700, Christian Kujau wrote:
> > --- a/fs/proc/proc_devtree.c
> > +++ b/fs/proc/proc_devtree.c
> > @@ -175,6 +175,24 @@ retry:
> >         return fixed_name;
> >  }
> > =20
> > +static const char *unslash_name(const char *name)
> > +{
> > +       char *p, *fixed_name;
> > +
> > +       fixed_name =3D kstrdup(name);
> > +       if (!fixed_name) {
> > +               printk(KERN_ERR "device-tree: Out of memory trying to u=
nslash "
> > +                               "name \"%s\"\n", name);
> > +               return name;
> > +       }
> > +
> > +       p =3D fixed_name;
> > +       while ((p =3D strstr(p, "/")))
> > +               *p++ =3D '_';
>=20
> This is wasteful. :-)

Whatever, patches welcome :)

> Also, I hope we won't spit message every time allocation fail.

We do. Your system is mostly hosed anyway, but feel free to rate limit
it or something.

The error handling in there is a bit dubious, if the alloc fails we just
return the old name, which we know is bogus. It should probably return
NULL and the calling code can check - same for fixup_name().

cheers

--=-ks/erLzbOJ+lZLQiQRTx
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.9 (GNU/Linux)

iEYEABECAAYFAkvORRAACgkQdSjSd0sB4dKJqwCgq79/5W+simjGRQJ4tQYpfcX7
gzoAoLD3mnRvEEi8RnPB+OidBrer+tPx
=9O+3
-----END PGP SIGNATURE-----

--=-ks/erLzbOJ+lZLQiQRTx--
