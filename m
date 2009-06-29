From: Sergei Trofimovich <slyich-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13655] [Oops] 2.6.31-rc1: tun
Date: Mon, 29 Jun 2009 06:44:17 +0300
Message-ID: <20090629064417.2fd6ac63@mosly.slynet.org>
References: <ij4ZQY4URcP.A.F3B.vIASKB@chimera>
	<6JJ2m5kyucK.A.b1C.AJASKB@chimera>
Mime-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/yzEQ.ejKCniBL9sUU6e3YAD";
 protocol="application/pgp-signature"; micalg=PGP-SHA1
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:in-reply-to:references:x-mailer:mime-version
         :content-type;
        bh=q6TkKoAw1YUCS2nKoyrpYlPcN8rvTy9COV5oEX1DA7I=;
        b=wW3jYlhRbJZn6KPKNKm/F9EMhKWPZQxSD1LbyLOn78nf25uqDoH9T1tXD99SMzPQNr
         5a5Hv4BPpil7CTg7TWRVnBYRHDs74oCvDk4VIgHbdm176d8pfKfxbHEPulFtKFQePZ9w
         uA2I68Zvc5FSIYAk84ZWK9E0CR0MIOTGqevCU=
In-Reply-To: <6JJ2m5kyucK.A.b1C.AJASKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Herbert Xu <herbert-lOAM2aK0SrRLBo1qDEOMRrpzq4S04n8Q@public.gmane.org>

--Sig_/yzEQ.ejKCniBL9sUU6e3YAD
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Mon, 29 Jun 2009 02:11:48 +0200 (CEST)
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> This message has been generated automatically as a part of a report
> of recent regressions.
>=20
> The following bug entry is on the current list of known regressions
> from 2.6.30.  Please verify if it still should be listed and let me know
> (either way).
>=20
>=20
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D13655
> Subject		: [Oops] 2.6.31-rc1: tun
> Submitter	: Sergei Trofimovich <slyich-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2009-06-25 23:53 (4 days old)
> References	: http://lkml.org/lkml/2009/6/25/435
> Handled-By	: Herbert Xu <herbert-lOAM2aK0SrRLBo1qDEOMRrpzq4S04n8Q@public.gmane.org>
> Patch		: http://patchwork.kernel.org/patch/32672/
>=20
>=20
This bug is a duplicate of http://bugzilla.kernel.org/show_bug.cgi?id=3D136=
27

--=20

  Sergei

--Sig_/yzEQ.ejKCniBL9sUU6e3YAD
Content-Type: application/pgp-signature; name=signature.asc
Content-Disposition: attachment; filename=signature.asc

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.11 (GNU/Linux)

iEYEARECAAYFAkpIOJcACgkQcaHudmEf86qExgCfUJY/6P68IDiU/pnWHWRhqh+t
I7cAoIRtTyG8UojqgmoGYEycTuOFKp9V
=nPcT
-----END PGP SIGNATURE-----

--Sig_/yzEQ.ejKCniBL9sUU6e3YAD--
