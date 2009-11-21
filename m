From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #14391] use after free of struct powernow_k8_data
Date: Sat, 21 Nov 2009 16:02:13 +0100 (CET)
Message-ID: <mYW9sxtWd2G.A.rFF.MDACLB@chimera>
References: <7qTjLRFNcGF.A.eSE.kCACLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1756158AbZKUPTT@vger.kernel.org>
In-Reply-To: <7qTjLRFNcGF.A.eSE.kCACLB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Michal Schmidt <mschmidt@redhat.com>, Naga Chumbalkar <nagananda.chumbalkar@hp.com>, Rusty Russell <rusty@rustcorp.com.au>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.30 and 2.6.31.

The following bug entry is on the current list of known regressions
introduced between 2.6.30 and 2.6.31.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14391
Subject		: use after free of struct powernow_k8_data
Submitter	: Michal Schmidt <mschmidt@redhat.com>
Date		: 2009-09-24 14:51 (59 days old)
References	: http://marc.info/?l=linux-kernel&m=125380383515615&w=4

