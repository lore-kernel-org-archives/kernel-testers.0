From: Eric Anholt <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>
Subject: Re: [Bug #12574] possible circular locking dependency detected
Date: Tue, 10 Feb 2009 14:41:56 -0800
Message-ID: <1234305716.32506.10.camel@gaiman>
References: <AIghyjFgMFP.A.uZD._10jJB@chimera>
	 <sWhNs83kKPE.A.4cG.E30jJB@chimera>  <20090210223711.GA6809@google.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1; protocol="application/pgp-signature"; boundary="=-1Z7gR/hHA0tX+ZN1mhZM"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090210223711.GA6809-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: "Michael S. Tsirkin" <m.s.tsirkin-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Dave Airlie <airlied-cv59FeDIM0c@public.gmane.org>, dri-devel-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>


--=-1Z7gR/hHA0tX+ZN1mhZM
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Wed, 2009-02-11 at 00:37 +0200, Michael S. Tsirkin wrote:
> Dave, dri guys,
> Could you take a look at this circular dependency please (below)?  I
> observe it when suspending laptop with radeon drm loaded and with
> lockdep enabled. It seems that the root of the problem is that
> various vm ops such as drm_vm_open, drm_mmap) are called with mm
> semaphore taken, and take dev->struct_mutex. On the other hand,
> drm_rmmap_locked is called with dev->struct_mutex, and calls mtrr_del
> which depends on mm semaphore indirectly.
>=20
> What do you think?

Yes, there are real lock inversions now due to the GTT mmap code.  It's
going to be a pain to fix (I tried getting the mmap_sem -> struct_mutex
path to go away, but the fact that mmap_sem is held over the fault
handler pretty much kills that).  It's high on the list, though.

--=20
Eric Anholt
eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org                         eric.anholt-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org



--=-1Z7gR/hHA0tX+ZN1mhZM
Content-Type: application/pgp-signature; name=signature.asc
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.9 (GNU/Linux)

iEYEABECAAYFAkmSArQACgkQHUdvYGzw6ved3ACff4huObnqoU+6sC0vjVh1NYy4
CFAAoIKSScvTf88cLX+SVQh+PDgQbU8B
=GKtc
-----END PGP SIGNATURE-----

--=-1Z7gR/hHA0tX+ZN1mhZM--
