From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #16294] [Q35 bisected] hang at init of i915 driver
Date: Fri,  9 Jul 2010 01:41:39 +0200 (CEST)
Message-ID: <TXb9XdQzJoD.A.uoB.WMmNMB@chimera>
References: <-IGZ64uxA6G.A.P0H.bLmNMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <-IGZ64uxA6G.A.P0H.bLmNMB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Chris Wilson <"email addresshidden"@ogre.sisk.pl>, Eric Anholt <"email addresshidden"@ogre.sisk.pl>, Kees Cook <kees@outflux.net>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.34.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16294
Subject		: [Q35 bisected] hang at init of i915 driver
Submitter	: Kees Cook <kees@outflux.net>
Date		: 2010-06-25 18:20 (14 days old)
First-Bad-Commit: http://git.kernel.org/linus/f1befe71fa7a79ab733011b045639d8d809924ad

