From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #28442] 2.6.38-rc3: FUSE (sshfs) hangs under load
Date: Sun, 13 Feb 2011 00:05:20 +0100 (CET)
Message-ID: <8H3lez1sawF.A.AOH.fAxVNB@chimera>
References: <NMZS1i37KEE.A.1eG.6_wVNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <NMZS1i37KEE.A.1eG.6_wVNB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, Felix Fietkau <nbd@openwrt.org>, "John W. Linville" <linville@tuxdriver.com>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.37.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=28442
Subject		: 2.6.38-rc3: FUSE (sshfs) hangs under load
Submitter	: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Date		: 2011-02-01 17:54 (12 days old)
First-Bad-Commit: http://git.kernel.org/linus/4cd06a344db752f513437138953af191cbe9a691
Message-ID	: <20110201175452.GB518@core.coreip.homeip.net>
References	: http://marc.info/?l=linux-kernel&m=129658291703679&w=2

