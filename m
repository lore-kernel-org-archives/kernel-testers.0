From: Paul Rolland <rol@as2917.net>
Subject: Re: [Bug #13895] 2.6.31-rc4 - slab entry tak_delay_info leaking ???
Date: Mon, 3 Aug 2009 08:19:16 +0200
Message-ID: <20090803081916.4189bad4@tux.DEF.witbe.net>
References: <Su1q3S6JjyO.A.jeB.hcgdKB@chimera>
	<iZB3Pj-uj3M.A.tsB.ocgdKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1752088AbZHCGTe@vger.kernel.org>
In-Reply-To: <iZB3Pj-uj3M.A.tsB.ocgdKB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>

Hello Rafael,

On Sun,  2 Aug 2009 20:58:32 +0200 (CEST)
"Rafael J. Wysocki" <rjw@sisk.pl> wrote:

> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.30.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13895
> Subject		: 2.6.31-rc4 - slab entry tak_delay_info
> leaking ??? Submitter	: Paul Rolland <rol@as2917.net>
> Date		: 2009-07-29 08:20 (5 days old)
> References	: http://marc.info/?l=linux-kernel&m=124884847925375&w=4

Still trying to reproduce with kmemleak enabled, but so far no luck.

Will soon switch to 2.6.31-rc5-no-kmemleak to check if still present.

Regards,
Paul
