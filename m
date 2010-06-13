From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #15936] Suspicious rcu_dereference_check() usage detected during 2.6.34-rc6 boot on PPC64/p5 processor
Date: Sun, 13 Jun 2010 16:48:59 +0200 (CEST)
Message-ID: <YPGdyfWGvNK.A.r4H.y6OFMB@chimera>
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
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Subrata Modak <subrata@linux.vnet.ibm.com>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.33 and 2.6.34.

The following bug entry is on the current list of known regressions
introduced between 2.6.33 and 2.6.34.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15936
Subject		: Suspicious rcu_dereference_check() usage detected during 2.6.34-rc6 boot on PPC64/p5 processor
Submitter	: Subrata Modak <subrata@linux.vnet.ibm.com>
Date		: 2010-05-06 7:29 (39 days old)
Message-ID	: <1273130279.4898.5.camel@subratamodak.linux.ibm.com>
References	: http://marc.info/?l=linux-kernel&m=127313031922395&w=2

