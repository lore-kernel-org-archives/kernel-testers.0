From: trapDoor <trapdoor6-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #16881] [REGRESSION, Radeon-KMS] 2.6.36-rc1,2 - missing
 textures in 0 A.D.
Date: Mon, 30 Aug 2010 10:54:41 +0100
Message-ID: <AANLkTikpoH-_od-SL3=Q7a=xbsraE4rYGicx7mmS92Cw@mail.gmail.com>
References: <4LwrqITm-eJ.A.r8G.eFueMB@chimera>
	<4AUWBNzTkbD.A.mj.QGueMB@chimera>
Reply-To: trapdoor6-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:received:reply-to
         :in-reply-to:references:date:message-id:subject:from:to:cc
         :content-type:content-transfer-encoding;
        bh=gYHhNYFFGaHmDiOmOC5Ju2t2s77/hDanMa3meVihuTA=;
        b=cN5bAPtxtmKjUFjXJlbUGXQ+7F6Ogvk6DLpq+kqsjXyo3V7T2ILwJOfEFHgLVxiaKu
         r8Hcjuub0cRouoEz1QapK/PAOvSLLZ7Jl5WTguEr/xwnjyWgz7Bspu8c3ZL5pZsHyI0K
         fQDauSArjiAuNmm5mNC/xzYHfUd2Q0sR16baU=
In-Reply-To: <4AUWBNzTkbD.A.mj.QGueMB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Sun, Aug 29, 2010 at 11:36 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote=
:
> This message has been generated automatically as a part of a summary =
report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.35. =A0Please verify if it still should be listed and let th=
e tracking team
> know (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
16881
> Subject =A0 =A0 =A0 =A0 : [REGRESSION, Radeon-KMS] 2.6.36-rc1,2 - mis=
sing textures in 0 A.D.
> Submitter =A0 =A0 =A0 : =A0<trapdoor6-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2010-08-24 12:20 (6 days old)
>
>
> --
> To unsubscribe from this list: send the line "unsubscribe linux-kerne=
l" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at =A0http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at =A0http://www.tux.org/lkml/
>

There was at least one drm pull between 2.6.36-rc2 and -rc3. So I
tested on -rc3 and I confirm that the issue is still present.

I was going to update the bugzilla entry but it won't let me log in at
this moment.

--=20
Regards
Tomasz
