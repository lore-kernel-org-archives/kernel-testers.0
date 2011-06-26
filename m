From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #35642] On resume, I sometimes get a kernel oops with led_trigger_unregister_simple
Date: Mon, 27 Jun 2011 00:35:10 +0200 (CEST)
Message-ID: <Rm1pgFxEGUF.A.4_E.nN7BOB@chimera>
References: <fvHbBUhG0PD.A.IGE.HM7BOB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <fvHbBUhG0PD.A.IGE.HM7BOB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, Sven-Hendrik Haase <sh@lutzhaase.com>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.38 and 2.6.39.

The following bug entry is on the current list of known regressions
introduced between 2.6.38 and 2.6.39.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=35642
Subject		: On resume, I sometimes get a kernel oops with led_trigger_unregister_simple
Submitter	: Sven-Hendrik Haase <sh@lutzhaase.com>
Date		: 2011-05-23 00:15 (35 days old)
Patch		: https://bugzilla.kernel.org/attachment.cgi?id=63022

