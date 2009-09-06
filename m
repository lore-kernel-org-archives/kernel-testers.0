From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #13351] 2.6.30 - 2.6.31 corrupts my system after suspend resume with readonly mounted hard disk
Date: Sun,  6 Sep 2009 20:11:49 +0200 (CEST)
Message-ID: <hKF51Pczj6N.A.h4.d5BpKB@chimera>
References: <aIL9jMAYJnG.A.WjH.M3BpKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1758847AbZIFVT1@vger.kernel.org>
In-Reply-To: <aIL9jMAYJnG.A.WjH.M3BpKB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Ingo Molnar <mingo@elte.hu>, unggnu@googlemail.com, Yinghai Lu <yinghai@kernel.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.29 and 2.6.30.

The following bug entry is on the current list of known regressions
introduced between 2.6.29 and 2.6.30.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13351
Subject		: 2.6.30 - 2.6.31 corrupts my system after suspend resume with readonly mounted hard disk
Submitter	:  <unggnu@googlemail.com>
Date		: 2009-05-20 14:09 (110 days old)
First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=78a8b35bc7abf8b8333d6f625e08c0f7cc1c3742
Handled-By	: Yinghai Lu <yinghai@kernel.org>

