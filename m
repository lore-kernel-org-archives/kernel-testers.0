From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #22662] divide error in select_task_rq_fair()
Date: Sun, 19 Dec 2010 13:34:38 +0100 (CET)
Message-ID: <6Ue85L6pKCJ.A.HcF.tffDNB@chimera>
References: <wNJKqSoEutL.A.lKD.odfDNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <wNJKqSoEutL.A.lKD.odfDNB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, Andrew Morton <akpm@linux-foundation.org>, Myron Stowe <myron.stowe@hp.com>, Nikanth Karthikesan <knikanth@suse.de>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.36.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=22662
Subject		: divide error in select_task_rq_fair()
Submitter	: Myron Stowe <myron.stowe@hp.com>
Date		: 2010-11-10 23:58 (40 days old)
Patch		: http://lkml.org/lkml/2010/11/13/176
		  http://lkml.org/lkml/2010/11/13/181

