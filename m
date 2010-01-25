From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #14924] Weird hard hangs when rendering 'some' web-sites in Firefox
Date: Mon, 25 Jan 2010 22:02:26 +0100
Message-ID: <201001252202.26331.rjw@sisk.pl>
References: <md-TZL3UUvL.A.FiE.xJMXLB@chimera> <20100125135531.GB3749@hack> <4B5DF061.1070704@unsolicited.net>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4B5DF061.1070704-Os2QIKb4eqJd3aXB8m+yKQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="iso-8859-1"
To: David <david-Os2QIKb4eqJd3aXB8m+yKQ@public.gmane.org>
Cc: =?iso-8859-1?q?Am=E9rico_Wang?= <xiyou.wangcong-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Monday 25 January 2010, David wrote:
> Am=E9rico Wang wrote:
> > On Sun, Jan 24, 2010 at 11:04:33PM +0100, Rafael J. Wysocki wrote:
> >  =20
> >> This message has been generated automatically as a part of a repor=
t
> >> of recent regressions.
> >>
> >> The following bug entry is on the current list of known regression=
s
> >>    =20
> > >from 2.6.32.  Please verify if it still should be listed and let m=
e know
> >  =20
> >> (either way).
> >>
> >>
> >> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D14924
> >> Subject		: Weird hard hangs when rendering 'some' web-sites in Fir=
efox
> >> Submitter	: David <david-Os2QIKb4eqJd3aXB8m+yKQ@public.gmane.org>
> >> Date		: 2009-12-21 21:53 (35 days old)
> >> References	: http://marc.info/?l=3Dlinux-kernel&m=3D12614337582334=
0&w=3D4
> >>    =20
> >
> > Hmm, you have CONFIG_DETECT_SOFTLOCKUP=3Dy, I have no idea what hap=
pened,
> > doing a bisect would be appreciated.
> >
> > Thanks.
> >
> >  =20
>=20
> I no longer have the offending hardware, but I think that the issue w=
as
> probably corrected by:
>=20
>     cafe6609d6dc0a6a278f9fdbb59ce4d761a35ddd -
> drm/radeon/kms: Schedule host path read cache flush through the ring =
V2
>=20
> as the offending ATI graphics was indeed R300.

Well, let's assume that's really the case.  Closed.

Rafael
