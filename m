From: =?UTF-8?Q?Am=C3=A9rico_Wang?= <xiyou.wangcong-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13806] system does not boot due to device-mapper error
Date: Mon, 27 Jul 2009 09:58:35 +0800
Message-ID: <2375c9f90907261858l13abb28fk961aa5e4e71d0cda@mail.gmail.com>
References: <Jya1GruKQpD.A.16.2GObKB@chimera>
	 <3zAHs5O6maO.A.IVD.fHObKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=HBBb1rOCKhCoW3kY3gNgdUH2bhbu4ktUX1M/yM7ODKQ=;
        b=JIsUwHTWGwUz32mV7/AEiFF2WY6Z4ORWH7MSn+U5RigVhG2IggA1lUZgQ+WiHdMCbU
         KjiECTmD3suPm3P9wo8SvN61wwyFE1YohLSAVRKRnzUbCEDYZOnL+4TI7J6VNf2oC961
         eYP9P4/OpEJDsfW/l77YuxYKuBU27Wnb/xITo=
In-Reply-To: <3zAHs5O6maO.A.IVD.fHObKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Roman Shtylman <shtylman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Mon, Jul 27, 2009 at 4:28 AM, Rafael J. Wysocki<rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.30. =C2=A0Please verify if it still should be listed and let=
 me know
> (either way).
>
>
> Bug-Entry =C2=A0 =C2=A0 =C2=A0 : http://bugzilla.kernel.org/show_bug.=
cgi?id=3D13806
> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : system does not boot due to dev=
ice-mapper error
> Submitter =C2=A0 =C2=A0 =C2=A0 : Roman Shtylman <shtylman-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2009-07-21 00:03 (6 d=
ays old)

Proposed patch:

http://patchwork.kernel.org/patch/33534/
