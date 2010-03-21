From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #15474] r8169 fails to bring up ethernet
Date: Sun, 21 Mar 2010 21:30:51 +0100 (CET)
Message-ID: <hTwaxgnIZ2O.A.9tD.VOopLB@chimera>
References: <QQGfxbJf48H.A.NFD.uNopLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <QQGfxbJf48H.A.NFD.uNopLB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, David Miller <davem@davemloft.net>, Francois Romieu <romieu@fr.zoreil.com>, Greg KH <gregkh@suse.de>, Jesse Barnes <jbarnes@virtuousgeek.org>, Matteo <rootkit85@yahoo.it>, Tejun Heo <tj@kernel.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.32 and 2.6.33.

The following bug entry is on the current list of known regressions
introduced between 2.6.32 and 2.6.33.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15474
Subject		: r8169 fails to bring up ethernet
Submitter	: Matteo <rootkit85@yahoo.it>
Date		: 2010-03-07 23:57 (15 days old)
First-Bad-Commit: http://git.kernel.org/git/linus/ac1aa47b131416a6ff37eb1005a0a1d2541aad6c
Handled-By	: Francois Romieu <romieu@fr.zoreil.com>

