From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #15669] INFO: suspicious rcu_dereference_check()
Date: Sun, 13 Jun 2010 16:48:56 +0200 (CEST)
Message-ID: <YPGdyfWGvNK.A.VjB.s8OFMB@chimera>
References: <g77CuMUl7QI.A.5wF.V5OFMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <g77CuMUl7QI.A.5wF.V5OFMB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Zdenek Kabelac <zdenek.kabelac@gmail.com>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.33 and 2.6.34.

The following bug entry is on the current list of known regressions
introduced between 2.6.33 and 2.6.34.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15669
Subject		: INFO: suspicious rcu_dereference_check()
Submitter	: Zdenek Kabelac <zdenek.kabelac@gmail.com>
Date		: 2010-03-08 1:26 (98 days old)
Message-ID	: <c4e36d111003250348q678eb2e6w4f3e8133e7fd6e58@mail.gmail.com>
References	: http://marc.info/?l=linux-kernel&m=126801163107713&w=2

