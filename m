From: Daniel J Blueman <daniel.blueman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #16462] unable to connect to AP on legal channels 12/13
Date: Mon, 2 Aug 2010 15:58:57 +0100
Message-ID: <AANLkTikmgrKTLtgs1+h+BkS5X6qt9bP1wMDL4Gu7L3u3@mail.gmail.com>
References: <2dWFdr9kTFM.A.P0D.spXVMB@chimera>
	<Aan7wZ97YaE.A.H2D.0pXVMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:received:in-reply-to
         :references:date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=P+OQqcneyFXH4Sy/QFKhi8PW5Na9wJpQ5DKo/wE3wS8=;
        b=lIgS6Ay6kU0fi5QNSqq8/f5Nw+Od8PfswGaKtPCbiGSPJIhRqi864weTNAXbFs8Rez
         mMOA1I2LwiBzd5HRJU5eE0xZkaZbitZ016hOLHMVqWxbvaL78xuLcXvhSE7qwvKtqMiO
         SzhkEUDZO+jx/sVcdCv1vL0MpfegsQzBTVGW4=
In-Reply-To: <Aan7wZ97YaE.A.H2D.0pXVMB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On 1 August 2010 14:52, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a summary =
report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.34. =A0Please verify if it still should be listed and let th=
e tracking team
> know (either way).
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
16462
> Subject =A0 =A0 =A0 =A0 : unable to connect to AP on legal channels 1=
2/13
> Submitter =A0 =A0 =A0 : Daniel J Blueman <daniel.blueman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2010-07-25 17:06 (8 days old)

Yes, I just managed to reproduce this with 2.6.35-final, and will
update the bugzilla entry with the wire-capture needed.
--=20
Daniel J Blueman
