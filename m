From: Eric Anholt <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>
Subject: Re: [Bug #12491] i915 lockdep warning
Date: Tue, 10 Feb 2009 16:43:12 -0800
Message-ID: <1234312992.32506.30.camel@gaiman>
References: <kkuKoQJIW-D.A.61C.auYiJB@chimera>
	 <pWZw1SZjMCH.A.ciH.4vYiJB@chimera> <adar62dltg1.fsf@cisco.com>
	 <200902050203.40535.rjw@sisk.pl> <adar62bchfw.fsf@cisco.com>
	 <F169D4F5E1F1974DBFAFABF47F60C10A1DFD867C@orsmsx507.amr.corp.intel.com>
	 <adabptfc90m.fsf@cisco.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1; protocol="application/pgp-signature"; boundary="=-kR0MQ7f70BrvLAu3AEdM"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <adabptfc90m.fsf-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: Roland Dreier <rdreier-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>
Cc: "Brandeburg, Jesse" <jesse.brandeburg-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "drivers_video-dri-ztI5WcYan/vQLgFONoPN62D2FQJk+8+b@public.gmane.org" <drivers_video-dri-ztI5WcYan/vQLgFONoPN62D2FQJk+8+b@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>, intel-gfx-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org


--=-kR0MQ7f70BrvLAu3AEdM
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

On Fri, 2009-02-06 at 17:48 -0800, Roland Dreier wrote:
> [intel-gfx CC added]
>=20
>  > I tested this on my 965 based system that showed the issue and it seem=
ed resolved, at least no warnings in dmesg.  Lockdep was confirmed to still=
 be enabled.
>=20
>  > I can mark the bug fixed in korg bugzilla too.
>=20
> Probably we just want to add a comment saying the patch works -- the bug
> should stay open until we get the fix upstream I guess.
>=20
>  > Thank you Roland for looking into this, good work!
>=20
> Thanks for testing!  Patch with updated changelog (including your
> tested-by) below.  Jesse [Barnes] and/or Eric please review and apply:
>=20
> ---
>=20
> i915: Fix potential AB-BA deadlock in i915_gem_execbuffer()
>=20
> Lockdep warns that i915_gem_execbuffer() can trigger a page fault (which
> takes mmap_sem) while holding dev->struct_mutex, while drm_vm_open()
> (which is called with mmap_sem already held) takes dev->struct_mutex.
> So this is a potential AB-BA deadlock.
>=20
> The way that i915_gem_execbuffer() triggers a page fault is by doing
> copy_to_user() when returning new buffer offsets back to userspace;
> however there is no reason to hold the struct_mutex when doing this
> copy, since what is being copied is the contents of an array private to
> i915_gem_execbuffer() anyway.  So we can fix the potential deadlock (and
> get rid of the lockdep warning) by simply moving the copy_to_user()
> outside of where struct_mutex is held.
>=20
> This fixes <http://bugzilla.kernel.org/show_bug.cgi?id=3D12491>.
>=20
> Reported-by: Jesse Brandeburg <jesse.brandeburg-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> Tested-by: Jesse Brandeburg <jesse.brandeburg-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> Signed-off-by: Roland Dreier <rolandd-FYB4Gu1CFyUAvxtiuMwx3w@public.gmane.org>

This only fixes 1 of the about 4 of this type of deadlock, but it looks
like a fine fix for that and I've put it in my tree.  Thanks!

(I'd been holding off on hitting the easy ones to figure out if we could
get the lock order the other way around.  It would be really nice if we
could have struct_mutex -> mmap_sem, but it looks like that's just not
going to happen.  pread and pwrite are going to be a mess.)

--=20
Eric Anholt
eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org                         eric.anholt-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org



--=-kR0MQ7f70BrvLAu3AEdM
Content-Type: application/pgp-signature; name=signature.asc
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.9 (GNU/Linux)

iEYEABECAAYFAkmSHyAACgkQHUdvYGzw6vdgnwCeIpmtGHVwkFNmGT0Iygc5p16U
hrAAn2uGxAHY8YdRVY4GPIuwx+ggKQAP
=3XT/
-----END PGP SIGNATURE-----

--=-kR0MQ7f70BrvLAu3AEdM--
