From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #16040] kacpid consumes ~40% of cpu all the time beginning with 2.6.34
Date: Mon, 21 Jun 2010 00:34:27 +0200 (CEST)
Message-ID: <rHrHQMIU4rI.A.-EB.xapHMB@chimera>
References: <g77CuMUl7QI.A.qMH.4ZpHMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <g77CuMUl7QI.A.qMH.4ZpHMB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Mehmet Giritli <mehmet@giritli.eu>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.33 and 2.6.34.

The following bug entry is on the current list of known regressions
introduced between 2.6.33 and 2.6.34.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16040
Subject		: kacpid consumes ~40% of cpu all the time beginning with 2.6.34
Submitter	: Mehmet Giritli <mehmet@giritli.eu>
Date		: 2010-05-24 07:32 (28 days old)
Patch		: https://patchwork.kernel.org/patch/104903/
		  https://patchwork.kernel.org/patch/104912/
		  https://patchwork.kernel.org/patch/104909/
		  https://patchwork.kernel.org/patch/104911/
		  https://patchwork.kernel.org/patch/104910/

