From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #14949] drm_vm.c:drm_mmap: possible circular locking dependency detected
Date: Tue, 2 Feb 2010 22:12:34 +0100
Message-ID: <201002022212.34179.rjw@sisk.pl>
References: <vZZJKzCUn4G.A.CPB.F7hZLB@chimera> <201002022146.45078.rjw@sisk.pl> <20100202205857.GA30024@liondog.tnic>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20100202205857.GA30024-f9CnO7I+Q6zU6FkGJEIX5A@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="iso-8859-1"
To: Borislav Petkov <petkovbb-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, DRI <dri-devel-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org>, "Eric W. Biederman" <ebiederm-BGArkANP9klv6pq1l3V1OdBPR1lH4CV8@public.gmane.org>, Greg KH <greg-U8xfFu+wG4EAvxtiuMwx3w@public.gmane.org>

On Tuesday 02 February 2010, Borislav Petkov wrote:
> (Adding Greg to Cc:)
>=20
> On Tue, Feb 02, 2010 at 09:46:45PM +0100, Rafael J. Wysocki wrote:
> > On Monday 01 February 2010, Borislav Petkov wrote:
> > > On Mon, Feb 1, 2010 at 1:22 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> w=
rote:
> > > > This message has been generated automatically as a part of a re=
port
> > > > of recent regressions.
> > > >
> > > > The following bug entry is on the current list of known regress=
ions
> > > > from 2.6.32.  Please verify if it still should be listed and le=
t me know
> > > > (either way).
> > > >
> > > >
> > > > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=3D=
14949
> > > > Subject         : drm_vm.c:drm_mmap: possible circular locking =
dependency detected
> > > > Submitter       : Borislav Petkov <petkovbb-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
> > > > Date            : 2009-12-26 9:45 (37 days old)
> > > > References      : http://marc.info/?l=3Dlinux-kernel&m=3D126182=
073616279&w=3D4
> > > > Handled-By      : Eric W. Biederman <ebiederm-BGArkANP9klv6pq1l3V1OWGXanvQGlWp@public.gmane.org=
m>
> > > > Patch           : http://patchwork.kernel.org/patch/70461/
> > >=20
> > > Yes, this is fixed.
> >=20
> > Do you mean "fixed" as "the fix is in the Linus' tree" or "fixed" a=
s "the
> > patch fixed it for me"?
>=20
> Rather the second one, i.e. it fixes it for me. The patch is named
>=20
> sysfs-cache-the-last-sysfs_dirent-to-improve-readdir-scalability-v2.p=
atch
>=20
> and is "stuck" in Greg's tree. Judging by the quilt series=C2=B9, the=
 patch
> is slated for submission after 2.6.33. This late in the game for .32,
> I'm guessing maybe a stable backport after .33 is out?

I guess so.  Thanks!

Rafael
