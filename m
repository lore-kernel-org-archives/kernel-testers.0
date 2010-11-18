From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #19782] 2.6.36-rc6-git2 -- BUG dentry: Poison overwritten (after resume from hibernation)
Date: Fri, 19 Nov 2010 00:53:34 +0100 (CET)
Message-ID: <t78YtCSuOqN.A.ATH.64b5MB@chimera>
References: <tTUH_XeInOH.A.dMF.c3b5MB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <tTUH_XeInOH.A.dMF.c3b5MB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, Miles Lane <miles.lane@gmail.com>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.35 and 2.6.36.

The following bug entry is on the current list of known regressions
introduced between 2.6.35 and 2.6.36.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=19782
Subject		: 2.6.36-rc6-git2 -- BUG dentry: Poison overwritten (after resume from hibernation)
Submitter	: Miles Lane <miles.lane@gmail.com>
Date		: 2010-10-03 3:54 (47 days old)
Message-ID	: <AANLkTimrqtzBHAZSuDhEs_3CKA6pCbM35b1BtKH=MvC_@mail.gmail.com>
References	: http://marc.info/?l=linux-kernel&m=128607809314079&w=2

