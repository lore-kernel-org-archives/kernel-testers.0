From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #14070] lockdep warning triggered by dup_fd
Date: Mon, 12 Oct 2009 01:01:03 +0200 (CEST)
Message-ID: <L6tb-VyKHZK.A.LUE.p0l0KB@chimera>
References: <56acieJJ2fF.A.nEB.Hzl0KB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754044AbZJKXFt@vger.kernel.org>
In-Reply-To: <56acieJJ2fF.A.nEB.Hzl0KB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Bart Van Assche <bart.vanassche@gmail.com>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.30 and 2.6.31.

The following bug entry is on the current list of known regressions
introduced between 2.6.30 and 2.6.31.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14070
Subject		: lockdep warning triggered by dup_fd
Submitter	: Bart Van Assche <bart.vanassche@gmail.com>
Date		: 2009-08-23 09:36 (50 days old)
References	: http://lkml.org/lkml/2009/8/23/8

