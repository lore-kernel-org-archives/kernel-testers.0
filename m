From: Torsten Kaiser <just.for.lkml-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Subject: Re: [Bug #42678] [3.3-rc1] radeon stuck in kernel after lockup
Date: Fri, 24 Feb 2012 10:14:05 +0100
Message-ID: <CAPVoSvQqtLmH3rnmGQqOM9V2g4_VDbGtOWfvf2Ag09zxX=8HqA@mail.gmail.com>
References: <y44pDJ8xoDC.A.08E.h8rRPB@chimera>
	<qCQH7HfZS8E.A.UOG.H9rRPB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type:content-transfer-encoding;
        bh=Ra6W0JgYMB/oUW0yz5XyTG6kElgm3k8h2PNpmkwt384=;
        b=JzknHK2a5WijB3VU8NeVXkxD+t1PVrpdu9HBY2EJwakI6kK6Ip9PKqDe1i0vnM9J9Q
         VzcClx5vxUIZ/JCkm66/+gtnNqF/S9tAUwRncIvqXiuNYlvEJbNkBGzvR55PZDuQaGcl
         9Db/5mLZcBZE4EFJSADUuWhiidIObb1/M+V6g=
In-Reply-To: <qCQH7HfZS8E.A.UOG.H9rRPB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, =?ISO-8859-1?Q?J=E9r=F4me_Glisse?= <glisse-CC+yJ3UmIYqDUpFQwHEjaQ@public.gmane.org>

2012/2/23 Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>:
> This message has been generated automatically as a part of a summary =
report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 3.2. =A0Please verify if it still should be listed and let the t=
racking team
> know (either way).
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
42678
> Subject =A0 =A0 =A0 =A0 : [3.3-rc1] radeon stuck in kernel after lock=
up
> Submitter =A0 =A0 =A0 : Torsten Kaiser <just.for.lkml-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2012-01-21 19:03 (34 days old)
> Message-ID =A0 =A0 =A0: <CAPVoSvSXMvRb=3D1itu9DjF+s=3D6zfAChvUxS-x=3D=
b8EV9kOZinNpA-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D132717=
279606670&w=3D2
> Handled-By =A0 =A0 =A0: J=E9r=F4me Glisse <glisse-CC+yJ3UmIYqDUpFQwHEjaQ@public.gmane.org>

As requested: Yes, I think it is still open and should be listed as an
regression.

I put a summary about why I think this way into the Bugzilla bug. I
believe putting this into Bugzilla was the better way, as to not lose
it on the lkml. But I will also try to answer email, if that is
preferred.

Torsten
