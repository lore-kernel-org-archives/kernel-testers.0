From: Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13172] Spontaneous reboots since 2.6.29-rc*
Date: Sun, 17 May 2009 09:53:38 +0200
Message-ID: <8db1092f0905170053k5ccd8903k7b6d203dd349daeb@mail.gmail.com>
References: <yO1BmxN79sN.A.xAG.8_zDKB@chimera>
	 <pQ9WADCjgyE.A.QrG.PA0DKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=WWr29o9t68reqAnNDLQ+4/CFToaNIkBEuKAGZ3XsMF8=;
        b=b9RxEOyUl6pwXK7VBoGwbesCsrTLp+jY/ViAo5z/YFX/PLzJd9wi156CYDBSKV7Uuk
         hJjsimFD7d3LxOpG5UT7Lv8izn2p7TfESnyug01Rx+02IAh2nuMbLEFN2wb169LRF1Q+
         1UOY314EVUKnWG0K51enOrK3X4kKFbgQeW59w=
In-Reply-To: <pQ9WADCjgyE.A.QrG.PA0DKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

2009/5/16 Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.28 and 2.6.29.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.28 and 2.6.29. =C2=A0Please verify if it still=
 should
> be listed and let me know (either way).
>
>
> Bug-Entry =C2=A0 =C2=A0 =C2=A0 : http://bugzilla.kernel.org/show_bug.=
cgi?id=3D13172
> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : Spontaneous reboots since 2.6.2=
9-rc*
> Submitter =C2=A0 =C2=A0 =C2=A0 : Maciej Rutecki <maciej.rutecki@gmail=
=2Ecom>
> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2009-04-17 17:03 (30 =
days old)
> References =C2=A0 =C2=A0 =C2=A0: http://marc.info/?l=3Dlinux-kernel&m=
=3D123998788921733&w=3D4
>
>

I try:
CONFIG_MTRR_SANITIZER=3Dy
CONFIG_MTRR_SANITIZER_ENABLE_DEFAULT=3D1
CONFIG_MTRR_SANITIZER_SPARE_REG_NR_DEFAULT=3D1

from:
http://marc.info/?l=3Dlinux-kernel&m=3D124022460715035&w=3D4

Spontaneous reboots occur less often than in previous .config. From
last report it occur once or twice. I think, it's hardware/bios/mtrr
issue.

Because of this I think we should remove this regression from list,
until I find out, why it happen, or more people report this. What do
You think?

Regards


--=20
Maciej Rutecki
http://www.maciek.unixy.pl
