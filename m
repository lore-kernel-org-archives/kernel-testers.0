From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: Re: [Bug #14374] MCEs caused by commit db8be50c4307dac2b37305fc59c8dc0f978d09ea
Date: Mon, 12 Oct 2009 23:56:09 +0200
Message-ID: <200910122356.09967.rjw@sisk.pl>
References: <zJ_pXHNwoHC.A.akB.Aal0KB@chimera> <r-4Wjt4coy.A.DGD.aal0KB@chimera> <19155.12454.655519.908173@pilspetsen.it.uu.se>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S933366AbZJLVzK@vger.kernel.org>
In-Reply-To: <19155.12454.655519.908173@pilspetsen.it.uu.se>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Mikael Pettersson <mikpe@it.uu.se>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, David Woodhouse <David.Woodhouse@intel.com>, David Woodhouse <dwmw2@infradead.org>, Greg Kroah-Hartman <gregkh@suse.de>, Nick Piggin <npiggin@suse.de>

On Monday 12 October 2009, Mikael Pettersson wrote:
> Rafael J. Wysocki wrote:
> > The following bug entry is on the current list of known regressions
> > from 2.6.31.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D14374
> > Subject		: MCEs caused by commit db8be50c4307dac2b37305fc59c8dc0f978d09ea
> > Submitter	: Nick Piggin <npiggin@suse.de>
> > Date		: 2009-10-02 7:34 (10 days old)
> > First-Bad-Commit: http://git.kernel.org/?p=3Dlinux/kernel/git/torvalds/linu=
> > x-2.6.git;a=3Dcommit;h=3Ddb8be50c4307dac2b37305fc59c8dc0f978d09ea
> > References	: http://marc.info/?l=3Dlinux-kernel&m=3D125446885705223&w=3D4
> 
> Fixed for 2.6.32-rc5 by d93a8f829fe1d2f3002f2c6ddb553d12db420412
> 'Revert "USB: Work around BIOS bugs by quiescing USB controllers earlier"'.

Thanks, closed.

Rafael
