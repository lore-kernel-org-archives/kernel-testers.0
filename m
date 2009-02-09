From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #12508] "powerpc/pci: Reserve legacy regions on PCI" broke my G3
Date: Mon, 9 Feb 2009 01:39:05 +0100
Message-ID: <200902090139.06313.rjw@sisk.pl>
References: <AIghyjFgMFP.A.uZD._10jJB@chimera> <sWhNs83kKPE.A.DvG.Y30jJB@chimera> <18831.27907.957902.357829@harpo.it.uu.se>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <18831.27907.957902.357829-gq7oiAaKCbRt3AgVzhmPzw@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>

On Monday 09 February 2009, Mikael Pettersson wrote:
> Rafael J. Wysocki wrote:
> >This message has been generated automatically as a part of a report
> >of recent regressions.
> >
> >The following bug entry is on the current list of known regressions
> >from 2.6.28.  Please verify if it still should be listed and let me know
> >(either way).
> >
> >
> >Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D12508
> >Subject		: "powerpc/pci: Reserve legacy regions on PCI" broke my G3
> >Submitter	: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
> >Date		: 2009-01-17 22:46 (23 days old)
> >First-Bad-Commit: http://git.kernel.org/?p=3Dlinux/kernel/git/torvalds/linu=
> >x-2.6.git;a=3Dcommit;h=3Dc1f343028d35ba4e88cd4a3c44e0d8b8a84264ee
> >References	: http://marc.info/?l=3Dlinux-kernel&m=3D123223247325452&w=3D4
> >Handled-By	: Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
> 
> Fixed in 2.6.29-rc4.

Thanks, closed.

> See <http://marc.info/?l=linux-kernel&m=123394660404763&w=2> (you were CC:d).

Yes, but I wasn't quite sure if that was a mainline commit or a commit from
the Ben's tree.

Thanks,
Rafael
