From: Theodore Tso <tytso-3s7WtUTddSA@public.gmane.org>
Subject: Re: [Bug #14620] WARNING: at mm/page_alloc.c:1805
	__alloc_pages_nodemask
Date: Mon, 16 Nov 2009 21:43:18 -0500
Message-ID: <20091117024318.GC23066@mit.edu>
References: <GUZt44bIwCE.A.vLF.pSdALB@chimera> <xXQGFmujPl.A.SJG.7SdALB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <xXQGFmujPl.A.SJG.7SdALB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, =?iso-8859-1?Q?Rog=E9rio?= Brito <rbrito-qczF+2RCDl1fyO9Q7EP/yw@public.gmane.org>

On Mon, Nov 16, 2009 at 11:37:47PM +0100, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>=20
> The following bug entry is on the current list of known regressions
> from 2.6.31.  Please verify if it still should be listed and let me k=
now
> (either way).
>=20
>=20
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D14620
> Subject		: WARNING: at mm/page_alloc.c:1805 __alloc_pages_nodemask
> Submitter	: Rog=E9rio Brito <rbrito-qczF+2RCDl1fyO9Q7EP/yw@public.gmane.org>
> Date		: 2009-11-06 23:10 (11 days old)
> References	: http://marc.info/?l=3Dlinux-kernel&m=3D125754907413892&w=
=3D4

This isn't technically a regression, since the warning is simply
complaining about something that apparently ext4 has been doing for a
long time, which is that it allocates some very large order data
buffers.  So the change referenced simply printed a warning message
that complained about the fact.

The actual problem will be fixed in 2.6.32, as we no longer allocate
the big data buffers at mount time.

						- Ted
