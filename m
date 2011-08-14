From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #39342] [3.0.0-rc6-git7] possible recursive locking at cache_alloc_refill
Date: Sun, 14 Aug 2011 21:07:32 +0200 (CEST)
Message-ID: <bkwpSnItbJM.A.o3.YNCSOB@chimera>
References: <xuTC4jRtHbB.A.l4H.gMCSOB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <xuTC4jRtHbB.A.l4H.gMCSOB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.39 and 3.0.

The following bug entry is on the current list of known regressions
introduced between 2.6.39 and 3.0.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=39342
Subject		: [3.0.0-rc6-git7] possible recursive locking at cache_alloc_refill
Submitter	: Tetsuo Handa <penguin-kernel@i-love.sakura.ne.jp>
Date		: 2011-07-11 12:37 (35 days old)
Message-ID	: <201107112137.FAD00545.SHtLOFOJOMFQFV@I-love.SAKURA.ne.jp>
References	: http://marc.info/?l=linux-kernel&m=131038788902151&w=2

