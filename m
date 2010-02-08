From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #15096] Resume lock up -- bisected, commit 
	3a1151e3f124fd1a2c54b8153f510f1a7c715369
Date: Mon, 8 Feb 2010 08:45:34 +0100
Message-ID: <b170af451002072345x1e7666adv7f105a5f847f4d0d@mail.gmail.com>
References: <2uzMDuY-7_O.A.M1G.7X1bLB@chimera>
	 <iuJeop2ribM.A.fyH.fY1bLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=XiiZti9B06kCOwG5eZzHSu+Ajv3/FwMGuIVH+q1bZo4=;
        b=Jp+f2sCqlnhHh8QMQi8MEdfKke8sPENLEipr9ifePmi8e5gvORGv+feo/hz/6IEbx/
         sn1wP3eBVpUaUCK4gDTd48emzJTycGNL1CkJS4r+I6TlSKRL+Fk0LqGkSYFqzHl4MBJc
         Ai1YlVk9gglNvUgIN5Rg/mwUrZmLHXtCcHwvw=
In-Reply-To: <iuJeop2ribM.A.fyH.fY1bLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Len Brown <len.brown-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Stefan Bader <stefan.bader-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org>, Zhang Rui <rui.zhang-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

2010/2/8 Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.31 and 2.6.32.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.31 and 2.6.32. =C2=A0Please verify if it still=
 should
> be listed and let the tracking team know (either way).
>
>
> Bug-Entry =C2=A0 =C2=A0 =C2=A0 : http://bugzilla.kernel.org/show_bug.=
cgi?id=3D15096
> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : Resume lock up -- bisected, com=
mit 3a1151e3f124fd1a2c54b8153f510f1a7c715369
> Submitter =C2=A0 =C2=A0 =C2=A0 : Rafa=C5=82 Mi=C5=82ecki <zajec5@gmai=
l.com>
> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2010-01-20 23:15 (19 =
days old)
> First-Bad-Commit: http://git.kernel.org/git/linus/3a1151e3f124fd1a2c5=
4b8153f510f1a7c715369

Should be.

--=20
Rafa=C5=82
