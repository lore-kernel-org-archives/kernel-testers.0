From: Yong Zhang <yong.zhang0-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14481] umount blocked for more than 120 seconds after USB 
	drive removal
Date: Tue, 27 Oct 2009 10:04:12 +0800
Message-ID: <2674af740910261904m13985d9ck46e5d665517ca6a6@mail.gmail.com>
References: <Sj-rRjx6TwF.A.djE.vqe5KB@chimera>
	 <6dRYo8ss7vL.A.x7E.4qe5KB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=Ho8mNP0TcitSF5USEldVqOCmmuarwugoqbA48Yccxdc=;
        b=WU/Pe5bcKWBMLw7d/hLHfAIqBRPhkKilipYDlIbVJGOmIP4p9vXUmwZcEJDfyPUjA4
         O/EssLGdnD6y5L52XggSqrtuJDVPg+TzhnnlfF8Fp0OihyawMFhF7sL7e/+bQh233F3u
         xF6RMBNHZ2z3Z0qgDvye1QQRO6f4b0nbyN/SY=
In-Reply-To: <6dRYo8ss7vL.A.x7E.4qe5KB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Robert Hancock <hancockrwd-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Tue, Oct 27, 2009 at 2:56 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
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
cgi?id=3D14481
> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : umount blocked for more than 12=
0 seconds after USB drive removal
> Submitter =C2=A0 =C2=A0 =C2=A0 : Robert Hancock <hancockrwd-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org=
>
> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2009-10-21 5:26 (6 da=
ys old)
> References =C2=A0 =C2=A0 =C2=A0: http://marc.info/?l=3Dlinux-kernel&m=
=3D125610280532245&w=3D4
>
>

I met the same problem on 2.6.32-rc5

Thanks,
Yong

> --
> To unsubscribe from this list: send the line "unsubscribe linux-kerne=
l" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at =C2=A0http://vger.kernel.org/majordomo-info.ht=
ml
> Please read the FAQ at =C2=A0http://www.tux.org/lkml/
>
