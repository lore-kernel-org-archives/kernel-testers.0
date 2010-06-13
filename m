From: Parag Warudkar <parag.lkml-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #16054] UML broken for CONFIG_SLAB
Date: Sun, 13 Jun 2010 11:35:34 -0400
Message-ID: <AANLkTikKQBrH6rvsj-6chzYqd8NUsmEQBGD2jvTvpJVf@mail.gmail.com>
References: <g77CuMUl7QI.A.5wF.V5OFMB@chimera>
	<YPGdyfWGvNK.A.KHH.75OFMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:received:in-reply-to
         :references:date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=IbnReFUaksQAHv01w1u0QnPD8VLgzMVk6j4ydYyR2Fg=;
        b=Kjuu/phCEGR3F46P8gh+TK9QHlj2fFnBfFJWw8nMd4U5yX0GPPWlfFz37/IAb+snZw
         2vrfE1jBzOOvQWuVSLjq0m9zlDIjMmuBbAtqEn5Z0VhdGuo/0j+jBU3vBs2RniR6T5BI
         wkelDze5+SsfpYEiPq13lQV/IZTXiFjTTGQJc=
In-Reply-To: <YPGdyfWGvNK.A.KHH.75OFMB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Borislav Petkov <bp-Gina5bIWoIWzQB+pC5nmwQ@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Sun, Jun 13, 2010 at 10:49 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote=
:
>
>
> Bug-Entry =A0 =A0 =A0 : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
16054
> Subject =A0 =A0 =A0 =A0 : UML broken for CONFIG_SLAB
> Submitter =A0 =A0 =A0 : Parag Warudkar <parag.lkml-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date =A0 =A0 =A0 =A0 =A0 =A0: 2010-05-23 21:40 (22 days old)
> Message-ID =A0 =A0 =A0: <alpine.DEB.2.00.1005231149100.605@parag-lapt=
op>
> References =A0 =A0 =A0: http://marc.info/?l=3Dlinux-kernel&m=3D127465=
083806617&w=3D2

Borislav,

I believe both of the issues I encountered that are part of this bug
entry (missing/superfluous slab inclusion issues and cfq related boot
crash due to popcnt/hweight stuff) have a known fix [1] but I am not
sure if any of it actually landed in -git. Quick search through
git.kernel.org log doesn't show anything relevant.

I think there was ongoing discussion on the hweight include fix - so
keeping this open until fixes are in may be what we should do as of
now.


[1] http://marc.info/?l=3Dlinux-kernel&m=3D127522065202435&w=3D2


Thanks.

Parag
