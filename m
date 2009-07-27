From: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #13319] Page allocation failures with b43 and p54usb
Date: Mon, 27 Jul 2009 02:37:13 -0700 (PDT)
Message-ID: <alpine.DEB.2.00.0907270227420.15760@chino.kir.corp.google.com>
References: <DizPU9GBfHF.A.kgF.iWObKB@chimera> <H5-1lZIIeYK.A.Pi.BZObKB@chimera> <4A6CF220.7080605@lwfinger.net> <alpine.DEB.2.00.0907261722140.21259@chino.kir.corp.google.com> <84144f020907270008h2a985278of68e70ff1ee9265c@mail.gmail.com>
Mime-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="497827084-1036803123-1248687436=:15760"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1248687441; bh=HRvd5qda/gKZU7UcFuL/+X+pzKI=;
	h=DomainKey-Signature:Date:From:X-X-Sender:To:cc:Subject:
	 In-Reply-To:Message-ID:References:User-Agent:MIME-Version:
	 Content-Type:X-System-Of-Record; b=n2fGKwzhD4dGvt2XyHbLbJyZgO798OX
	FRaFWnodx4AxNiP/tVYztycxpRe3XS3NAGtPn+8lTfL4tuX194s/EsA==
In-Reply-To: <84144f020907270008h2a985278of68e70ff1ee9265c-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Cc: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--497827084-1036803123-1248687436=:15760
Content-Type: TEXT/PLAIN; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Mon, 27 Jul 2009, Pekka Enberg wrote:

> > Hmm, I'm remembering differently. =A0I thought the root problem here has
> > only been fixed in Pekka's slab-2.6.git tree with "slub: add option to
> > disable higher order debugging slabs" and isn't currently in Linus' tre=
e.
>=20
> Yup, the fix is in slab.git and queued for 2.6.32. There was some
> complaints from Christoph from the patch that need to be addressed
> still.
>=20

From what I recall, he asked that calculate_sizes() be called twice, first =

to determine if get_order(s->size) increased as the result of the metadata =

and, if so, a second time with the flags disabled.

slab_debug=3DO only disables debugging options that increase the min order =

of slab as defined in DEBUG_FLAGS; it doesn't selectively disable some of=20
them when get_order(s->size) grows.  So it's quite sane, like my patch=20
does, to disable all DEBUG_FLAGS when

	get_order(s->objsize) + DEBUG_SIZE_FLAGS > get_order(s->objsize)

without calling calculate_sizes() twice.

We need DEBUG_FLAGS to determine which flags to mask off to reduce the=20
minimum order, so I don't see DEBUG_FLAGS_SIZE as troublesome.

Christoph?
--497827084-1036803123-1248687436=:15760--
