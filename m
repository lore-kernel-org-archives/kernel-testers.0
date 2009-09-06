From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #14070] lockdep warning triggered by dup_fd
Date: Sun,  6 Sep 2009 19:24:55 +0200 (CEST)
Message-ID: <Vm51Upp4EV.A.MYC.OfBpKB@chimera>
References: <2ehA7xoGvXL.A.4PB.3eBpKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1758550AbZIFU3I@vger.kernel.org>
In-Reply-To: <2ehA7xoGvXL.A.4PB.3eBpKB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Bart Van Assche <bart.vanassche@gmail.com>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.30.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14070
Subject		: lockdep warning triggered by dup_fd
Submitter	: Bart Van Assche <bart.vanassche@gmail.com>
Date		: 2009-08-23 09:36 (15 days old)
References	: http://lkml.org/lkml/2009/8/23/8

