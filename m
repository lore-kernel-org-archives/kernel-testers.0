From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #15044] Much higher wakeups for "<kernel IPI> : Rescheduling interrupts" since 2.6.32.2
Date: Mon, 15 Feb 2010 00:38:30 +0100 (CET)
Message-ID: <4un6Gst5rKB.A.zP.CkIeLB@chimera>
References: <Z5cmiqDComP.A.gyF.OiIeLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <Z5cmiqDComP.A.gyF.OiIeLB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Greg Kroah-Hartman <gregkh@suse.de>, Greg Kroah-Hartman <gregkh@suse.de>, Ingo Molnar <mingo@elte.hu>, Ingo Molnar <mingo@elte.hu>, Mike Galbraith <efault@gmx.de>, Mike Galbraith <efault@gmx.de>, Roman Mamedov <roman@rm.pp.ru>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.32.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15044
Subject		: Much higher wakeups for "<kernel IPI> : Rescheduling interrupts" since 2.6.32.2
Submitter	: Roman Mamedov <roman@rm.pp.ru>
Date		: 2010-01-11 02:58 (35 days old)
First-Bad-Commit: http://git.kernel.org/git/linus/a1f84a3ab8e002159498814eaa7e48c33752b04b

