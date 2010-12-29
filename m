From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #20322] 2.6.36-rc7: inconsistent lock state: inconsistent {IN-RECLAIM_FS-R} -> {RECLAIM_FS-ON-W} usage.
Date: Thu, 30 Dec 2010 00:21:20 +0100 (CET)
Message-ID: <LbeBv-BNQpL.A.VZ.LG8GNB@chimera>
References: <odW4v9b6arG.A.2bH.uE8GNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <odW4v9b6arG.A.2bH.uE8GNB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, Dave Jones <davej@redhat.com>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.35 and 2.6.36.

The following bug entry is on the current list of known regressions
introduced between 2.6.35 and 2.6.36.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=20322
Subject		: 2.6.36-rc7: inconsistent lock state: inconsistent {IN-RECLAIM_FS-R} -> {RECLAIM_FS-ON-W} usage.
Submitter	: Dave Jones <davej@redhat.com>
Date		: 2010-10-11 20:10 (80 days old)
Message-ID	: <20101011201007.GA29707@redhat.com>
References	: http://marc.info/?l=linux-kernel&m=128682782828453&w=2

