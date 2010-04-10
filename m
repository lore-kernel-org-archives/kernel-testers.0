From: "M. Vefa Bicakci" <bicave@superonline.com>
Subject: [Bug #15585] [Bisected Regression in 2.6.32.8] i915 with KMS enabledcauses memorycorruption when resuming from suspend-to-disk
Date: Sat, 10 Apr 2010 19:46:03 -0400
Message-ID: <4BC10DBB.70205@superonline.com>
References: <cjwJ7Pf9h0L.A.9pB.1DmvLB@chimera> <onZ81XwyNTD.A.ENC.QEmvLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <onZ81XwyNTD.A.ENC.QEmvLB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Chris Wilson <chris@chris-wilson.co.uk>

On 08/04/10 07:04 PM, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.32 and 2.6.33.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.32 and 2.6.33.  Please verify if it still should
> be listed and let the tracking team know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15585
> Subject		: [Bisected Regression in 2.6.32.8] i915 with KMS enabled causes memorycorruption when resuming from suspend-to-disk
> Submitter	: M. Vefa Bicakci <bicave@superonline.com>
> Date		: 2010-03-13 5:11 (27 days old)
> First-Bad-Commit: http://git.kernel.org/git/linus/d8e0902806c0bd2ccc4f6a267ff52565a3ec933b
> Message-ID	: <4B9B1E8F.5090806@superonline.com>
> References	: http://marc.info/?l=linux-kernel&m=126845754409543&w=2

Dear Rafael J. Wysocki,

I tested vanilla 2.6.33.2 and 2.6.34-rc3-git10, and unfortunately
both of them *have* this issue. So it looks like the issue has not
been resolved yet. Please keep this regression in the list of known
regressions.

Just to let you know: I am currently running 2.6.33.2 with the above-
mentioned commit reverted, and hibernate-thaw cycles work properly.

Regards,

M. Vefa Bicakci

Note: Please include me in the CC list when replying to this e-mail
as I am currently not subscribed to the LKML.
