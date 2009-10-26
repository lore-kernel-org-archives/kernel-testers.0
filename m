From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #14387] deadlock with fallocate
Date: Mon, 26 Oct 2009 19:55:55 +0100 (CET)
Message-ID: <6dRYo8ss7vL.A.FQG.are5KB@chimera>
References: <Sj-rRjx6TwF.A.djE.vqe5KB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754934AbZJZTEd@vger.kernel.org>
In-Reply-To: <Sj-rRjx6TwF.A.djE.vqe5KB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Andrew Morton <akpm@linux-foundation.org>, Christoph Hellwig <hch@lst.de>, Thomas Neumann <tneumann@users.sourceforge.net>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.31.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14387
Subject		: deadlock with fallocate
Submitter	: Thomas Neumann <tneumann@users.sourceforge.net>
Date		: 2009-10-07 3:00 (20 days old)
References	: http://marc.info/?l=linux-kernel&m=125488495526471&w=4
Handled-By	: Christoph Hellwig <hch@lst.de>

