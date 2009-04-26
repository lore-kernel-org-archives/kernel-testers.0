From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #13032] 2.6.29 regression: network interfaces drop after suspend/resume
Date: Sun, 26 Apr 2009 11:46:29 +0200 (CEST)
Message-ID: <egHshlwQQFE.A.p4C.WpE9JB@chimera>
References: <tur5OtdUm3E.A.r2B.7oE9JB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1758191AbZDZMkj@vger.kernel.org>
In-Reply-To: <tur5OtdUm3E.A.r2B.7oE9JB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, ACPI Bugzilla <acpi-bugzilla@lists.sourceforge.net>, Jose Marino <braket@hotmail.com>, Len Brown <len.brown@intel.com>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.28 and 2.6.29.

The following bug entry is on the current list of known regressions
introduced between 2.6.28 and 2.6.29.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13032
Subject		: 2.6.29 regression: network interfaces drop after suspend/resume
Submitter	: Jose Marino <braket@hotmail.com>
Date		: 2009-04-07 00:08 (20 days old)
First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=31878dd86b7df9a147f5e6cc6e07092b4308782b

