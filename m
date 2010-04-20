From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #15730] Ugly rmap NULL ptr deref oopsie on hibernate (was Linux 2.6.34-rc3)
Date: Tue, 20 Apr 2010 05:19:23 +0200 (CEST)
Message-ID: <YeFfFNFyTSF.A.K_G.dRSzLB@tosh>
References: <deuQKFRcc0B.A.3EG.BRSzLB@tosh>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <deuQKFRcc0B.A.3EG.BRSzLB@tosh>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Borislav Petkov <bp@alien8.de>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.33.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15730
Subject		: Ugly rmap NULL ptr deref oopsie on hibernate (was Linux 2.6.34-rc3)
Submitter	: Borislav Petkov <bp@alien8.de>
Date		: 2010-04-02 17:59 (18 days old)
Message-ID	: <20100402175937.GA19690@liondog.tnic>
References	: http://marc.info/?l=linux-kernel&m=127023173329741&w=2

