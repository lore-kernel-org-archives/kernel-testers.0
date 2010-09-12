From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #16537] TREE_RCU hangs at boot
Date: Sun, 12 Sep 2010 21:08:42 +0200 (CEST)
Message-ID: <p44oKaOqEDM.A.AeF.EhSjMB@chimera>
References: <QnCvudbe2FD.A.XiE.DgSjMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <QnCvudbe2FD.A.XiE.DgSjMB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, "Paul E. McKenney" <paulmck@linux.vnet.ibm.com>, Rolf Eike Beer <eike-kernel@sf-tec.de>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.34 and 2.6.35.

The following bug entry is on the current list of known regressions
introduced between 2.6.34 and 2.6.35.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16537
Subject		: TREE_RCU hangs at boot
Submitter	: Rolf Eike Beer <eike-kernel@sf-tec.de>
Date		: 2010-08-07 12:18 (37 days old)
Handled-By	: Paul E. McKenney <paulmck@linux.vnet.ibm.com>

