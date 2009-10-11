From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #14141] order 2 page allocation failures in iwlagn
Date: Mon, 12 Oct 2009 01:01:04 +0200 (CEST)
Message-ID: <L6tb-VyKHZK.A.d4D.P0l0KB@chimera>
References: <56acieJJ2fF.A.nEB.Hzl0KB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1753989AbZJKXFn@vger.kernel.org>
In-Reply-To: <56acieJJ2fF.A.nEB.Hzl0KB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, David Rientjes <rientjes@google.com>, Frans Pop <elendil@planet.nl>, Pekka Enberg <penberg@cs.helsinki.fi>, Reinette Chatre <reinette.chatre@intel.com>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.30 and 2.6.31.

The following bug entry is on the current list of known regressions
introduced between 2.6.30 and 2.6.31.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14141
Subject		: order 2 page allocation failures in iwlagn
Submitter	: Frans Pop <elendil@planet.nl>
Date		: 2009-09-06 7:40 (36 days old)
First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=2ff05b2b4eac2e63d345fc731ea151a060247f53
References	: http://marc.info/?l=linux-kernel&m=125222287419691&w=4
		  http://lkml.org/lkml/2009/10/2/86
		  http://lkml.org/lkml/2009/10/5/24
Handled-By	: Pekka Enberg <penberg@cs.helsinki.fi>

