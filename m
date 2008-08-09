From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #11190] [USB boot crash, -git] ecm_do_notify(), list_add corruption. prev-&gt;next should be next (ffff88003b8f82f8)
Date: Sun, 10 Aug 2008 00:43:50 +0200 (CEST)
Message-ID: <cX_-nNkxKaF.A.QYD.wEjnIB@albercik>
References: <VYYCiQF4qDI.A.BPH.KCjnIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755027AbYHJAKh@vger.kernel.org>
In-Reply-To: <VYYCiQF4qDI.A.BPH.KCjnIB@albercik>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Alan Stern <stern@rowland.harvard.edu>, David Brownell <david-b@pacbell.net>, Ingo Molnar <mingo@elte.hu>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.26.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11190
Subject		: [USB boot crash, -git] ecm_do_notify(), list_add corruption. prev-&gt;next should be next (ffff88003b8f82f8)
Submitter	: Ingo Molnar <mingo@elte.hu>
Date		: 2008-07-22 13:40 (19 days old)
References	: http://marc.info/?l=linux-usb&m=121673409124827&w=4
Handled-By	: Alan Stern <stern@rowland.harvard.edu>
		  David Brownell <david-b@pacbell.net>
Patch		: http://marc.info/?l=linux-kernel&m=121708481823201&w=4

