From: Vincent ETIENNE <ve-DnimGkuWo7Hk1uMJSBkQmQ@public.gmane.org>
Subject: Re: [Bug #14906] boot problem bisected to commit 99935a7a59
Date: Thu, 7 Jan 2010 22:04:50 +0100
Message-ID: <201001072204.50798.ve@vetienne.net>
References: <LptzGUUXbTK.A.MSF.ymhOLB@chimera> <200912292237.58999.ve@vetienne.net> <200912292343.09795.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200912292343.09795.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="utf-8"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Yinghai Lu <yinghai-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>

Le mardi 29 d=C3=A9cembre 2009 23:43:09, Rafael J. Wysocki a =C3=A9crit=
 :
> On Tuesday 29 December 2009, Vincent ETIENNE wrote:
> > Le mardi 29 d=C3=A9cembre 2009 16:09:58, Rafael J. Wysocki a =C3=A9=
crit :
> > > This message has been generated automatically as a part of a repo=
rt
> > > of recent regressions.
> > >
> > > The following bug entry is on the current list of known regressio=
ns
> > > from 2.6.32.  Please verify if it still should be listed and let =
me
> > > know (either way).
> > >
> > >
> > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D14906
> > > Subject		: boot problem bisected to commit 99935a7a59
> > > Submitter	: Vincent ETIENNE <ve-DnimGkuWo7Hk1uMJSBkQmQ@public.gmane.org>
> > > Date		: 2009-12-19 16:07 (11 days old)
> > > References	: http://marc.info/?l=3Dlinux-kernel&m=3D1261239465093=
16&w=3D4
> > > Handled-By	: Yinghai Lu <yinghai-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
> > > Patch		: http://patchwork.kernel.org/patch/68941/
> >
> > The proposed patch works for me but the bug is still present in
> > 2.6.33-rc2 (patch still aply cleanly in rc2 and continue to solve t=
he
> > problem). Have to wait for rc3.
>=20
> Thanks for the update.
>=20
> Rafael
>=20

Hopes not to be too much cumbersome but still no luck in 2.6.33.rc3 : t=
he=20
problem is present. Nethertheless the proposed patch still cure it.=20


