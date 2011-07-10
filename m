From: Alexey Zaytsev <alexey.zaytsev-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #38102] BUG kmalloc-2048: Poison overwritten
Date: Sun, 10 Jul 2011 15:29:21 +0400
Message-ID: <CAB9v_DGfA4YLhDKeEZziFLgCak8cL+CjGdjkiwa_YtF_HHw5Dg@mail.gmail.com>
References: <AtAvQwe5sAK.A.loH.OlYGOB@chimera>
	<gK_efVqs2fP.A.O5H.olYGOB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type:content-transfer-encoding;
        bh=kliY3+mJQkDkiu9e65S5TzqpEwPAewBTTvHJblVL/Tg=;
        b=w5UoFp4woorFSuwh6zvrg5zzQSISr8MSINL1gaycMtIjx9U+Jql014eEjNWlPBggFV
         lolGCVSME0sw46IEzp6y+cBtQrqAgrbBjqMXObcUU4C+8kKcKTDjvAPNlgdOJHJtimhD
         xfLcDaMHOueLuowOY1LWM3qSI7RNooJdjv0S8=
In-Reply-To: <gK_efVqs2fP.A.O5H.olYGOB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>

On Sun, Jul 10, 2011 at 14:58, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.38 and 2.6.39.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.38 and 2.6.39. =C2=A0Please verify if it still=
 should
> be listed and let the tracking team know (either way).

Hey.

This is not a regression, it's been this way since at least since
2.6.27 (checked), and probably from the beginning.

>
>
> Bug-Entry =C2=A0 =C2=A0 =C2=A0 : http://bugzilla.kernel.org/show_bug.=
cgi?id=3D38102
> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : BUG kmalloc-2048: Poison overwr=
itten
> Submitter =C2=A0 =C2=A0 =C2=A0 : Alexey Zaytsev <alexey.zaytsev@gmail=
=2Ecom>
> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2011-06-23 17:33 (18 =
days old)
>
>
>
