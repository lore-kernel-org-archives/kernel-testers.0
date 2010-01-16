From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #14906] boot problem bisected to commit 99935a7a59
Date: Sat, 16 Jan 2010 22:55:09 +0100
Message-ID: <201001162255.09595.rjw@sisk.pl>
References: <LptzGUUXbTK.A.MSF.ymhOLB@chimera> <201001072204.50798.ve@vetienne.net> <201001161023.37484.ve@vetienne.net>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <201001161023.37484.ve-DnimGkuWo7Hk1uMJSBkQmQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="utf-8"
To: Vincent ETIENNE <ve-DnimGkuWo7Hk1uMJSBkQmQ@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Yinghai Lu <yinghai-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>

On Saturday 16 January 2010, Vincent ETIENNE wrote:
> Le jeudi 07 janvier 2010 22:04:50, Vincent ETIENNE a =C3=A9crit :
> > Le mardi 29 d=C3=A9cembre 2009 23:43:09, Rafael J. Wysocki a =C3=A9=
crit :
> > > On Tuesday 29 December 2009, Vincent ETIENNE wrote:
> > > > Le mardi 29 d=C3=A9cembre 2009 16:09:58, Rafael J. Wysocki a =C3=
=A9crit :
> > > > > This message has been generated automatically as a part of a =
report
> > > > > of recent regressions.
> > > > >
> > > > > The following bug entry is on the current list of known regre=
ssions
> > > > > from 2.6.32.  Please verify if it still should be listed and =
let me
> > > > > know (either way).
> > > > >
> > > > >
> > > > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D1490=
6
> > > > > Subject		: boot problem bisected to commit 99935a7a59
> > > > > Submitter	: Vincent ETIENNE <ve-DnimGkuWo7Hk1uMJSBkQmQ@public.gmane.org>
> > > > > Date		: 2009-12-19 16:07 (11 days old)
> > > > > References	: http://marc.info/?l=3Dlinux-kernel&m=3D126123946=
509316&w=3D4
> > > > > Handled-By	: Yinghai Lu <yinghai-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
> > > > > Patch		: http://patchwork.kernel.org/patch/68941/
> > > >
> > > > The proposed patch works for me but the bug is still present in
> > > > 2.6.33-rc2 (patch still aply cleanly in rc2 and continue to sol=
ve the
> > > > problem). Have to wait for rc3.
> > >
> > > Thanks for the update.
> > >
> > > Rafael
> >=20
> > Hopes not to be too much cumbersome but still no luck in 2.6.33.rc3=
 : the
> > problem is present. Nethertheless the proposed patch still cure it.
> >=20
>=20
> Folow-up : tested in rc4. Everything is fine.
>  Thanks all for your help especially mister Yinghai Lu

Thanks, closing.

Rafael
