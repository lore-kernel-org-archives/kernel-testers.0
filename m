From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: Re: [Bug #15096] Resume lock up -- bisected, commit 3a1151e3f124fd1a2c54b8153f510f1a7c715369
Date: Mon, 8 Feb 2010 21:41:31 +0100
Message-ID: <201002082141.31512.rjw@sisk.pl>
References: <2uzMDuY-7_O.A.M1G.7X1bLB@chimera> <201002082024.32483.rjw@sisk.pl> <b170af451002081131w6f1e185epc4e0c13323b75934@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <b170af451002081131w6f1e185epc4e0c13323b75934@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="utf-8"
To: =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Len Brown <len.brown@intel.com>, Stefan Bader <stefan.bader@canonical.com>, Zhang Rui <rui.zhang@intel.com>, =?utf-8?q?J=C3=A9r=C3=B4me_Glisse?= <glisse@freedesktop.org>

On Monday 08 February 2010, Rafa=C5=82 Mi=C5=82ecki wrote:
> W dniu 8 lutego 2010 20:24 u=C5=BCytkownik Rafael J. Wysocki <rjw@sis=
k.pl> napisa=C5=82:
> > On Monday 08 February 2010, Rafa=C5=82 Mi=C5=82ecki wrote:
> >> W dniu 8 lutego 2010 11:56 u=C5=BCytkownik Rafael J. Wysocki <rjw@=
sisk.pl> napisa=C5=82:
> >> > On Monday 08 February 2010, Rafa=C5=82 Mi=C5=82ecki wrote:
> >> >> 2010/2/8 Rafael J. Wysocki <rjw@sisk.pl>:
> >> >> > This message has been generated automatically as a part of a =
report
> >> >> > of regressions introduced between 2.6.31 and 2.6.32.
> >> >> >
> >> >> > The following bug entry is on the current list of known regre=
ssions
> >> >> > introduced between 2.6.31 and 2.6.32.  Please verify if it st=
ill should
> >> >> > be listed and let the tracking team know (either way).
> >> >> >
> >> >> >
> >> >> > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
15096
> >> >> > Subject         : Resume lock up -- bisected, commit 3a1151e3=
f124fd1a2c54b8153f510f1a7c715369
> >> >> > Submitter       : Rafa=C5=82 Mi=C5=82ecki <zajec5@gmail.com>
> >> >> > Date            : 2010-01-20 23:15 (19 days old)
> >> >> > First-Bad-Commit: http://git.kernel.org/git/linus/3a1151e3f12=
4fd1a2c54b8153f510f1a7c715369
> >> >
> >> > It looks like we should revert this commit, seems broken.
> >> >
> >> > Anyway, I'll do my best to have a look at this bug later today.
> >>
> >> In such case I'd prefer to add "broken_DOS" flag for devices that =
were
> >> enabled by this patch. We could avoid restoring backlight on resum=
e
> >> for broken_DOS then and maybe just update brightness to current va=
lue.
> >
> > Or perhaps we can try to restore the backlight at a different place=
=2E
>=20
> I wanted to find out what causes this lock up by syncing modules
> resume or putting some delays. See bug report of my question.
> Unfortunately didn't get answer.

Hmm.

I think the J=C3=A9r=C3=B4me's comment at

http://bugzilla.kernel.org/show_bug.cgi?id=3D15096#c19

is actually correct.  It looks like acpi_video_resume() is executed bef=
ore the
KMS driver's resume and things go south.

In fact, we seem to have a design issue with acpi_video_resume(), becau=
se it's
called too early.

Rafael
