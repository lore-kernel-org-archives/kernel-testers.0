From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #15096] Resume lock up -- bisected, commit 
	3a1151e3f124fd1a2c54b8153f510f1a7c715369
Date: Sun, 24 Jan 2010 23:44:40 +0100
Message-ID: <b170af451001241444u449d5be6i194b825ff7f5e02e@mail.gmail.com>
References: <pYFNu11z2aM.A.pJH.CZMXLB@chimera>
	 <q60Z28d_9yH.A.QkH.LZMXLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=2jXzH8WpK+V5WT/4cz4GLN4XMtqaTXaUeV4hkD2EaAM=;
        b=R5TZ15UB1TVDpmk248ARek/8KdkAxz3Yib7NjOSXW46clWq1nuD1R+SrMWioetH7pw
         Kc3EwEsHAVXqDkzbpHCLoJvlnm6PhC0j4qqzplkiZ/zbjUvHqOLviRfwoZXORh1ZfNjz
         BUQPGyE2EygiUTBXTRstpYlrmt3RhXoZEbMfM=
In-Reply-To: <q60Z28d_9yH.A.QkH.LZMXLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Len Brown <len.brown-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Stefan Bader <stefan.bader-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org>, Zhang Rui <rui.zhang-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

2010/1/24 Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.31 and 2.6.32.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.31 and 2.6.32. =C2=A0Please verify if it still=
 should
> be listed and let me know (either way).
>
>
> Bug-Entry =C2=A0 =C2=A0 =C2=A0 : http://bugzilla.kernel.org/show_bug.=
cgi?id=3D15096
> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : Resume lock up -- bisected, com=
mit 3a1151e3f124fd1a2c54b8153f510f1a7c715369
> Submitter =C2=A0 =C2=A0 =C2=A0 : Rafa=C5=82 Mi=C5=82ecki <zajec5@gmai=
l.com>
> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2010-01-20 23:15 (5 d=
ays old)

Still should be, didn't hear about any fix, didn't see any.

--=20
Rafa=C5=82
