From: Torsten Kaiser <just.for.lkml-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Subject: Re: [Bug #42678] [3.3-rc1] radeon stuck in kernel after lockup
Date: Mon, 12 Mar 2012 20:15:47 +0100
Message-ID: <CAPVoSvSG3d1ZnY=x-wv=OnXD7Cx9sdSajBXESAWPXkrSrkUdAA@mail.gmail.com>
References: <WuYv90FoNpB.A.O8.ktRXPB@chimera>
	<C6gS2DkSgiG.A.UgC.VuRXPB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type:content-transfer-encoding;
        bh=hHql0jnis+GzLRXbtX9SeOnRz7WWmDTiOWGeQDqgSbY=;
        b=olDr+Zer4ktUHv/XzanjhWljOOr8WcSjxY0lP2nTA/r6QKm1+/ijdhFlYJkh4yItO9
         QI53DFo9yI95zqJZhofQ83ncW3sO4p6HioLjfrjsr5Gt5dWfHdvz5TtOc0bDhVpVS6Av
         4ZZZsFKAHJo4JYYCvDZSnPZYVooieMnp9ZKhxFsKo2qMNG7/UiF16vW42pPjC+Y7BSzP
         Xi3tWvw/j3nO3KyUkT0Ygsuafwoj5xSOLLtsO3/JMZAhN+qIRitwp+DK2KRo3hbFwAwS
         UJaALQ8eiMml1ArMTVvoh6kreUsUWTD6hl/+C2M4xMb3TEZS/xnFzyOGJa3Vm/wjWSHj
         XyXA==
In-Reply-To: <C6gS2DkSgiG.A.UgC.VuRXPB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, =?ISO-8859-1?Q?J=E9r=F4me_Glisse?= <glisse-CC+yJ3UmIYqDUpFQwHEjaQ@public.gmane.org>

2012/3/11 Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>:
> This message has been generated automatically as a part of a summary =
report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 3.2. =A0Please verify if it still should be listed and let the t=
racking team
> know (either way).

Still the same state as of 2012/02/04.
The regression (X no longer recovering from GPU lockup) is probably
still there, I'm just no longer seeing it, because the trigger of the
GPU lockups got fixed. (These GPU lockups themselfs were not a
regression wrt. 3.3-rc1, that bug existed at least since 3.1)

> Bug-Entry =A0 =A0 =A0 : https://bugzilla.kernel.org/show_bug.cgi?id=3D=
42678
> Subject =A0 =A0 =A0 =A0 : [3.3-rc1] radeon stuck in kernel after lock=
up
> Submitter =A0 =A0 =A0 : Torsten Kaiser <just.for.lkml-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2012-01-21 19:03 (51 days old)
> Message-ID =A0 =A0 =A0: <CAPVoSvSXMvRb=3D1itu9DjF+s=3D6zfAChvUxS-x=3D=
b8EV9kOZinNpA-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D132717=
279606670&w=3D2
> Handled-By =A0 =A0 =A0: J=E9r=F4me Glisse <glisse-CC+yJ3UmIYqDUpFQwHEjaQ@public.gmane.org>
>
>
