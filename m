From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #15042] socket(PF_INET6 hangs when ipv6 not yet initialized
Date: Mon,  1 Feb 2010 01:43:19 +0100 (CET)
Message-ID: <de962C6zBxL.A.CiE.RFiZLB@chimera>
References: <UgwvXSBS_tM.A.alD.1EiZLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <UgwvXSBS_tM.A.alD.1EiZLB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Marc Haber <mh+linux-kernel@zugschlus.de>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.31 and 2.6.32.

The following bug entry is on the current list of known regressions
introduced between 2.6.31 and 2.6.32.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15042
Subject		: socket(PF_INET6 hangs when ipv6 not yet initialized
Submitter	: Marc Haber <mh+linux-kernel@zugschlus.de>
Date		: 2010-01-10 14:28 (22 days old)
References	: http://marc.info/?l=linux-kernel&m=126313553029280&w=4

