From: Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14352] WARNING: at net/mac80211/scan.c:267
Date: Tue, 17 Nov 2009 07:04:10 +0100
Message-ID: <8db1092f0911162204i36dbd472w1d2c88411e151acb@mail.gmail.com>
References: <GUZt44bIwCE.A.vLF.pSdALB@chimera> <xXQGFmujPl.A.o1.bUdALB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=16JSZLrW6UNSflPz9S67yzhhJCQk7/KidnlFuCWU2Co=;
        b=P1GW3IK6umeCbuipm10WAVzlAs0x0lL9MrQRRcNxJU3OlU4yTP5q36lbUZxXl3h+cU
         nDW/rI3JnF6VLjBuQhguw89ek8QIoHPemN8VlTJT8mJCA99sptP5xkdbyPg/ZRykWvWs
         1aG/JKv5oG6FwQ6ECycyruRdgTksTYc+Vg1w4=
In-Reply-To: <xXQGFmujPl.A.o1.bUdALB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

2009/11/16 Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.31. =C2=A0Please verify if it still should be listed and let=
 me know
> (either way).
>
>
> Bug-Entry =C2=A0 =C2=A0 =C2=A0 : http://bugzilla.kernel.org/show_bug.=
cgi?id=3D14352
> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : WARNING: at net/mac80211/scan.c=
:267
> Submitter =C2=A0 =C2=A0 =C2=A0 : Maciej Rutecki <maciej.rutecki@gmail=
=2Ecom>
> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2009-10-08 00:30 (40 =
days old)
> References =C2=A0 =C2=A0 =C2=A0: http://bugzilla.intellinuxwireless.o=
rg/show_bug.cgi?id=3D2089#c7
>
>

In 2.6.32-rc7 problem seems be fixed.

Regards
--=20
Maciej Rutecki
http://www.maciek.unixy.pl
