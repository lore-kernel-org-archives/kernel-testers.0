From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #12120] [Block layer or SCSI] requests aborted too early during check_partition()
Date: Wed,  3 Dec 2008 22:58:02 +0100 (CET)
Message-ID: <bfPM5B8Tx2B.A.CjH.7oxNJB@chimera>
References: <QFIA5HSHV8B.A.2aG.hoxNJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <QFIA5HSHV8B.A.2aG.hoxNJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Stefan Richter <stefan-r-bz-MtYdepGKPcBMYopoZt5u/LNAH6kLmebB@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.27.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12120
Subject		: [Block layer or SCSI] requests aborted too early during check_partition()
Submitter	: Stefan Richter <stefan-r-bz-MtYdepGKPcBMYopoZt5u/LNAH6kLmebB@public.gmane.org>
Date		: 2008-11-29 05:19 (5 days old)

