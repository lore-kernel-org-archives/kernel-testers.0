From: Sergey Senozhatsky <sergey.senozhatsky-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #16248] inconsistent lock state
Date: Mon, 21 Jun 2010 09:08:47 +0300
Message-ID: <20100621060847.GA3965@swordfish>
References: <lc60d4toGTL.A.QzD._LpHMB@chimera>
 <W8JfMs9cZw.A.b_D.HMpHMB@chimera>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ibTvN161/egqYuK8"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=JjiB7YDj6ozjLi9bccgPApA7xk9wH1KESI2xkZkVsd4=;
        b=tfYBY67EpgWCoAU3SozxIdIReH6ELryx777kApk87LS8mlnlBanBXmhqklZR3hoprG
         TCq6dUe6VsQXVB30rcXq5B8/asrxNOittYfmUvdX+PLNqa1jBT6Nz3iRpOA+EKImgBet
         NYbrggf6/JEfN2c7yPbO/jLg4gHpyXFW6/mTs=
Content-Disposition: inline
In-Reply-To: <W8JfMs9cZw.A.b_D.HMpHMB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Sergey Senozhatsky <sergey.senozhatsky-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>


--ibTvN161/egqYuK8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On (06/21/10 00:17), Rafael J. Wysocki wrote:
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D16248
> Subject		: inconsistent lock state
> Submitter	: Sergey Senozhatsky <sergey.senozhatsky-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2010-06-15 11:24 (6 days old)
> Message-ID	: <20100615112434.GA3967-dY8u8AhHFaWtd10JCjopabkcH5ONE+aC@public.gmane.org>
> References	: http://marc.info/?l=3Dlinux-kernel&m=3D127660087625903&w=3D2
>=20
>=20

Hello patch fs-fcntlc-kill_fasync_rcu-fa_lock-must-be-irq-safe.patch added =
to -mm tree.


	Sergey

--ibTvN161/egqYuK8
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)

iJwEAQECAAYFAkwfAe8ACgkQfKHnntdSXjQVQwQA4ZpN8gLumDFIYBcHiUFj7DQc
Eo27mdcTyUlb1Vw4b1jue/fMcby2be+GU4KUrH7GZLiM0YOF7kv5fk5ti9AH4Q0B
6oa314Gcm8rfqvLb8DLQhowWqAOvRwYEvV+SXXsDNI8kfr6IDT5BgtnpA+XTTAAc
4VCAf6JiUoOFW0kl5/E=
=FJqb
-----END PGP SIGNATURE-----

--ibTvN161/egqYuK8--
