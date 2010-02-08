From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #15096] Resume lock up -- bisected, commit 3a1151e3f124fd1a2c54b8153f510f1a7c715369
Date: Mon, 8 Feb 2010 20:24:32 +0100
Message-ID: <201002082024.32483.rjw@sisk.pl>
References: <2uzMDuY-7_O.A.M1G.7X1bLB@chimera> <201002081156.24020.rjw@sisk.pl> <b170af451002080349x4fb955b2wb9d0bdf6e6e03d0e@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <b170af451002080349x4fb955b2wb9d0bdf6e6e03d0e-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="utf-8"
To: =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Len Brown <len.brown-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Stefan Bader <stefan.bader-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org>, Zhang Rui <rui.zhang-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

On Monday 08 February 2010, Rafa=C5=82 Mi=C5=82ecki wrote:
> W dniu 8 lutego 2010 11:56 u=C5=BCytkownik Rafael J. Wysocki <rjw@sis=
k.pl> napisa=C5=82:
> > On Monday 08 February 2010, Rafa=C5=82 Mi=C5=82ecki wrote:
> >> 2010/2/8 Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>:
> >> > This message has been generated automatically as a part of a rep=
ort
> >> > of regressions introduced between 2.6.31 and 2.6.32.
> >> >
> >> > The following bug entry is on the current list of known regressi=
ons
> >> > introduced between 2.6.31 and 2.6.32.  Please verify if it still=
 should
> >> > be listed and let the tracking team know (either way).
> >> >
> >> >
> >> > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=3D1=
5096
> >> > Subject         : Resume lock up -- bisected, commit 3a1151e3f12=
4fd1a2c54b8153f510f1a7c715369
> >> > Submitter       : Rafa=C5=82 Mi=C5=82ecki <zajec5-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> >> > Date            : 2010-01-20 23:15 (19 days old)
> >> > First-Bad-Commit: http://git.kernel.org/git/linus/3a1151e3f124fd=
1a2c54b8153f510f1a7c715369
> >
> > It looks like we should revert this commit, seems broken.
> >
> > Anyway, I'll do my best to have a look at this bug later today.
>=20
> In such case I'd prefer to add "broken_DOS" flag for devices that wer=
e
> enabled by this patch. We could avoid restoring backlight on resume
> for broken_DOS then and maybe just update brightness to current value=
=2E

Or perhaps we can try to restore the backlight at a different place.

Rafael
