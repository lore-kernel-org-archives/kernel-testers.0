From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #20322] 2.6.36-rc7: inconsistent lock state: inconsistent {IN-RECLAIM_FS-R} -> {RECLAIM_FS-ON-W} usage.
Date: Sun, 17 Oct 2010 22:21:45 +0200 (CEST)
Message-ID: <7N-qxsaxKCN.A.NnB._j1uMB@chimera>
References: <TP5BfCZNRXD.A._8.uj1uMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <TP5BfCZNRXD.A._8.uj1uMB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, Dave Jones <davej@redhat.com>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.35.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=20322
Subject		: 2.6.36-rc7: inconsistent lock state: inconsistent {IN-RECLAIM_FS-R} -> {RECLAIM_FS-ON-W} usage.
Submitter	: Dave Jones <davej@redhat.com>
Date		: 2010-10-11 20:10 (7 days old)
Message-ID	: <20101011201007.GA29707@redhat.com>
References	: http://marc.info/?l=linux-kernel&m=128682782828453&w=2

