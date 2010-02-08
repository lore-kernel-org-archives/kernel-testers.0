From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #15096] Resume lock up -- bisected, commit 3a1151e3f124fd1a2c54b8153f510f1a7c715369
Date: Mon, 8 Feb 2010 20:22:43 +0100
Message-ID: <201002082022.43515.rjw@sisk.pl>
References: <2uzMDuY-7_O.A.M1G.7X1bLB@chimera> <4B7004F4.3030804@canonical.com> <b170af451002080438i18a1e541x8dc038f4b5f129f4@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <b170af451002080438i18a1e541x8dc038f4b5f129f4-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="utf-8"
To: =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Stefan Bader <stefan.bader-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Len Brown <len.brown-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Zhang Rui <rui.zhang-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

On Monday 08 February 2010, Rafa=C5=82 Mi=C5=82ecki wrote:
> 2010/2/8 Stefan Bader <stefan.bader-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org>:
> > Rafael J. Wysocki wrote:
> >> On Monday 08 February 2010, Rafa=C5=82 Mi=C5=82ecki wrote:
> >>> 2010/2/8 Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>:
> >>>> This message has been generated automatically as a part of a rep=
ort
> >>>> of regressions introduced between 2.6.31 and 2.6.32.
> >>>>
> >>>> The following bug entry is on the current list of known regressi=
ons
> >>>> introduced between 2.6.31 and 2.6.32.  Please verify if it still=
 should
> >>>> be listed and let the tracking team know (either way).
> >>>>
> >>>>
> >>>> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=3D1=
5096
> >>>> Subject         : Resume lock up -- bisected, commit 3a1151e3f12=
4fd1a2c54b8153f510f1a7c715369
> >>>> Submitter       : Rafa=C5=82 Mi=C5=82ecki <zajec5-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> >>>> Date            : 2010-01-20 23:15 (19 days old)
> >>>> First-Bad-Commit: http://git.kernel.org/git/linus/3a1151e3f124fd=
1a2c54b8153f510f1a7c715369
> >>
> >> It looks like we should revert this commit, seems broken.
> >
> > Hm, otoh we had definitely people with some Asus laptops who where =
only be able
> > to use backlight control with it. So I would rather prefer some wor=
k around to
> > the suspend/resume problem (_DOS if I understood correctly).
>=20
> It's same case with my Sony VAIO. Without this I can not control
> backlight. Eventually I can hack on GPU registers directly, but I
> don't think it can be called solution.

Well, do I understand correctly that without commit
3a1151e3f124fd1a2c54b8153f510f1a7c715369 you can't control the backligh=
t,
but with the commit applied there's a resume problem on your box?

Rafael
