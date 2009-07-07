From: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
Subject: Re: [Bug #13673] HIGHMEM64G causes hang in PCI init on 32-bit x86
Date: Tue, 7 Jul 2009 11:18:07 +0200
Message-ID: <19027.4815.420637.375450@pilspetsen.it.uu.se>
References: <35kKlbXMqWN.A.RXD.D0oUKB@chimera>
	<dWkuWjWDsSB.A.HoE.b0oUKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <dWkuWjWDsSB.A.HoE.b0oUKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Grant Grundler <grundler-6jwH94ZQLHl74goWV3ctuw@public.gmane.org>, "H. Peter Anvin" <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>, Matthew Wilcox <matthew-Ztpu424NOJ8@public.gmane.org>, Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>

Rafael J. Wysocki wrote:
> The following bug entry is on the current list of known regressions
> from 2.6.30.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D13673
> Subject		: HIGHMEM64G causes hang in PCI init on 32-bit x86
> Submitter	: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
> Date		: 2009-06-26 15:59 (11 days old)
> First-Bad-Commit: http://git.kernel.org/?p=3Dlinux/kernel/git/torvalds/linu=
> x-2.6.git;a=3Dcommit;h=3D95ee14e4379c5e19c0897c872350570402014742
> References	: http://marc.info/?l=3Dlinux-pci&m=3D124615181602643&w=3D4
> Handled-By	: H. Peter Anvin <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>

Fixed in 2.6.31-rc2.
