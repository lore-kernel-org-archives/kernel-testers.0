From: "Luis R. Rodriguez" <mcgrof-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14874] Ath5k regression with commit 8bf3d79bc401ca417ccf9fc076d3295d1a71dbf5
Date: Mon, 11 Jan 2010 07:05:01 -0800
Message-ID: <43e72e891001110705w43524cc6pac1ff6c971926eaf@mail.gmail.com>
References: <wnS54-l8PVO.A.TlF.oMlSLB@chimera> <omZ8aBZReyD.A.1h.vNlSLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :from:date:message-id:subject:to:cc:content-type
         :content-transfer-encoding;
        bh=iKHB4Z5KDRRExDy9KnLbtP+Bgt2D3XBwAU/MbHWMJl8=;
        b=U8DVC/eAS0b/HK2qWUeqEDOWj2Lk4yRs62myylO6xrwNUknifT2OJVXRgZcB4oXccn
         ax+IlGvig3651zDC4WcmS7OA4gd69bDGgW/6/LKIKrS864rygZdwVOkHMybW5uYHRJyg
         YEycckHpasfPZJ8b3QqbWId1yHrLlambBUK/k=
In-Reply-To: <omZ8aBZReyD.A.1h.vNlSLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Joshua Covington <joshuacov-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>

On Sun, Jan 10, 2010 at 2:32 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.32. =C2=A0Please verify if it still should be listed and let=
 me know
> (either way).

This should be closed now.

>
> Bug-Entry =C2=A0 =C2=A0 =C2=A0 : http://bugzilla.kernel.org/show_bug.=
cgi?id=3D14874
> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : Ath5k regression with commit 8b=
f3d79bc401ca417ccf9fc076d3295d1a71dbf5
> Submitter =C2=A0 =C2=A0 =C2=A0 : Joshua Covington <joshuacov@googlema=
il.com>
> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0: 2009-12-25 00:49 (17 =
days old)
> Handled-By =C2=A0 =C2=A0 =C2=A0: Luis R. Rodriguez <mcgrof-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Patch =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 : http://bugzilla.kernel.org=
/attachment.cgi?id=3D24335
>
>
>
