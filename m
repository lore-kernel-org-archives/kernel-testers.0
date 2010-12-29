From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #22562] Regression in 2.6.37-rc1 - logs spammed with "unable to enumerate USB port" - bisected to commit 3df7169e
Date: Thu, 30 Dec 2010 00:06:58 +0100 (CET)
Message-ID: <sV7shrPOroO.A.JLH.iA8GNB@chimera>
References: <96DQe4a_2tH.A.4RE.497GNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <96DQe4a_2tH.A.4RE.497GNB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, Alan Stern <stern@rowland.harvard.edu>, Greg Kroah-Hartman <gregkh@suse.de>, Larry Finger <Larry.Finger@lwfinger.net>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.36.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=22562
Subject		: Regression in 2.6.37-rc1 - logs spammed with "unable to enumerate USB port" - bisected to commit 3df7169e
Submitter	: Larry Finger <Larry.Finger@lwfinger.net>
Date		: 2010-11-02 22:32 (58 days old)
First-Bad-Commit: http://git.kernel.org/linus/3df7169e73fc1d71a39cffeacc969f6840cdf52b
Message-ID	: <4CD09166.4060202@lwfinger.net>
References	: http://marc.info/?l=linux-kernel&m=128873713207906&w=2

