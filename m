From: Fabio Comolli <fabio.comolli-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14372] ath5k wireless not working after suspend-resume - 
	eeepc
Date: Tue, 17 Nov 2009 08:59:12 +0100
Message-ID: <b637ec0b0911162359y188f0829if277467229b095b3@mail.gmail.com>
References: <GUZt44bIwCE.A.vLF.pSdALB@chimera> <xXQGFmujPl.A.zf.FUdALB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=BFnCvxDLkduTTqkRw3nbqaSL4SfUaMa4dA9OXs1WeKQ=;
        b=wU5ZVllq9a/uVFMNhDofqGHrfYn2EU6EtG/wCvwWhQBEnd5o38sYK+B00q1nNB9V1d
         DytyGCZYUZe69EKAGGCCW4K4EckxZzpnlfYNlxBKEVBVqjuQuk8WyjcGl23Ji5ycqFaP
         WJpOvrtGvElB/kL4RyiWWQMByyrZOxAY4wIrw=
In-Reply-To: <xXQGFmujPl.A.zf.FUdALB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

The offending commit got reverted in -rc7, therefore this regression is=
 solved.

On Mon, Nov 16, 2009 at 11:37 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote=
:
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
cgi?id=3D14372
> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : ath5k wireless not working afte=
r suspend-resume - eeepc
> Submitter =C2=A0 =C2=A0 =C2=A0 : Fabio Comolli <fabio.comolli@gmail.c=
om>
> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2009-10-03 15:36 (45 =
days old)
> References =C2=A0 =C2=A0 =C2=A0: http://lkml.org/lkml/2009/10/3/91
>
>
>
