From: Tobias Diedrich <ranma@tdiedrich.de>
Subject: Re: [Bug #13833] Kernel Oops when trying to suspend with ubifs
	mounted on block2mtd mtd device
Date: Mon, 27 Jul 2009 11:16:23 +0200
Message-ID: <20090727091623.GA16229@yamamaya.is-a-geek.org>
References: <Jya1GruKQpD.A.16.2GObKB@chimera> <3zAHs5O6maO.A.gfC.QHObKB@chimera>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755800AbZG0JQa@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <3zAHs5O6maO.A.gfC.QHObKB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, David Brownell <david-b@pacbell.net>, David Woodhouse <David.Woodhouse@intel.com>, Eric Miao <eric.y.miao@gmail.com>, Pavel Machek <pavel@ucw.cz>

Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.30.  Please verify if it still should be listed and let me know
> (either way).


Well, the patch reverting the commit still applies to 2.6.31-rc4, so
I assume the issue persists,but I have not tried an unpatched
2.6.31-rc4.

> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13833
> Subject		: Kernel Oops when trying to suspend with ubifs mounted on block2mtd mtd device
> Submitter	: Tobias Diedrich <ranma@tdiedrich.de>
> Date		: 2009-07-15 14:20 (12 days old)
> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=15bce40cb3133bcc07d548013df97e4653d363c1
> References	: http://marc.info/?l=linux-kernel&m=124766049207807&w=4
> 		  http://marc.info/?l=linux-kernel&m=124704927819769&w=4
> 

-- 
Tobias						PGP: http://9ac7e0bc.uguu.de
