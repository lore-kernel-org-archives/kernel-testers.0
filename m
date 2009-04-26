From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #13186] cpufreq timer teardown problem
Date: Sun, 26 Apr 2009 11:46:32 +0200 (CEST)
Message-ID: <egHshlwQQFE.A.X-B._oE9JB@chimera>
References: <tur5OtdUm3E.A.r2B.7oE9JB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1758841AbZDZMnU@vger.kernel.org>
In-Reply-To: <tur5OtdUm3E.A.r2B.7oE9JB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Mathieu Desnoyers <mathieu.desnoyers@polymtl.ca>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.28 and 2.6.29.

The following bug entry is on the current list of known regressions
introduced between 2.6.28 and 2.6.29.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13186
Subject		: cpufreq timer teardown problem
Submitter	: Mathieu Desnoyers <mathieu.desnoyers@polymtl.ca>
Date		: 2009-04-23 14:00 (4 days old)
References	: http://marc.info/?l=linux-kernel&m=124049523515036&w=4
Handled-By	: Mathieu Desnoyers <mathieu.desnoyers@polymtl.ca>
Patch		: http://patchwork.kernel.org/patch/19754/
		  http://patchwork.kernel.org/patch/19753/

