From: Meelis Roos <mroos@linux.ee>
Subject: Re: [Bug #14909] pata_cmd64x broken in 2.6.33-rc1
Date: Tue, 29 Dec 2009 23:07:12 +0200 (EET)
Message-ID: <alpine.SOC.1.00.0912292306020.975@math.ut.ee>
References: <LptzGUUXbTK.A.MSF.ymhOLB@chimera> <NJVdobuNFNK.A.DYH.UnhOLB@chimera>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1752280AbZL2VHR@vger.kernel.org>
In-Reply-To: <NJVdobuNFNK.A.DYH.UnhOLB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Alan Cox <alan@linux.intel.com>, Jeff Garzik <jeff@garzik.org>, Jeff Garzik <jgarzik@redhat.com>, "linux-ide@vger.kernel.org"@ogre.sisk.pl

> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14909
> Subject		: pata_cmd64x broken in 2.6.33-rc1
> Submitter	: Meelis Roos <mroos@linux.ee>
> Date		: 2009-12-19 22:23 (11 days old)
> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=d43744390e460dce6626fb8de2c02a24ff650005
> References	: http://marc.info/?l=linux-kernel&m=126126142501594&w=4

Fixed as of 2.6.33-rc2 - just retested the upstream fix.

-- 
Meelis Roos (mroos@linux.ee)
