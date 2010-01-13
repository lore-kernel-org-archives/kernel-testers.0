From: =?UTF-8?Q?Am=C3=A9rico_Wang?= <xiyou.wangcong-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #15041] Pagemap endless read loop with LTP
Date: Wed, 13 Jan 2010 11:04:05 +0800
Message-ID: <2375c9f91001121904h2857760akbf2dd2c9f7441fc5@mail.gmail.com>
References: <wnS54-l8PVO.A.TlF.oMlSLB@chimera>
	 <omZ8aBZReyD.A.tvF.tMlSLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=nBFLahPg+LzwTd3Dx3UjTUXuA4vbkH1T/nHilEoLcI4=;
        b=owxmMnqeFi7uZDF0nQqJTg9BPG6FvX8J6iftHN8jSLtmJzh/0kFSht12XiQIEnC4x9
         GGPPGk7TQ+0ab6pzchhZaOislCFmRNyY9eDdj4EFVzdPQoHPYy7HM0dHL25IRYOkADeK
         FWHmfBm+A8XYe6hWlSyh2lgDo6h/0tHNLDScw=
In-Reply-To: <omZ8aBZReyD.A.tvF.tMlSLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andi Kleen <andi-Vw/NltI1exuRpAAqCnN02g@public.gmane.org>

On Mon, Jan 11, 2010 at 6:32 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.32. =C2=A0Please verify if it still should be listed and let=
 me know
> (either way).
>
>
> Bug-Entry =C2=A0 =C2=A0 =C2=A0 : http://bugzilla.kernel.org/show_bug.=
cgi?id=3D15041
> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : Pagemap endless read loop with =
LTP
> Submitter =C2=A0 =C2=A0 =C2=A0 : Andi Kleen <andi-Vw/NltI1exuRpAAqCnN02g@public.gmane.org>
> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2010-01-10 2:09 (1 da=
ys old)
> References =C2=A0 =C2=A0 =C2=A0: http://marc.info/?l=3Dlinux-kernel&m=
=3D126308941423848&w=3D4
>

According to Andi's later reply, it shoud not be an endless loop,
it just takes a rather long time.

Thanks.
