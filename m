From: roel kluin <roel.kluin-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13947] Libertas: Association request to the driver failed
Date: Thu, 20 Aug 2009 10:51:48 +0200
Message-ID: <25e057c00908200151i472fa3cem6da814e7115e1ea7@mail.gmail.com>
References: <jCYznkTxcLB.A.EPH.eNIjKB@chimera>
	 <ADSuNT6McuD.A.fc.7NIjKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=fVHl482cmoIlSZTjebG7IH3QMugKB487shZRLg0bA6o=;
        b=eMsrdfUrVyBbdrwj7rHmEaJqpxGzN00QrSe6D+zzlApgG7ExOzd3OurPdb9JdmwaHF
         h3fBvqkvQkyvSUg/BaPaKmCERsmGgvlclz21vhw7hYsLZjP4StDlIcP4UB8V9FGP5vLU
         wnDp2o9ycK1HdYDayIRvC4k2v8gKJVorfPJrU=
In-Reply-To: <ADSuNT6McuD.A.fc.7NIjKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Daniel Mack <daniel-rDUAYElUppE@public.gmane.org>, "John W. Linville" <linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>

> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
13947
> Subject =A0 =A0 =A0 =A0 : Libertas: Association request to the driver=
 failed
> Submitter =A0 =A0 =A0 : Daniel Mack <daniel-rDUAYElUppE@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2009-08-07 19:11 (13 days old)
> First-Bad-Commit: http://git.kernel.org/?p=3Dlinux/kernel/git/torvald=
s/linux-2.6.git;a=3Dcommit;h=3D57921c312e8cef72ba35a4cfe870b376da0b1b87
> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D124967=
234311481&w=3D4
> Handled-By =A0 =A0 =A0: Roel Kluin <roel.kluin-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

I think this should be fixed with patch of Dan Williams found here:

http://lkml.org/lkml/2009/8/12/299

Roel
