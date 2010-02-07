From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #15250] "drm/i915: implement new pm ops" disables irq on aborted s2disk
Date: Sun,  7 Feb 2010 23:28:54 +0100 (CET)
Message-ID: <445R0ey9hAI.A.Pd.FozbLB@chimera>
References: <4Ht3jFrT7uE.A.JI.-nzbLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <4Ht3jFrT7uE.A.JI.-nzbLB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Alan Jenkins <alan-jenkins@tuffmail.co.uk>, Eric Anholt <eric@anholt.net>, "Rafael J. Wysocki" <rjw@sisk.pl>, Zhenyu Wang <zhenyuw@linux.intel.com>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.32.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15250
Subject		: "drm/i915: implement new pm ops" disables irq on aborted s2disk
Submitter	: Alan Jenkins <alan-jenkins@tuffmail.co.uk>
Date		: 2010-02-03 03:18 (5 days old)
First-Bad-Commit: http://git.kernel.org/git/linus/cbda12d77ea590082edb6d30bd342a67ebc459e0
Message-ID	: <4B695BA0.4000007@tuffmail.co.uk>
References	: https://lists.linux-foundation.org/pipermail/linux-pm/2010-February/024200.html
Handled-By	: Rafael J. Wysocki <rjw@sisk.pl>
Patch		: http://patchwork.kernel.org/patch/77640/

