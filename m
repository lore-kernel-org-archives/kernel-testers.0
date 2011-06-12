From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #37222] 3.0.0-rc1-git3 -- kernel/sched.c:619 invoked rcu_dereference_check() without protection!
Date: Sun, 12 Jun 2011 22:30:53 +0200 (CEST)
Message-ID: <JL7O0m0yLjL.A.u0C.0NS9NB@chimera>
References: <vv0uv79EvLN.A.jiC.pNS9NB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <vv0uv79EvLN.A.jiC.pNS9NB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, Miles Lane <miles.lane@gmail.com>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.39.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=37222
Subject		: 3.0.0-rc1-git3 -- kernel/sched.c:619 invoked rcu_dereference_check() without protection!
Submitter	: Miles Lane <miles.lane@gmail.com>
Date		: 2011-06-04 3:22 (9 days old)
Message-ID	: <BANLkTikHS7TuFhm3cfJ+Y=erWDaAwuE_TA@mail.gmail.com>
References	: http://marc.info/?l=linux-kernel&m=130715775803343&w=2

