From: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
Subject: Re: [Bug #13306] hibernate slow on _second_ run
Date: Wed, 03 Jun 2009 23:01:14 +0200
Message-ID: <1244062874.22576.4.camel@johannes.local>
References: <4to6E2myxvG.A.muC.aIbIKB@chimera>
	 <200906012248.49304.rjw@sisk.pl> <1244018021.10665.4.camel@johannes.local>
	 <200906031116.05114.rjw@sisk.pl>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature"; boundary="=-IdtUnO3mScA/j/xAGIRK"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200906031116.05114.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>


--=-IdtUnO3mScA/j/xAGIRK
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Wed, 2009-06-03 at 11:16 +0200, Rafael J. Wysocki wrote:
> On Wednesday 03 June 2009, Johannes Berg wrote:
> > On Mon, 2009-06-01 at 22:48 +0200, Rafael J. Wysocki wrote:
> > > > No, it's now hanging 20 seconds much later, after returning to
> > > > userspace :( But the dmesg log still has a hang of ~20.5 seconds ju=
st
> > > > like before, between two kernel messages...
> > >=20
> > > Hmm.  Can you try to comment out suspend_device_irqs() and resume_dev=
ice_irqs()
> > > in drivers/base/power/main.c and see what happens?
> >=20
> > Oddly, that does seem to help. I'm sure it can't be a solution though :=
)
>=20
> Not really. ;-)
>=20
> Still, something like the (untested) patch below can be.  Can you please =
give
> it a try?

Seems to work, though I'm not sure yet whether it really helps, that
needs some more verification, will let you know tomorrow.

johannes

--=-IdtUnO3mScA/j/xAGIRK
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQIcBAABAgAGBQJKJuSXAAoJEODzc/N7+QmaeC8QAJgudr38dsDH26qAriJbbpHO
bLF+PZPKVjRr/n80RMW15qff0JcgBzDNsZbNkM0z/Oqn4Lt1gWVlce38JVXD89SD
RaCEbrehN7caQaXa2jJiEOCvmuU7LcF86joApL1VImhrYyWtaPpELMsBvpuGZGGV
mg8qlfAYOpTuvQopdMSlKS+zrgOUCrnTS9b/NpHlcFzKLFZriwkh73u0828KBGPT
XBUIOBBAgnJc2hrX4YpMcXjVEC8A368l+RYE1V0VpKPlrgohdnUF9kFRIDqr8pqs
uSoeXN3eqa7Z3iCOhG85njGwytnWm/z/iTPFgLGU6DBlHImE49trvLjgGUyDoOlQ
XObID3kSYxOSo51kBGJHKaBC60V//8zSWGQJkSYlevaUc3XXBrwQzTEKJcFJsbyQ
BdF8MvQvAERq6u6/hzALtn+igOVdMroPWy5m0a8IKlaUItfRpUqCLZ2N3Em/lSty
OhZfm1dYtVtearG4MAvh9E+WuECMjnu14yo/5BkuGF34dTOLh06+8n2o4itnUeEX
cSJXtLYtuyPUErBcGoxLyPsEwyD+MK9s3oJVyO8lRlSofgzlR3HMzKcdHfoeviwp
8xVMPZkpOxW2MMgxm8BXDYe0ab9h6iSs5wS22vUQwoYxnW5ADps0i4qSKFc+CB3n
uOjbC3ixi7toBMpaOte0
=br0p
-----END PGP SIGNATURE-----

--=-IdtUnO3mScA/j/xAGIRK--
