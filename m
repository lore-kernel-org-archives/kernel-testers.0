From: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
Subject: Re: [Bug #13319] Page allocation failures with b43 and p54usb
Date: Wed, 10 Jun 2009 17:52:54 +0200
Message-ID: <1244649174.6165.0.camel@johannes.local>
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
	 <1244648968.23799.27.camel@penberg-laptop>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature"; boundary="=-OUQE1xCLzNko16mZ0aZq"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1244648968.23799.27.camel@penberg-laptop>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Cc: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>, David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, KAMEZAWA Hiroyuki <kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, npiggin-l3A5Bk7waGM@public.gmane.org, yanmin.zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org


--=-OUQE1xCLzNko16mZ0aZq
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Wed, 2009-06-10 at 18:49 +0300, Pekka Enberg wrote:
> On Wed, 2009-06-10 at 18:44 +0300, Pekka Enberg wrote:
>=20
> > Aha, SLUB thinks the minimum order for 4096 is 1. I guess you have
> > CONFIG_SLUB_DEBUG enabled? If yes, something like to following should
> > help. Christoph, are you okay with this patch?


> +	if ((size + MAX_DEBUG_SIZE) >=3D PAGE_SIZE)

&& size <=3D PAGE_SIZE

? Or is this a path that only happens for small allocations?

> +		s->flags &=3D ~(SLAB_POISON|SLAB_RED_ZONE|SLAB_STORE_USER);
> +
>  	if (!calculate_sizes(s, -1))
>  		goto error;

johannes

--=-OUQE1xCLzNko16mZ0aZq
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQIcBAABAgAGBQJKL9bSAAoJEODzc/N7+QmaUSQP/iPIAH3qI2Mv7iEt5wO3GlfK
sZOcaO6g61qnyAXJEMabza0GV07Dzcs95iUHlNP8tBGzrgKCL5zoDxNxgWXSqOfg
XcHV7l1VFW9GKd8CtSyS+AufiOOA8HOF7r6dJj4A7622+TBlyly9Jx9SCZHKLkEo
D/0TDTlKcFD0bzn6eMatkm+B/J+CV8TsaLtDa7kLo9ZyHOLwgTl2fUiFKBova855
mo+c7x5K7UnqHv/8mGCcxzggV7xAcj7j+w/2sNBamvJ2M0DWKfkx3zqFuYpyAitr
UT4Q47v9NBZbfO1vft6tgZDUHEL3wanb+Cq6Pem7NJDWVbSc7dll623vBzUaleFq
9+qlKtw6Sl6OqVs3VOsEZBi4NpvcfqsCWUBKpyvI8dtKz9pncQl/7Ej3h2o33zjs
utRiq25uW81qO3yJwf9flDJHkzJXLFhe5zkroX+kTBc3DFfGihSjOEx/OsPvvXRQ
M8TXgLLOJ4RK3fz+mkqbZipKH6pdxTP3n97S1N7G99B49dJZNGuU6E/Kg3U514q7
kG3iEnhZPMPPMilOaXk2MdEy0xxti0JFmOOEtCFv2bFFpbeOMWR4jmFJssuL76Qh
VVrpKB7rMC5/2X6xzEv3ZfowZcM3/a1Xvc8JcjhmPP+FBqPcVsUIMCACpxeHirOU
od+BHNgN1cwu9wLZHCKx
=aWcn
-----END PGP SIGNATURE-----

--=-OUQE1xCLzNko16mZ0aZq--
