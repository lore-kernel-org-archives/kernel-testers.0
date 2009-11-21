From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #13987] Received NMI interrupt at resume
Date: Sat, 21 Nov 2009 16:02:07 +0100 (CET)
Message-ID: <mYW9sxtWd2G.A.KuG.2EACLB@chimera>
References: <7qTjLRFNcGF.A.eSE.kCACLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755919AbZKUPSP@vger.kernel.org>
In-Reply-To: <7qTjLRFNcGF.A.eSE.kCACLB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Christian Casteyde <casteyde.christian@free.fr>, Johannes Berg <johannes@sipsolutions.net>, "John W. Linville" <linville@tuxdriver.com>, Larry Finger <Larry.Finger@lwfinger.net>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.30 and 2.6.31.

The following bug entry is on the current list of known regressions
introduced between 2.6.30 and 2.6.31.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13987
Subject		: Received NMI interrupt at resume
Submitter	: Christian Casteyde <casteyde.christian@free.fr>
Date		: 2009-08-15 07:55 (99 days old)
First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=f41f3f373dd72344c65d801d6381fe83ef3a2c54

