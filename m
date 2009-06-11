From: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
Subject: Re: [Bug #13319] Page allocation failures with b43 and p54usb
Date: Thu, 11 Jun 2009 20:41:36 +0200
Message-ID: <1244745696.29447.0.camel@johannes.local>
References: <bCxQpon4SCJ.A.RrF.yY7KKB@chimera>
	 <D9VoutSOyXP.A.hvH.Ha7KKB@chimera> <4A2BBC30.2030300@lwfinger.net>
	 <84144f020906070640rf5ab14nbf66d3ca7c97675f@mail.gmail.com>
	 <4A2BCC6F.8090004@redhat.com>
	 <84144f020906070732l31786156r5d9753a0cabfde79@mail.gmail.com>
	 <20090608101739.GA15377@csn.ul.ie>
	 <84144f020906080352k57f12ff9pbd696da5f332ac1a@mail.gmail.com>
	 <20090608110303.GD15377@csn.ul.ie>
	 <Pine.LNX.4.64.0906081657001.7036@melkki.cs.Helsinki.FI>
	 <20090608141212.GE15070@csn.ul.ie> <1244531201.5024.3.camel@penberg-laptop>
	 <alpine.DEB.2.00.0906090046000.28701@chino.kir.corp.google.com>
	 <1244534315.5024.34.camel@penberg-laptop>
	 <alpine.DEB.2.00.0906090105270.28701@chino.kir.corp.google.com>
	 <1244536124.5024.41.camel@penberg-laptop>  <4A2FC62C.6030407@lwfinger.net>
	 <1244648659.23799.26.camel@penberg-laptop>
	 <alpine.DEB.1.10.0906111040440.29827@gentwo.org>
	 <1244732992.17483.54.camel@penberg-laptop>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature"; boundary="=-/FkWK6hML7XJpZj+OvK6"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1244732992.17483.54.camel@penberg-laptop>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Cc: Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>, David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, KAMEZAWA Hiroyuki <kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, npiggin-l3A5Bk7waGM@public.gmane.org, yanmin.zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org


--=-/FkWK6hML7XJpZj+OvK6
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Thu, 2009-06-11 at 18:09 +0300, Pekka Enberg wrote:
> On Wed, 10 Jun 2009, Pekka Enberg wrote:
> > > Aha, SLUB thinks the minimum order for 4096 is 1. I guess you have
> > > CONFIG_SLUB_DEBUG enabled? If yes, something like to following should
> > > help. Christoph, are you okay with this patch?
>=20
> On Thu, 2009-06-11 at 10:41 -0400, Christoph Lameter wrote:
> > He likely has CONFIG_SLUB_DEBUG_ON set which enables debugging and thus
> > needs more than the payload for metadata.
>=20
> Yup. I suspect a lot of people who are doing _testing_ enable that. If
> you're unhappy with my patch (the get_order one which shouldn't affect
> that many caches anyway), any suggestions how to fix this up? It seems
> that the wireless stack at least does quite a few kmalloc(4096)
> allocations.

I think networking rounds up allocations, but it's not wireless per se.

johannes

--=-/FkWK6hML7XJpZj+OvK6
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQIcBAABAgAGBQJKMU/cAAoJEODzc/N7+QmaoRQP/2YeIoVKdIfBRZAZf3Ujq23j
TV9AUxUXVfP4weCeveuFbCJMUG2NspBTOLfHzXHh0b+5RXwM6Kf1hG/5e9Z8nyPv
f7t3DMnTiIjmnPr9zvffGlp0FAvlJePe0sgrlCV4DMyxEWgwZ31T8p5reYxGRAYd
tQt9Cdeea6grFtbaXAKgYR81xgNSLvRM2CVji9qt4IGorwc+iThxwvUgmF8iNCZg
J1ml9LHq6SYE//5at1GbpBcMgD3plJhLCIKRta+Do/be0+L+rhKEe9DB/YW34jgr
sYg2/Zw74D8SVP/Dv7LYc4f4TeyfSRfIb4DfvDqTHyI3g7lT5FemmlRjfF123+HJ
c6E3eRIC/8RkOudXJfYfL8xx3Rnmm9fXTZjVyO3ohdgDgvAlutDcBWWG/xVd7lyn
JEH452bp8m/gRpd4WrGB9OouGUWpVkxKT/UJvbWyB+wDVDzlQxxsYcDkyWh2cQGD
zDhLOFya5DvV6B3avZT0TxkfO2CtPElpVWEJirwwXnwGWaIF3mYszudzimGt3toi
GqXDcmlxuyoTrpvBhri/U/fHWXh7vjMirgyRSos2JqkROXKjLGknxhcbjZA0wS8D
auETghTc5Wv/BJGmO1UKeyinw1JPtnd4ciMSq8FHnlq/qcOewXNs0JMZuKQ2KoHX
oOYpDEkH19RPmzmrFILO
=haI9
-----END PGP SIGNATURE-----

--=-/FkWK6hML7XJpZj+OvK6--
