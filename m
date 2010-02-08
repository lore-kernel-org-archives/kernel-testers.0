From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #15100] X11 is black after resume from s2ram if my T400 was previous in docking station before
Date: Mon, 8 Feb 2010 11:58:36 +0100
Message-ID: <201002081158.36284.rjw@sisk.pl>
References: <2uzMDuY-7_O.A.M1G.7X1bLB@chimera> <iuJeop2ribM.A.YrH.bY1bLB@chimera> <201002080952.55900.toralf.foerster@gmx.de>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <201002080952.55900.toralf.foerster-Mmb7MZpHnFY@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="iso-8859-1"
To: Toralf =?iso-8859-1?q?F=F6rster?= <toralf.foerster-Mmb7MZpHnFY@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Eric Anholt <eric-WhKQ6XTQaPysTnJN9+BGXg@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>, Matthew Garrett <mjg-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>

On Monday 08 February 2010, Toralf F=F6rster wrote:
>=20
> Rafael J. Wysocki wrote at 01:28:23
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.31 and 2.6.32.
> >=20
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.31 and 2.6.32.  Please verify if it still sh=
ould
> > be listed and let the tracking team know (either way).
> >=20
> >=20
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D15100
> > Subject		: X11 is black after resume from s2ram if my T400 was prev=
ious in
> >  docking station before Submitter	: Toralf F=F6rster <toralf.foerst=
er-Mmb7MZpHnFY@public.gmane.org>
> > Date		: 2010-01-21 08:56 (18 days old)
> > First-Bad-Commit:
> >  http://git.kernel.org/git/linus/c1c7af60892070e4b82ad63bbfb95ae745=
056de0
> >=20
>=20
> The current 2.6.33-rc7 has a much more worse behaviour. With the prev=
iuos=20
> series I could (sometimes) put the ThinkPAd into the docking station =
again=20
> (after wakeup) and the external screen shows the X11 screen or at lea=
st I=20
> could press Ctr-Alt-Backspace and restart the X11 server. The current=
 -rc7=20
> however is balck, don't accept after wakeup key nor mouse nor any Sys=
RQ=20
> keyboard sequence.

I wonder if the patch from http://bugzilla.kernel.org/show_bug.cgi?id=3D=
15000
helps?

Rafael
