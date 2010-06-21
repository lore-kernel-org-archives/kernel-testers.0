From: Sedat Dilek <sedat.dilek-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Subject: Re: [Bug #16169] Complain from preemptive debug
Date: Mon, 21 Jun 2010 02:07:04 +0200
Message-ID: <AANLkTilVdN0qLq7v0H7wbxuNwlcVJ_5jjrW6q0_Nqm4F@mail.gmail.com>
References: <lc60d4toGTL.A.QzD._LpHMB@chimera>
	<W8JfMs9cZw.A.PcG.hNpHMB@chimera>
Reply-To: sedat.dilek-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:mime-version:received:received:reply-to
         :in-reply-to:references:date:message-id:subject:from:to:cc
         :content-type:content-transfer-encoding;
        bh=+IDY5/6YIaBVHmxEK6nKY6bUtnTztrC2scE54Vqd/Rc=;
        b=fmQR5rUCC9xjkHQgSYIXy+48pHe5f7UcNYsiHkijwGddJFjuJ9tln5fiBUHxKcyotR
         nNNqaNLLRcJMiEofhtngcTHSxWNeDZ/jo3dmIrl2AmVgBY8DevMOwuIuyQFfeLysqGgf
         EFZIn3KmXbr4HcZ/Rl8TA9qsFTVfbzKOvqJTc=
In-Reply-To: <W8JfMs9cZw.A.PcG.hNpHMB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Dmitry Monakhov <dmonakhov-GEFAQzZX7r8dnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Hi Rafael,

Andrew answered in [1]:

"I just merged a different patch whcih should address this:
=46rom: Sergey Senozhatsky <sergey.senozhatsky-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>"

This alternative patch is fixing the problem here, too.

Kind Regards,
- Sedat -

[1] https://patchwork.kernel.org/patch/106555/


On Mon, Jun 21, 2010 at 12:17 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote=
:
> This message has been generated automatically as a part of a summary =
report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.34. =C2=A0Please verify if it still should be listed and let=
 the tracking team
> know (either way).
>
>
> Bug-Entry =C2=A0 =C2=A0 =C2=A0 : http://bugzilla.kernel.org/show_bug.=
cgi?id=3D16169
> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : Complain from preemptive debug
> Submitter =C2=A0 =C2=A0 =C2=A0 : Sedat Dilek <sedat.dilek@googlemail.=
com>
> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2010-05-31 10:10 (21 =
days old)
> Message-ID =C2=A0 =C2=A0 =C2=A0: <AANLkTilTnAAZIizKinYsxFkNTkrmPqk6XJ=
JuUjjhJ7EP-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
> References =C2=A0 =C2=A0 =C2=A0: http://lkml.org/lkml/2010/5/31/77
> Handled-By =C2=A0 =C2=A0 =C2=A0: Dmitry Monakhov <dmonakhov-GEFAQzZX7r9QFI55V6+gNQ@public.gmane.org=
g>
> Patch =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : http://www.spinics.net/lis=
ts/cpufreq/msg01631.html
>
>
>
