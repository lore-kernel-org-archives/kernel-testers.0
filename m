From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #13401] pktcdvd writing is really slow with CFQ scheduler (bisected)
Date: Sun,  6 Sep 2009 20:11:49 +0200 (CEST)
Message-ID: <hKF51Pczj6N.A.-r.A5BpKB@chimera>
References: <aIL9jMAYJnG.A.WjH.M3BpKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1758837AbZIFVO4@vger.kernel.org>
In-Reply-To: <aIL9jMAYJnG.A.WjH.M3BpKB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Jens Axboe <jens.axboe@oracle.com>, Laurent Riffard <laurent.riffard@free.fr>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.29 and 2.6.30.

The following bug entry is on the current list of known regressions
introduced between 2.6.29 and 2.6.30.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13401
Subject		: pktcdvd writing is really slow with CFQ scheduler (bisected)
Submitter	: Laurent Riffard <laurent.riffard@free.fr>
Date		: 2009-05-28 18:43 (102 days old)

