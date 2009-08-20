From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #13942] Troubles with AoE and uninitialized object
Date: Thu, 20 Aug 2009 23:29:33 +0200
Message-ID: <200908202329.33695.rjw@sisk.pl>
References: <jCYznkTxcLB.A.EPH.eNIjKB@chimera> <ADSuNT6McuD.A.1t.BOIjKB@chimera> <20090820212959.0ece42e3@neptune.home>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090820212959.0ece42e3-hY15tx4IgV39zxVx7UNMDg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="utf-8"
To: Bruno =?utf-8?q?Pr=C3=A9mont?= <bonbons-ud5FBsm0p/xEiooADzr8i9i2O/JbrIOy@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Thursday 20 August 2009, Bruno Pr=C3=A9mont wrote:
> On Wed, 19 August 2009 "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> >=20
> > The following bug entry is on the current list of known regressions
> > from 2.6.30.  Please verify if it still should be listed and let me
> > know (either way).
> >=20
> >=20
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D13942
> > Subject		: Troubles with AoE and uninitialized object
> > Submitter	: Bruno Pr=C3=A9mont <bonbons-ud5FBsm0p/xEiooADzr8i9i2O/JbrIOy@public.gmane.org>
> > Date		: 2009-08-04 10:12 (16 days old)
> > References	:
> > http://marc.info/?l=3Dlinux-kernel&m=3D124938117104811&w=3D4
> >=20
>=20
> This one is still valid for 2.6.31-rc6 though I have not yet taken
> the time to attempt bisecting it. I will probably bisect over the
> week-end.

Thanks for the update.

Rafael
