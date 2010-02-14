From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #15308] 2.6.33-rc8 breaks UML with Restrict initial stack space expansion to rlimit
Date: Mon, 15 Feb 2010 00:38:37 +0100 (CET)
Message-ID: <4un6Gst5rKB.A.u_F.UiIeLB@chimera>
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
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, Jouni Malinen <j@w1.fi>, KOSAKI Motohiro <kosaki.motohiro@jp.fujitsu.com>, Linus Torvalds <torvalds@linux-foundation.org>, Michael Neuling <mikey@neuling.org>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.32.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15308
Subject		: 2.6.33-rc8 breaks UML with Restrict initial stack space expansion to rlimit
Submitter	: Jouni Malinen <j@w1.fi>
Date		: 2010-02-14 16:40 (1 days old)
First-Bad-Commit: http://git.kernel.org/git/linus/803bf5ec259941936262d10ecc84511b76a20921
Message-ID	: <20100214164023.GA2726@jm.kir.nu>
References	: http://marc.info/?l=linux-kernel&m=126616751807902&w=4
Handled-By	: Michael Neuling <mikey@neuling.org>

