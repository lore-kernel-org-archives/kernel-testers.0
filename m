From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: Re: [Bug #14256] kernel BUG at fs/ext3/super.c:435
Date: Sun, 4 Oct 2009 22:49:54 +0200
Message-ID: <200910042249.54639.rjw@sisk.pl>
References: <3onW63eFtRF.A.xXH.oMTxKB@chimera> <COE24pZSBH.A.ot.9MTxKB@chimera> <19144.56721.786457.979953@pilspetsen.it.uu.se>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1758028AbZJDUtP@vger.kernel.org>
In-Reply-To: <19144.56721.786457.979953@pilspetsen.it.uu.se>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Mikael Pettersson <mikpe@it.uu.se>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>

On Sunday 04 October 2009, Mikael Pettersson wrote:
> Rafael J. Wysocki wrote:
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.30 and 2.6.31.  Please verify if it still should
> > be listed and let me know (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D14256
> > Subject		: kernel BUG at fs/ext3/super.c:435
> > Submitter	: Mikael Pettersson <mikpe@it.uu.se>
> > Date		: 2009-09-21 7:29 (11 days old)
> > References	: http://marc.info/?l=3Dlinux-kernel&m=3D125351816109264&w=3D4
> 
> The exact same bug (same cause, same symptom) just hit me again in 2.6.32-rc1.

Thanks for the update.

Could you check the current Linus' tree, please?  There are some known
regression fixes in there.

Best,
Rafael
