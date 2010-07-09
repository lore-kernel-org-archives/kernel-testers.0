From: Sergey Senozhatsky <sergey.senozhatsky-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #16169] Complain from preemptive debug
Date: Fri, 9 Jul 2010 09:38:36 +0300
Message-ID: <20100709063836.GA3965@swordfish>
References: <-IGZ64uxA6G.A.P0H.bLmNMB@chimera>
 <TXb9XdQzJoD.A.SIE.FOmNMB@chimera>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ikeVEW9yuYc//A+q"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=ZKd5yfIojnNAzWTXExDHLQEtWRKdH6F30wQFtKeZQeA=;
        b=n+Ic8flNo27b68KCCcJUonbKrdXkxjWEu5QdDw9ooIcx98QRMA/ji/bPNTUK1EQWOD
         bI8u0uQFTDGlUKSbO2KkhsjdscB4+D+Bf9txRmshqBO7pF8vlBwDU0O2buEAqzVgnaCC
         ksUqRyoTrDYBpgWpRSp12sboKcrbpZO27ioP4=
Content-Disposition: inline
In-Reply-To: <TXb9XdQzJoD.A.SIE.FOmNMB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Dmitry Monakhov <dmonakhov-GEFAQzZX7r8dnm+yROfE0A@public.gmane.org>, Sedat Dilek <sedat.dilek-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>, Sergey Senozhatsky <sergey.senozhatsky-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>


--ikeVEW9yuYc//A+q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On (07/09/10 01:41), Rafael J. Wysocki wrote:
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D16169
> Subject		: Complain from preemptive debug
> Submitter	: Sedat Dilek <sedat.dilek-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
> Date		: 2010-05-31 10:10 (39 days old)
> Message-ID	: <AANLkTilTnAAZIizKinYsxFkNTkrmPqk6XJJuUjjhJ7EP-JsoAwUIsXouhRSP0FMvGiw@public.gmane.org=
m>
> References	: http://lkml.org/lkml/2010/5/31/77
> Handled-By	: Dmitry Monakhov <dmonakhov-GEFAQzZX7r8dnm+yROfE0A@public.gmane.org>
> 		  Sergey Senozhatsky <sergey.senozhatsky-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Patch		: http://www.spinics.net/lists/cpufreq/msg01631.html
> 		  https://patchwork.kernel.org/patch/106555/
>=20
>=20

Hello,
The patch (Signed-off-by: Peter Zijlstra - http://lkml.org/lkml/2010/7/1/32=
)=20
is already in the kernel. Please see this thread
http://lkml.org/lkml/2010/6/15/309

8c215bd3890c347dfb6a2db4779755f8b9c298a9


	Sergey

--ikeVEW9yuYc//A+q
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)

iJwEAQECAAYFAkw2w+wACgkQfKHnntdSXjStNwP9GIYZBMS4QNPBCeYfSRMZSIO1
ahY0ALKDDVBeiqAURMYYErVfIMD1S+W5ZKnpKiuAjbDDrJF62glAlI8zuC/KcEP9
mRcI4gUysqsfBqr1A6/lvN49ANhV2Gh0pITGttIvNZFqcbkqAnaQRtKnF7sOqdy5
bLif4D0jJobLrxWG/1Y=
=qbIT
-----END PGP SIGNATURE-----

--ikeVEW9yuYc//A+q--
