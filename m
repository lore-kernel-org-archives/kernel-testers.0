From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #15244] PROBLEM: hda-intel divide by zero kernel crash in azx_position_ok()
Date: Sun, 21 Mar 2010 21:30:46 +0100 (CET)
Message-ID: <hTwaxgnIZ2O.A.WcF.BQopLB@chimera>
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
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Jody Bruchon <jody@nctritech.com>, Takashi Iwai <tiwai@suse.de>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.32 and 2.6.33.

The following bug entry is on the current list of known regressions
introduced between 2.6.32 and 2.6.33.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15244
Subject		: PROBLEM: hda-intel divide by zero kernel crash in azx_position_ok()
Submitter	: Jody Bruchon <jody@nctritech.com>
Date		: 2010-02-06 0:32 (44 days old)
References	: http://marc.info/?l=linux-kernel&m=126541276028173&w=2
Handled-By	: Takashi Iwai <tiwai@suse.de>
		  Jody Bruchon <jody@nctritech.com>

