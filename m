From: Zhenyu Wang <zhenyuw-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
Subject: Re: [linux-pm] [regression] "drm/i915: implement new pm ops"
 disables irq on aborted s2disk
Date: Thu, 4 Feb 2010 09:31:57 +0800
Message-ID: <20100204013157.GA30011@zhen-devel.sh.intel.com>
References: <4B695BA0.4000007@tuffmail.co.uk>
 <201002032344.41915.rjw@sisk.pl>
Reply-To: Zhenyu Wang <zhenyuw-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="MGYHOYXEY6WxJCY8"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <201002032344.41915.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org, Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>, Eric Anholt <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>, dri-devel-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>


--MGYHOYXEY6WxJCY8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2010.02.03 23:44:41 +0100, Rafael J. Wysocki wrote:
> On Wednesday 03 February 2010, Alan Jenkins wrote:
> > Hi
> >=20
> > I found this regression on my EeePC 701 with modesetting enabled.  When=
=20
> > I hibernate using s2disk, I can abort the hibernation by pressing the=
=20
> > backspace key.  Doing so breaks X on 2.6.32-rc6 (but not 2.6.32).
>=20
> Yeah.
>=20
> To be honest, I knew that's going to happen, but didn't have the time to =
take
> care of it.
>=20
> The problem is that i915 does literally _nothing_ in its .thaw() callback,
> although it should at least reverse whatever .freeze() did to the hardware
> (and memory allocations and so on), so that the adapter is functional
> after creating the image.
>=20
> Fixing this requires some thought, though, because at the moment .freeze()
> thinks it's .suspend(), which is not the case as this report clearly show=
s.
> So, in fact i915_pci_suspend() has to be split into the .freeze() part and
> the poweroff part cleanly and that's not  so simple (at least to me).
>=20

Right, I think that'll be more clean, stuff in i915_save/restore_state() ne=
ed
to be splited too, especially isolate stuff for mode setting and other devi=
ce
state, as what my original purpose for this is to remove extra mode setting=
=20
cycle in old behavior so not waste time for hibernate.

--=20
Open Source Technology Center, Intel ltd.

$gpg --keyserver wwwkeys.pgp.net --recv-keys 4D781827

--MGYHOYXEY6WxJCY8
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)

iEYEARECAAYFAktqI40ACgkQsQQaM014GCepcwCfU4d/sVAWUPcNxuQenKxxyJy/
UywAnilCQmiBzAA2YS1VVrjk5Ov1pZcm
=knOz
-----END PGP SIGNATURE-----

--MGYHOYXEY6WxJCY8--
