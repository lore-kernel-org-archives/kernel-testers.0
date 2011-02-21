From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #26102] [2.6.37-rc8] BUG kmalloc-256: Poison overwritten.
Date: Mon, 21 Feb 2011 23:37:08 +0100 (CET)
Message-ID: <f14qsMvj2tF.A.irD.HduYNB@chimera>
References: <JwKd6rET8XO.A._ZC.gbuYNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <JwKd6rET8XO.A._ZC.gbuYNB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, Pawel Sikora <pluto@agmk.net>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.36 and 2.6.37.

The following bug entry is on the current list of known regressions
introduced between 2.6.36 and 2.6.37.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=26102
Subject		: [2.6.37-rc8] BUG kmalloc-256: Poison overwritten.
Submitter	: Pawel Sikora <pluto@agmk.net>
Date		: 2010-12-30 15:08 (54 days old)
Message-ID	: <201012301608.40859.pluto@agmk.net>
References	: http://marc.info/?l=linux-kernel&m=129372388925679&w=2

