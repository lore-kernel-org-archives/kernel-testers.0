From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #13644] hibernation/swsusp lockup due to acpi-cpufreq
Date: Sun,  2 Aug 2009 21:09:32 +0200 (CEST)
Message-ID: <7ixSg7D88bK.A.i2F.UqgdKB@chimera>
References: <upey9ZSfnaF.A.-oE.rpgdKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754598AbZHBWCg@vger.kernel.org>
In-Reply-To: <upey9ZSfnaF.A.-oE.rpgdKB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Johannes Stezenbach <js@sig21.net>, "Rafael J. Wysocki" <rjw@sisk.pl>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.29 and 2.6.30.

The following bug entry is on the current list of known regressions
introduced between 2.6.29 and 2.6.30.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13644
Subject		: hibernation/swsusp lockup due to acpi-cpufreq
Submitter	: Johannes Stezenbach <js@sig21.net>
Date		: 2009-06-16 01:27 (48 days old)
References	: http://lkml.org/lkml/2009/6/15/630
		  http://lkml.org/lkml/2009/6/29/504
Handled-By	: Rafael J. Wysocki <rjw@sisk.pl>

