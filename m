From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #12961] Kernel panics in early boot: IO-APIC + timer doesn't work
Date: Sun, 26 Apr 2009 11:46:27 +0200 (CEST)
Message-ID: <egHshlwQQFE.A.TQD.xpE9JB@chimera>
References: <tur5OtdUm3E.A.r2B.7oE9JB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1757809AbZDZMig@vger.kernel.org>
In-Reply-To: <tur5OtdUm3E.A.r2B.7oE9JB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Andreas Herrmann <andreas.herrmann3@amd.com>, Daniel Vetter <daniel@ffwll.ch>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.28 and 2.6.29.

The following bug entry is on the current list of known regressions
introduced between 2.6.28 and 2.6.29.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12961
Subject		: Kernel panics in early boot: IO-APIC + timer doesn't work
Submitter	: Daniel Vetter <daniel@ffwll.ch>
Date		: 2009-03-28 19:00 (30 days old)
First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=8d6f0c8214928f7c5083dd54ecb69c5d615b516e
Handled-By	: Andreas Herrmann <andreas.herrmann3@amd.com>
Patch		: http://bugzilla.kernel.org/attachment.cgi?id=21070

