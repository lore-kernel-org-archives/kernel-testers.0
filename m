From: =?UTF-8?B?QWxleCBWaWxsYWPDrcKtcyBMYXNzbw==?= 
	<avillaci-l+hy18hT7aZ9y05WjuJFKsXXUOn6P5/W@public.gmane.org>
Subject: Re: [Bug #28522] Unable to mount FAT-formatted floppy on /dev/fd0,
 plus WARN_ON when using /dev/fd0u1440
Date: Wed, 25 May 2011 10:31:15 -0500
Message-ID: <4DDD20C3.4080603@fiec.espol.edu.ec>
References: <Zsp7lN2vZ2O.A.J7C.bQwzNB@chimera> <SFkDk2sBn_E.A.ScE.STwzNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <SFkDk2sBn_E.A.ScE.STwzNB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Alex Villacis Lasso <avillaci-x0m+Mc+nT7uljOmnV8AmnkElSqmLX1BE@public.gmane.org>

El 14/05/11 17:40, Rafael J. Wysocki escribi=C3=B3:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.37 and 2.6.38.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.37 and 2.6.38.  Please verify if it still shou=
ld
> be listed and let the tracking team know (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D28522
> Subject		: Unable to mount FAT-formatted floppy on /dev/fd0, plus WAR=
N_ON when using /dev/fd0u1440
> Submitter	: Alex Villacis Lasso<avillaci-x0m+Mc+nT7uljOmnV8AmnkElSqmLX1BE@public.gmane.org>
> Date		: 2011-02-07 17:21 (97 days old)
>
>
>
Still present in 2.6.39. Additionally there is a new regression in bug =
#35832.
