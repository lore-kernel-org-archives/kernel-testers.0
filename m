From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #16323] 2.6.35-rc3-git4 - kernel/sched.c:616 invoked rcu_dereference_check() without protection!
Date: Fri,  9 Jul 2010 01:41:42 +0200 (CEST)
Message-ID: <TXb9XdQzJoD.A.m2.9LmNMB@chimera>
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
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Miles Lane <miles.lane@gmail.com>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.34.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16323
Subject		: 2.6.35-rc3-git4 - kernel/sched.c:616 invoked rcu_dereference_check() without protection!
Submitter	: Miles Lane <miles.lane@gmail.com>
Date		: 2010-07-01 12:21 (8 days old)
Message-ID	: <AANLkTini6hz2LFeZi8CMUmY3xw1MU7NxmyesuxZ4oCdo@mail.gmail.com>
References	: http://marc.info/?l=linux-kernel&m=127798693125541&w=2

