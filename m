From: =?UTF-8?Q?Am=C3=A9rico_Wang?= <xiyou.wangcong-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14903] Kernel panic - not syncing: Attempted to kill init!
Date: Wed, 13 Jan 2010 10:55:34 +0800
Message-ID: <2375c9f91001121855j2884e594nd6f9801231c1bb83@mail.gmail.com>
References: <nzLqtSp97aP.A.RGB.hglSLB@chimera>
	 <CXIfLt-ygXM.A.zyB.vglSLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=VTZkBOhetk3hZUPPi7nSGoz0Xo88/wzMAH1jMaVl888=;
        b=bxsVK0d/3M+fpLMH+j4Fc4KBn+K+4I3BwI9th6Xc1YE3HHvLrn1RNHAYBAaxFf1pFq
         ojiGP8ATMNPJBpMX1QPH3x/EtDyFfgdN/SLz3Ng8Vyzk6FT8jZq8SgUDxtaU6eB8TpPZ
         saek1dAI88Mwnqnie/X97bVEuHggQq7vv452Y=
In-Reply-To: <CXIfLt-ygXM.A.zyB.vglSLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Zhiyong Wu <zwu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Mon, Jan 11, 2010 at 6:56 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
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
cgi?id=3D14903
> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : Kernel panic - not syncing: Att=
empted to kill init!
> Submitter =C2=A0 =C2=A0 =C2=A0 : Zhiyong Wu <zwu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2009-12-18 4:08 (24 d=
ays old)
> References =C2=A0 =C2=A0 =C2=A0: http://marc.info/?l=3Dlinux-kernel&m=
=3D126110931124738&w=3D4
> Handled-By =C2=A0 =C2=A0 =C2=A0: Am=C3=A9rico Wang <xiyou.wangcong@gm=
ail.com>
>

Hi,

I don't think this is a kernel problem, it should be a problem of Zhiyo=
ng's
initrd, or Zhiyong may not configure his kernel properly, in any case,
this is not a bug of kernel.

Thanks.
