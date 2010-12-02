From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #22662] divide error in select_task_rq_fair()
Date: Fri,  3 Dec 2010 00:41:41 +0100 (CET)
Message-ID: <gUkHV_Vc3aE.A.HN.VzC-MB@chimera>
References: <1OMp3vU_qjP.A.JXG.uxC-MB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1OMp3vU_qjP.A.JXG.uxC-MB@chimera>
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
Date		: 2010-11-10 23:58 (23 days old)
Patch		: http://lkml.org/lkml/2010/11/13/176
		  http://lkml.org/lkml/2010/11/13/181

