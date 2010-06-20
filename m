From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #16230] inconsistent IN-HARDIRQ-W -> HARDIRQ-ON-W usage: fasync, 2.6.35-rc3
Date: Mon, 21 Jun 2010 00:17:45 +0200 (CEST)
Message-ID: <W8JfMs9cZw.A.yqE.cMpHMB@chimera>
References: <lc60d4toGTL.A.QzD._LpHMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <lc60d4toGTL.A.QzD._LpHMB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Dominik Brodowski <linux@dominikbrodowski.net>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.34.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16230
Subject		: inconsistent IN-HARDIRQ-W -> HARDIRQ-ON-W usage: fasync, 2.6.35-rc3
Submitter	: Dominik Brodowski <linux@dominikbrodowski.net>
Date		: 2010-06-13 9:53 (8 days old)
Message-ID	: <20100613095305.GA13231@comet.dominikbrodowski.net>
References	: http://marc.info/?l=linux-kernel&m=127642282208277&w=2

