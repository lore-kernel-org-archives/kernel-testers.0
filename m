From: Sergey Senozhatsky <sergey.senozhatsky-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #16961] kernel BUG at
 arch/x86/kvm/../../../virt/kvm/kvm_main.c:1978
Date: Mon, 13 Sep 2010 16:48:47 +0300
Message-ID: <20100913134847.GA5263@swordfish.minsk.epam.com>
References: <EP3NUDNWMO.A.O0.rrRjMB@chimera>
 <0c5PAlgnPrH.A.WOC.hsRjMB@chimera>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="2oS5YaxWCcQjTEyO"
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=djHouhTqG2quDBMh+Qnb9+4BVocuNaktl7rQ34devH4=;
        b=paH4fRNDvvBTriavAW4RPkCE+QR2nh8H1gUx8eKnT1V7I/JiAM3fiPczE33WYANLAz
         caB/wxTnOUSCGevq662fKMnIO0LZg/tmkgUjr2K9oYpBRh6SoHUwgJxQgfFf5Q5xx/p7
         E3s+lIG1G6VYjjPPa+ir8YLl2+KvwdY7RaopA=
Content-Disposition: inline
In-Reply-To: <0c5PAlgnPrH.A.WOC.hsRjMB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Avi Kivity <avi-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Sergey Senozhatsky <sergey.senozhatsky-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>


--2oS5YaxWCcQjTEyO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On (09/12/10 20:14), Rafael J. Wysocki wrote:
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D16961
> Subject		: kernel BUG at arch/x86/kvm/../../../virt/kvm/kvm_main.c:1978
> Submitter	: Sergey Senozhatsky <sergey.senozhatsky-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2010-08-19 9:54 (25 days old)
> Message-ID	: <<20100819095429.GA5201-dY8u8AhHFaWtd10JCjopabkcH5ONE+aC@public.gmane.org>>
> References	: http://marc.info/?l=3Dlinux-kernel&m=3D128221169606214&w=3D2
> Handled-By	: Avi Kivity <avi-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
>=20
>=20

Hello,
Fixed by
commit da908f2fb4e783c2a4de751fb90f11a0dd041161
Author: Zachary Amsden <zamsden-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>


	Sergey
--2oS5YaxWCcQjTEyO
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.10 (GNU/Linux)

iJwEAQECAAYFAkyOK78ACgkQfKHnntdSXjTfYQP/YDtBVVkNy2wz54WrtlNx8Ilc
3D9iWrEj5IIipPa1HUpiKxTMaokSGxKtsB8yDKL6pGT57DHqYZ0GQPBwFGqbKzjF
WqlFLZQgAUkVOdvKIpk4sivan43hV93RCK4E14f4rWliyMI8GVCsvj8I0ahMft0X
xsIOZhi3BfX0qenYyBs=
=iMwO
-----END PGP SIGNATURE-----

--2oS5YaxWCcQjTEyO--
