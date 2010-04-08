From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #15244] PROBLEM: hda-intel divide by zero kernel crash in azx_position_ok()
Date: Fri,  9 Apr 2010 01:04:28 +0200 (CEST)
Message-ID: <onZ81XwyNTD.A.DzD.AGmvLB@chimera>
References: <cjwJ7Pf9h0L.A.9pB.1DmvLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <cjwJ7Pf9h0L.A.9pB.1DmvLB@chimera>
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
Date		: 2010-02-06 0:32 (62 days old)
References	: http://marc.info/?l=linux-kernel&m=126541276028173&w=2
Handled-By	: Takashi Iwai <tiwai@suse.de>
		  Jody Bruchon <jody@nctritech.com>

