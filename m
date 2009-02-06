From: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
Subject: Re: [Bug #12508] "powerpc/pci: Reserve legacy regions on PCI"
 broke my G3
Date: Fri, 6 Feb 2009 19:55:54 +0100
Message-ID: <18828.34746.639582.20441@harpo.it.uu.se>
References: <kkuKoQJIW-D.A.61C.auYiJB@chimera>
	<pWZw1SZjMCH.A.ZIG.YvYiJB@chimera>
	<1233783867.4612.9.camel@pasglop>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1233783867.4612.9.camel@pasglop>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>

Benjamin Herrenschmidt writes:
 > On Wed, 2009-02-04 at 11:24 +0100, Rafael J. Wysocki wrote:
 > > This message has been generated automatically as a part of a report
 > > of recent regressions.
 > > 
 > > The following bug entry is on the current list of known regressions
 > > from 2.6.28.  Please verify if it still should be listed and let me know
 > > (either way).
 > 
 > Can you check if it's still broken ?
 > 
 > 59b608c2c33feacc8be281ec3ba9ca2a3a5cb9a7 might have fixed it...
 > 
 > Cheers,
 > Ben.

Confirmed. Adding 59b608c2c33feacc8be281ec3ba9ca2a3a5cb9a7 to
2.6.29-rc3 makes it boot fine on my G3.

Thanks,

/Mikael

 > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12508
 > > Subject		: "powerpc/pci: Reserve legacy regions on PCI" broke my G3
 > > Submitter	: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
 > > Date		: 2009-01-17 22:46 (19 days old)
 > > First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=c1f343028d35ba4e88cd4a3c44e0d8b8a84264ee
 > > References	: http://marc.info/?l=linux-kernel&m=123223247325452&w=4
 > > Handled-By	: Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
