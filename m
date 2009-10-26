From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #13987] Received NMI interrupt at resume
Date: Mon, 26 Oct 2009 20:31:44 +0100 (CET)
Message-ID: <vX3ILojF2dJ.A.df.Wgf5KB@chimera>
References: <G2WU8XrUVpF.A.lxF.Ref5KB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1756401AbZJZTqw@vger.kernel.org>
In-Reply-To: <G2WU8XrUVpF.A.lxF.Ref5KB@chimera>
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
Date		: 2009-08-15 07:55 (73 days old)
First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=f41f3f373dd72344c65d801d6381fe83ef3a2c54

