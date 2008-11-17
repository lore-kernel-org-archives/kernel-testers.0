From: Tino Keitel <tino.keitel@gmx.de>
Subject: Re: [Bug #12038] Suspend regression in stable kernel 2.6.27.4 on
	Mac mini Core Duo
Date: Mon, 17 Nov 2008 23:08:51 +0100
Message-ID: <20081117220851.GA6314@dose.home.local>
References: <VwdsQNEjR_C.A.CiD.9_FIJB@chimera> <Q7OAnAv0V3D.A.sUE.LAGIJB@chimera>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754840AbYKQWI5@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <Q7OAnAv0V3D.A.sUE.LAGIJB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>

On Sun, Nov 16, 2008 at 17:35:21 +0100, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.27.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12038
> Subject		: Suspend regression in stable kernel 2.6.27.4 on Mac mini Core Duo
> Submitter	: Tino Keitel <tino.keitel@gmx.de>
> Date		: 2008-11-09 20:28 (8 days old)
> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=66036f5862883fcc9f7ff8550685a5a3de1a57e4
> References	: http://marc.info/?l=linux-kernel&m=122626258429689&w=4
> Handled-By	: Rafael J. Wysocki <rjw@sisk.pl>
> Patch		: http://marc.info/?l=linux-kernel&m=122661443120581&w=4

The patch works fine here. I applied it to 2.6.27.5 and resume works.

Regards,
Tino
