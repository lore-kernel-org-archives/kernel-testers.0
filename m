From: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
Subject: Re: [PATCH] [RFC] EEE PC hangs when booting off battery
Date: Tue, 28 Apr 2009 11:58:08 +0200
Message-ID: <1240912688.28835.10.camel@johannes.local>
References: <49E065CF.6040408@tuffmail.co.uk>
	 <200904140859.02188.bjorn.helgaas@hp.com>
	 <20090414081728.10de978a@infradead.org>
	 <200904140948.37633.bjorn.helgaas@hp.com> <49E5F01B.2060201@tuffmail.co.uk>
	 <49EF0ABD.2080801@tuffmail.co.uk> <49F446AE.6070607@tuffmail.co.uk>
	 <49F6CA0E.5040101@tuffmail.co.uk> (sfid-20090428_111942_198975_13CDA6F5)
Mime-Version: 1.0
Content-Type: multipart/signed; micalg="pgp-sha1"; protocol="application/pgp-signature"; boundary="=-ssrFuVECca1fp0kSm0VT"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <49F6CA0E.5040101-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org> (sfid-20090428_111942_198975_13CDA6F5)
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Cc: "linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Arjan van de Ven <arjan-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>


--=-ssrFuVECca1fp0kSm0VT
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

It seems the only reason lockdep doesn't warn is the detour to userspace
(modprobe) and the waiting for a userspace task (waiting isn't lockdep
annotated and I don't think it can be)

It seems you cannot load a module while under _any_ lock, ever, since
userspace might turn around and do something that requires that lock? I
think we should probably add a warning to the code that waits for the
userspace task:

	debug_check_no_locks_held(current);

Or not? Some purely internal locks _might_ be ok... but how could you
verify that?

> - ieee80211_wep_init(), which is called with rtnl_lock() held, is
> blocked in request_module() [waiting for modprobe to load a crypto module=
].

Right.

> - modprobe is blocked in a call to flush_workqueue(), caused by closing
> a TTY.

Can you point out where? I can't find that.

> - worker_thread is blocked because the workqueue item linkwatch_event()
> is blocked on rtnl_lock.

This I know about.

> I've hacked up a test patch to move wep_init() outside of rtnl_lock, and
> it solved the problem.  My one caveat is that it would probably be
> cleaner to move it after rtnl_unlock(), instead of before rtnl_lock().=20
> I just wasn't 100% sure if that would be safe.  Here's the patch:

That doesn't seem relevant, this just does some initialisation. However,
you definitely missed adding a call to wep_free().

johannes

--=-ssrFuVECca1fp0kSm0VT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----
Comment: Johannes Berg (powerbook)

iQIcBAABAgAGBQJJ9tMuAAoJEKVg1VMiehFYSxYQAInSVwhErD9Q6+48V4JpDp2l
3imRtIkdF7+ZFwa2SdF/kiBYP+s+XF1sdulp7PHCtbqdHk4cvoi+XKHOawqo1wYr
qpI2AKDfOf2rzoczAcK4YW2w6BftgxTTqoUVfLKxPb5KUUChjkJnqrRv5UJEyXBv
kWRQSbcT4obujlPIBhnPo93wtlvBSQujU1vPrdqs3G5gaSbQtJlZRjFUuJg35Pke
CEn4nJ62kFeyGZl2eI+QDpyODn7SFUWXuyNTOXgWMcTZsnSlZm7GOTfTi9jBBNEB
FW4ynZ+itvAkxsDIB2cIEsiC0fygxrDDtDcMHFeQWXWdIOiZSMdcgRK6jaxj1sCh
qIwq1uuQ4DU4kobHciOBn00GJgNKT3mViS6CbUjXbqN42/+S9BZOY2IG6YPTmoRb
mn7NcVzA6oy9HVYU2LcBmDuez1lg4w7U7+f1+peCgpAbV4EJ/J0F91TJFNFvGBOK
dHDhxGwdmCQWurgI6FyL37rxSW42Ho6clicm2epdmZ/yG2DRRYD68Vj20IqCEowA
rOfO57ypb/1G71EkyNfCWr9ITTNs+WSQhWFm1YO8U9IgAelIJH/MQLTQ0mKR6Zoe
PYosgETnBt2Nh+p8BRt2gI2+D9W9T7G/IBZaSmMjGLrHjMKIC02Dpkqkri2injDc
9FjC2xhtyugVVRruZXil
=pqaC
-----END PGP SIGNATURE-----

--=-ssrFuVECca1fp0kSm0VT--
