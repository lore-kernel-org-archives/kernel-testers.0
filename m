From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #15096] Resume lock up -- bisected, commit 
	3a1151e3f124fd1a2c54b8153f510f1a7c715369
Date: Mon, 15 Feb 2010 07:54:11 +0100
Message-ID: <b170af451002142254w5c6656eegdee2431b0146d3f8@mail.gmail.com>
References: <fQEllunEdO.A.-LB.HyIeLB@chimera>
	 <Xv2rBFCTXTH.A.DTC.vyIeLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=ui06IvNf6aBYxB2S1vk+6Cn3we6qfyaAV3n25lAOzJ0=;
        b=g6+Bbb2eAQpkKZ2J2iBCsSrSWfA32+bBl/202l8bubFsGSIw0kP3R/L04mvJrIhRSb
         Y588vX11XLVnZgmbYyWlZxHvvri7NK8DR9w7J4OAlg0JAZ3yoEIxvchgi39ca29S1FWe
         TIp9oeTO/zIhOb6ZNV8lklzWtzbXMp7TWTIFA=
In-Reply-To: <Xv2rBFCTXTH.A.DTC.vyIeLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Len Brown <len.brown-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Stefan Bader <stefan.bader-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org>, Zhang Rui <rui.zhang-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

2010/2/15 Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.31 and 2.6.32.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.31 and 2.6.32. =C2=A0Please verify if it still=
 should
> be listed and let the tracking team know (either way).

It should be, there is one testing request I didn't make yet. I'll do
this soon, after my today's study final exam.

--=20
Rafa=C5=82
