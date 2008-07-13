From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: 2.6.26-rc9-git12: Reported regressions from 2.6.25
Date: Sun, 13 Jul 2008 12:47:05 -0700 (PDT)
Message-ID: <alpine.LFD.1.10.0807131230130.2959@woody.linux-foundation.org>
References: <Y1jK9GMA8kJ.A.qOH.7GleIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Y1jK9GMA8kJ.A.qOH.7GleIB@albercik>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="iso-8859-1"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>, Greg KH <greg-U8xfFu+wG4EAvxtiuMwx3w@public.gmane.org>



On Sun, 13 Jul 2008, Rafael J. Wysocki wrote:
>=20
> Regressions with patches
> ------------------------
>=20
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11072
> Subject		: scsi-layer crash after usb storage device unplug
> Submitter	: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
> Date		: 2008-07-12 01:50 (2 days old)
> Handled-By	: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
> Patch		: http://bugzilla.kernel.org/show_bug.cgi?id=3D11072#c3

Alan, Greg?

> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11057
> Subject		: vbetest fails on 2.6.26-rc9
> Submitter	: PaX Team <pageexec-Y8qEzhMunLyT9ig0jae3mg@public.gmane.org>
> Date		: 2008-07-08 19:46 (6 days old)
> Handled-By	: Venkatesh Pallipadi <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> Patch		: http://bugzilla.kernel.org/attachment.cgi?id=3D16792&action=3D=
view

Merged as commit a361ee5cb8011763ece7b4add393e206439db8b3.

> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11024
> Subject		: 2.6.25 to 2.6.26-rc8 regression (related to ahci and acpi =
_GTF)
> Submitter	: Mathieu B=C3=A9rard <Mathieu.Berard-S9djqSf+cojYtjvyW6yDsg@public.gmane.org>
> Date		: 2008-07-01 9:39 (13 days old)
> References	: http://marc.info/?t=3D121490593600001&r=3D1&w=3D4
> Handled-By	: Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Patch		: http://marc.info/?l=3Dlinux-kernel&m=3D121514631317343&w=3D4

Merged as commit b344991ace21896a83694c86d132b8494a29f3be.

> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D10957
> Subject		: pata_pcmcia with Sandisk Extreme III 8GB
> Submitter	: Komuro <komurojun-mbn-dTzOdQ2U+/YAvxtiuMwx3w@public.gmane.org>
> Date		: 2008-06-07 13:37 (37 days old)
> References	: http://marc.info/?l=3Dlinux-kernel&m=3D121284627119861&w=
=3D4
> Handled-By	: Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> 		  Dominik Brodowski <linux-X3ehHDuj6sIIGcDfoQAp7OTW4wlIGRCZ@public.gmane.org>
> 		  Komuro <komurojun-mbn-dTzOdQ2U+/YAvxtiuMwx3w@public.gmane.org>
> Patch		: http://marc.info/?l=3Dlinux-kernel&m=3D121530861605673&w=3D4

This patch is disputed. See the rest of the thread. Maybe some subtle=20
timing detail?

> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D10862
> Subject		: forcedeth: lockdep warning on ethtool -s
> Submitter	: Tobias Diedrich <ranma+kernel-YxUgxmcw2FPQD6PfKP4TzA@public.gmane.org>
> Date		: 2008-06-01 8:37 (43 days old)
> References	: http://marc.info/?l=3Dlinux-kernel&m=3D121230964032247&w=
=3D4
> Handled-By	: Tobias Diedrich <ranma+kernel-YxUgxmcw2FPQD6PfKP4TzA@public.gmane.org>
> Patch		: http://lkml.org/lkml/2008/6/15/120

Commit 97bff0953dd45a633fa69e1a650d612f5610a60b.

> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D10725
> Subject		: USB Mass storage mount fails: Write protect on
> Submitter	: Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2008-05-16 14:55 (59 days old)
> References	: http://marc.info/?l=3Dlinux-kernel&m=3D121095168003572&w=
=3D4
> Handled-By	: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
> Patch		: http://marc.info/?l=3Dlinux-scsi&m=3D121433068314568&w=3D2

Commit bdb2b8cab4392ce41ddfbd6773a3da3334daf836.

			Linus
