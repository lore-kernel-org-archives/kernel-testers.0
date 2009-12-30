From: David John <davidjon@xenontk.org>
Subject: Re: [Bug #14897] i915: Commit 0e442c60 causes flickering
Date: Wed, 30 Dec 2009 11:52:31 +0530
Message-ID: <4B3AF1A7.60705@xenontk.org>
References: <oBElxfTZdhL.A.bx.-vhOLB@chimera> <srmJ8vMxKPH.A.UwB.PwhOLB@chimera>
Reply-To: davidjon@xenontk.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1752448AbZL3GWx@vger.kernel.org>
In-Reply-To: <srmJ8vMxKPH.A.UwB.PwhOLB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Eric Anholt <eric@anholt.net>, Jesse Barnes <jbarnes@virtuousgeek.org>

On 12/29/2009 08:58 PM, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.31 and 2.6.32.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.31 and 2.6.32.  Please verify if it still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14897
> Subject		: i915: Commit 0e442c60 causes flickering
> Submitter	: David John <davidjon@xenontk.org>
> Date		: 2009-12-09 17:26 (21 days old)
> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=0e442c60dd39ac6924b11a20497734bd2303744c
> References	: http://marc.info/?l=linux-kernel&m=126037889600769&w=4
> 
> 
> 

This regression along with the associated one:
http://marc.info/?l=linux-kernel&m=126044443222694&w=2 is still present
in 2.6.33-rc2.

Regards,
David.
