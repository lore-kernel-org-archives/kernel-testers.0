From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #29172] releasing loop on top of other loop leads to deadlock
Date: Mon, 21 Feb 2011 23:37:18 +0100 (CET)
Message-ID: <f14qsMvj2tF.A.5bC.lbuYNB@chimera>
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
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, Petr Uzel <petr.uzel@centrum.cz>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.36 and 2.6.37.

The following bug entry is on the current list of known regressions
introduced between 2.6.36 and 2.6.37.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=29172
Subject		: releasing loop on top of other loop leads to deadlock
Submitter	: Petr Uzel <petr.uzel@centrum.cz>
Date		: 2011-02-15 10:00 (7 days old)

