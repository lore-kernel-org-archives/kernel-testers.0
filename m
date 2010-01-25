From: Jesse Barnes <jbarnes@virtuousgeek.org>
Subject: Re: [Bug #15015] blank screen at random times in laptop when
 sitting  idle
Date: Mon, 25 Jan 2010 10:39:17 -0800
Message-ID: <20100125103917.53f75e9a@jbarnes-piketon>
References: <pYFNu11z2aM.A.pJH.CZMXLB@chimera>
	<q60Z28d_9yH.A.70H.SZMXLB@chimera>
	<84144f021001250610q3160ea06tac5f645b84285388@mail.gmail.com>
	<ea11fea31001250644i78a9e4d9q725eb04f6a7da164@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754632Ab0AYSj0@vger.kernel.org>
In-Reply-To: <ea11fea31001250644i78a9e4d9q725eb04f6a7da164@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Manish Katiyar <mkatiyar@gmail.com>
Cc: Pekka Enberg <penberg@cs.helsinki.fi>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Jithin Emmanuel <jithin1987@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, Linus Torvalds <torvalds@linux-foundation.org>

On Mon, 25 Jan 2010 20:14:28 +0530
Manish Katiyar <mkatiyar@gmail.com> wrote:

> On Mon, Jan 25, 2010 at 7:40 PM, Pekka Enberg
> <penberg@cs.helsinki.fi> wrote:
> > On Mon, Jan 25, 2010 at 12:23 AM, Rafael J. Wysocki <rjw@sisk.pl>
> > wrote:
> >> This message has been generated automatically as a part of a repor=
t
> >> of regressions introduced between 2.6.31 and 2.6.32.
> >>
> >> The following bug entry is on the current list of known regression=
s
> >> introduced between 2.6.31 and 2.6.32. =C2=A0Please verify if it st=
ill
> >> should be listed and let me know (either way).
> >>
> >>
> >> Bug-Entry =C2=A0 =C2=A0 =C2=A0 : http://bugzilla.kernel.org/show_b=
ug.cgi?id=3D15015
> >> Subject =C2=A0 =C2=A0 =C2=A0 =C2=A0 : blank screen at random times=
 in laptop when
> >> sitting idle Submitter =C2=A0 =C2=A0 =C2=A0 : Jithin Emmanuel
> >> <jithin1987@gmail.com> Date =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0: 2010-01-09 16:48 (16 days
> >> old)
> >
> > FWIW, I might have seen this on my Macbook as well (screen went
> > blank but I didn't check the logs). I think I managed to unblank
> > the screen by hitting the "increase brightness" key. But as you
> > say, the bug doesn't trigger very often and I have no idea how to
> > reproduce it at will.
>=20
> I have seen it too on my lenovo T60 with 2.6.32.2. It happens to me
> frequently and has become famous as "coffee bug" in my colleagues.
> Every morning when I goto office and after putting my laptop on
> docking station go for coffee. Once I come back the laptop screen goe=
s
> blank, but haven't been able to manage how to get screen back. Only
> option is hard reboot. This happens almost every once in two three
> days.
>=20
> Let me know what information/logs I can provide to help debug this.
> BTW I normally suspend my laptop at home and then resume it in office
> (if that matters).

Ouch, looks like our DPMS path is failing pretty hard.  I'll add some
folks to cc, hopefully it'll be easy to track down.


--=20
Jesse Barnes, Intel Open Source Technology Center
