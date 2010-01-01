From: Sergei Trofimovich <slyich-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14935] hd-audio0 eats 25% CPU (according to top)
Date: Sat, 2 Jan 2010 01:33:23 +0200
Message-ID: <20100102013323.3651b95a@mosly>
References: <LptzGUUXbTK.A.MSF.ymhOLB@chimera>
 <NJVdobuNFNK.A.wuG.KnhOLB@chimera>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=PGP-SHA1;
 boundary="Sig_/G5tb_Pbb/wT4H+h9cKLyFf."; protocol="application/pgp-signature"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:in-reply-to:references:x-mailer:mime-version
         :content-type;
        bh=yV6AxjQuRWAt8yb6jHJ885MNNLh9qI8ZYHaR7DwSZDE=;
        b=Rv/Q8kdXl/cOLRZMyas5d9G7JuGGwu6qsnyPMBaQquV+1Bv8NmmmDdJBfM+2+yBFj+
         D1sxhk4OYrpuO4lGJb3rN/p3f9hT9g1pTelH4/sugeJTD4SEm3UzFFZxA+PMvbNtVM9T
         VK9dktdcxm5DjZbtMC95V8wBXbmdeGhbZ1wdA=
In-Reply-To: <NJVdobuNFNK.A.wuG.KnhOLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Takashi Iwai <tiwai-l3A5Bk7waGM@public.gmane.org>

--Sig_/G5tb_Pbb/wT4H+h9cKLyFf.
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

On Tue, 29 Dec 2009 16:10:01 +0100 (CET)
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> This message has been generated automatically as a part of a report
> of recent regressions.
>=20
> The following bug entry is on the current list of known regressions
> from 2.6.32.  Please verify if it still should be listed and let me know
> (either way).
>=20
>=20
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D14935
> Subject		: hd-audio0 eats 25% CPU (according to top)
> Submitter	: Sergei Trofimovich <slyich-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2009-12-25 10:21 (5 days old)
> References	: http://marc.info/?l=3Dlinux-kernel&m=3D126173644210280&w=3D4
> Handled-By	: Takashi Iwai <tiwai-l3A5Bk7waGM@public.gmane.org>
> Patch		: http://patchwork.kernel.org/patch/69747/

Merged upstream as: 729d55ba972348234759f8e40abf8de020f0d505 (aka v2.6.33-r=
c2-2-g729d55b)
I've tested v2.6.33-rc2-249-gcd6e125 and it fixes problem.
--=20

  Sergei

--Sig_/G5tb_Pbb/wT4H+h9cKLyFf.
Content-Type: application/pgp-signature; name=signature.asc
Content-Disposition: attachment; filename=signature.asc

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.11 (GNU/Linux)

iEYEARECAAYFAks+hkcACgkQcaHudmEf86rBegCfduZdjnhc2R8hR2YU+HMsggih
KLkAn3lmgomogJuGm1R7QSx1W7d1tXCJ
=sXcJ
-----END PGP SIGNATURE-----

--Sig_/G5tb_Pbb/wT4H+h9cKLyFf.--
