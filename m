From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #13502] GPE storm causes polling mode, which causes /proc/acpi/battery read to take 4 seconds - MacBookPro4,1
Date: Sun,  9 Aug 2009 23:10:22 +0200 (CEST)
Message-ID: <pRuaDVjxFBG.A.6eF._E2fKB@chimera>
References: <YCu3FOC0QrC.A.MaE.RD2fKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754655AbZHJAEu@vger.kernel.org>
In-Reply-To: <YCu3FOC0QrC.A.MaE.RD2fKB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, sveina@gmail.com

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.29 and 2.6.30.

The following bug entry is on the current list of known regressions
introduced between 2.6.29 and 2.6.30.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13502
Subject		: GPE storm causes polling mode, which causes /proc/acpi/battery read to take 4 seconds - MacBookPro4,1
Submitter	:  <sveina@gmail.com>
Date		: 2009-06-10 20:04 (61 days old)

