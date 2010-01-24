From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #15096] Resume lock up -- bisected, commit 3a1151e3f124fd1a2c54b8153f510f1a7c715369
Date: Sun, 24 Jan 2010 23:23:13 +0100 (CET)
Message-ID: <q60Z28d_9yH.A.QkH.LZMXLB@chimera>
References: <pYFNu11z2aM.A.pJH.CZMXLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754842Ab0AXWi0@vger.kernel.org>
In-Reply-To: <pYFNu11z2aM.A.pJH.CZMXLB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Len Brown <len.brown@intel.com>, =?utf-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>, Stefan Bader <stefan.bader@canonical.com>, Zhang Rui <rui.zhang@intel.com>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.31 and 2.6.32.

The following bug entry is on the current list of known regressions
introduced between 2.6.31 and 2.6.32.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D15096
Subject		: Resume lock up -- bisected, commit 3a1151e3f124fd1a2c54b8153=
f510f1a7c715369
Submitter	: Rafa=C5=82 Mi=C5=82ecki <zajec5@gmail.com>
Date		: 2010-01-20 23:15 (5 days old)

