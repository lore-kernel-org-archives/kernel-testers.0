From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #14620] WARNING: at mm/page_alloc.c:1805 __alloc_pages_nodemask
Date: Tue, 17 Nov 2009 23:53:50 +0100
Message-ID: <200911172353.50156.rjw@sisk.pl>
References: <GUZt44bIwCE.A.vLF.pSdALB@chimera> <xXQGFmujPl.A.SJG.7SdALB@chimera> <20091117024318.GC23066@mit.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20091117024318.GC23066-3s7WtUTddSA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="iso-8859-1"
To: Theodore Tso <tytso-3s7WtUTddSA@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, =?iso-8859-1?q?Rog=E9rio_Brito?= <rbrito-qczF+2RCDl1fyO9Q7EP/yw@public.gmane.org>

On Tuesday 17 November 2009, Theodore Tso wrote:
> On Mon, Nov 16, 2009 at 11:37:47PM +0100, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> >=20
> > The following bug entry is on the current list of known regressions
> > from 2.6.31.  Please verify if it still should be listed and let me=
 know
> > (either way).
> >=20
> >=20
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D14620
> > Subject		: WARNING: at mm/page_alloc.c:1805 __alloc_pages_nodemask
> > Submitter	: Rog=E9rio Brito <rbrito-qczF+2RCDl1fyO9Q7EP/yw@public.gmane.org>
> > Date		: 2009-11-06 23:10 (11 days old)
> > References	: http://marc.info/?l=3Dlinux-kernel&m=3D125754907413892=
&w=3D4
>=20
> This isn't technically a regression, since the warning is simply
> complaining about something that apparently ext4 has been doing for a
> long time, which is that it allocates some very large order data
> buffers.  So the change referenced simply printed a warning message
> that complained about the fact.
>=20
> The actual problem will be fixed in 2.6.32, as we no longer allocate
> the big data buffers at mount time.

Thanks, I'm going to close the bug.

Rafael
