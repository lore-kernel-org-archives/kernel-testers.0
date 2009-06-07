From: Sergei Trofimovich <slyich-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13294] i915: drm: xorg leaks drm objects massively
Date: Sun, 7 Jun 2009 16:50:18 +0300
Message-ID: <20090607165018.4c946a30@mosly.slynet.org>
References: <sIiXQlfwS3D.A.81.dj7KKB@chimera>
	<AN6kEAA5GQ.A.obB.3j7KKB@chimera>
Mime-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/cGk7KZV8R6kUukqT8Rx.IM8";
 protocol="application/pgp-signature"; micalg=PGP-SHA1
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:in-reply-to:references:x-mailer:mime-version
         :content-type;
        bh=zirlP3CG3LCBqc6odk8h3gOCOAukF/ZB4ZG0Tmnx/Hc=;
        b=ZfPBUH9Z/x2winM48gZJFtzBl8gFpjy0iiNsjZ+taO79QAFEFvANAHCYw6Om+xuXDU
         2v+dvyuX5GrTTI/bvQdJGj3WaAFIfSi7jGTQgKIkZm1N+erPW2DVaJwmrttiANWciZjr
         tPcf9CWafqXA/LTmAaJPf/CuteCnKSxEVKHRQ=
In-Reply-To: <AN6kEAA5GQ.A.obB.3j7KKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

--Sig_/cGk7KZV8R6kUukqT8Rx.IM8
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Sun,  7 Jun 2009 12:06:23 +0200 (CEST)
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.28 and 2.6.29.
>=20
> The following bug entry is on the current list of known regressions
> introduced between 2.6.28 and 2.6.29.  Please verify if it still should
> be listed and let me know (either way).
>=20
>=20
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D13294
> Subject		: i915: drm: xorg leaks drm objects massively
> Submitter	: Sergei Trofimovich <slyich-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2009-05-10 19:56 (29 days old)
> References	: http://marc.info/?l=3Dlinux-kernel&m=3D124198547027903&w=3D4
>=20
>=20
Rafael, please remove it from regression list. I haven't found kernel worki=
ng
the other way. It's a bug(set of bugs) being around "forever". Many people
confirm it on various laptops/kernel versions. It's just not very noticeabl=
e.

--=20

  Sergei

--Sig_/cGk7KZV8R6kUukqT8Rx.IM8
Content-Type: application/pgp-signature; name=signature.asc
Content-Disposition: attachment; filename=signature.asc

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.11 (GNU/Linux)

iEYEARECAAYFAkorxZ8ACgkQcaHudmEf86pyQwCcD710e6QU+3zEgH9MVZCeXd1r
rdcAn1p1WXqOpQENAwCGQShJ+Ct7kvAH
=3JZP
-----END PGP SIGNATURE-----

--Sig_/cGk7KZV8R6kUukqT8Rx.IM8--
