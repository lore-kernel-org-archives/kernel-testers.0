From: John Mesmon <jmesmon-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #27762] Brightness Adjustment on Toshiba nb305 Netbooks is non-functional.
Date: Sat, 19 Feb 2011 19:40:06 -0500
Message-ID: <AANLkTinfAVyRupWqA7fJFO3TZe8X8w5UVtiFxzFTPYj5@mail.gmail.com>
References: <NMZS1i37KEE.A.1eG.6_wVNB@chimera>
	<8H3lez1sawF.A.vtH.IBxVNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=1LGqpAboOwyK3RHfx+v2P4LNG8XZHAkuH7M34g10RPY=;
        b=HGdZJW9DOHF6UWYtPbnGeTBA6ySaBoa3x27PwEBJThuFdLTZDaIBNPYeUdXgDXdZnC
         3/Lj6AsNpzl44N3oCDQwSwsZ9GVX8bhCa+D/LRF0Yf3TMtaStLcR2UhQYuyPCE6Bq1Bh
         E7nQTAkdLuFcg0t8O+O1feIjPLMGtI9tEh+sE=
In-Reply-To: <8H3lez1sawF.A.vtH.IBxVNB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>

Not sure when this was fixed, but
a5bbef0b2deb7b943f095181309ecc9e1fc91c0f works.

On Sat, Feb 12, 2011 at 6:05 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a summary =
report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.37. =A0Please verify if it still should be listed and let th=
e tracking team
> know (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
27762
> Subject =A0 =A0 =A0 =A0 : Brightness Adjustment on Toshiba nb305 Netb=
ooks is non-functional.
> Submitter =A0 =A0 =A0 : John Mesmon <jmesmon-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2011-01-29 03:47 (15 days old)
> First-Bad-Commit: http://git.kernel.org/linus/44834a67c0082e2cf74b16b=
e91e49108b1432d65
>
>
>
