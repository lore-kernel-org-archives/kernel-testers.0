From: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #13319] Page allocation failures with b43 and p54usb
Date: Tue, 30 Jun 2009 00:47:25 -0700 (PDT)
Message-ID: <alpine.DEB.2.00.0906300032310.11018@chino.kir.corp.google.com>
References: <etTXaRqGgAC.A.SaE.6iASKB@chimera> <5Hhc7UkUKEO.A.fNH.4kASKB@chimera> <4A48F114.1010702@lwfinger.net> <alpine.DEB.2.00.0906291642520.17663@chino.kir.corp.google.com> <84144f020906292355o7cf63f7ch47bd19961cf92da3@mail.gmail.com>
Mime-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="497827084-588220262-1246348047=:11018"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1246348052; bh=ZE1P4JYah+o9IWz9LUJviJ+KPKM=;
	h=DomainKey-Signature:Date:From:X-X-Sender:To:cc:Subject:
	 In-Reply-To:Message-ID:References:User-Agent:MIME-Version:
	 Content-Type:X-System-Of-Record; b=MrpISoMW8Se7SlM9wSQCTv7DuORUUNJ
	NdNVCXh4WDYkRLJRDCpIDmCOzvpccvNxypnkWfnQFl3k9YBwHhYkHMg==
In-Reply-To: <84144f020906292355o7cf63f7ch47bd19961cf92da3-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Cc: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--497827084-588220262-1246348047=:11018
Content-Type: TEXT/PLAIN; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

On Tue, 30 Jun 2009, Pekka Enberg wrote:

> > I'd disagree with disabling slub debugging by default for caches where
> > oo_order(s->min) increases as the result of using it. =A0This particular
> > page allocation failure is happening for, presumably, kmalloc-4096, and
> > the system has 4K pages. =A0Disabling debugging for that cache (and any=
 of
> > its aliases) implicitly will lead to errors going undiagnosed as a resu=
lt.
>=20
> Well, I obviously don't agree here because kmalloc-4096 debugging
> causes problems in the real world.

I don't think CONFIG_SLUB_DEBUG_ON is generally the configuration used in=20
the real world.

The option has a clear and well-defined purpose and that is to enable=20
debugging on all slab caches.  If you modify its definition, users will=20
generally ignore the warning about debugging being disabled when "the=20
minimum possible order at which slab may be allocated is higher than=20
without."  And unless they check the kernel log for such a warning to boot =

with `slab_debug=3D,kmalloc-4096', we lose testing coverage because we=20
cannot enable redzoning or tracing after boot.

> Furthermore, SLUB never supported
> debugging for objects that big historically because of page allocator
> passthrough. And with Mel Gorman's page allocator optimizations, we
> might be going back to that.
>=20

Even when page allocation is fast enough, it would still be helpful to=20
configure slub to not do passthrough purely for the lightweight debugging=20
opportunities.

> So we should fix SLUB debugging as outlined by Mel Gorman and
> Christoph Lameter. I simply haven't had the time to do it. Patches are
> welcome!
>=20

You're referring to `slub_debug=3DA'?  I think CONFIG_SLUB_DEBUG_ON should =

continue to enable debugging on all slab caches and in instances where it=20
causes page allocation failures such in Larry's case because=20
oo_order(s->min) with debugging on is greater than oo_order(s->min) with=20
debugging off, you can emit a friendly warning in your recently added=20
slab_out_of_memory() about using `slab_debug=3D-,<cache>'.

We have a disagreement about which is the default behavior, but I would=20
opt on the side of adding exemptions to a debug configuration option as=20
opposed to requiring additional command line parameters to be fully=20
enabled.
--497827084-588220262-1246348047=:11018--
