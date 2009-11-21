From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #14476] Unable to handle kernel paging request in nfs_write_mapping
Date: Sat, 21 Nov 2009 16:02:15 +0100 (CET)
Message-ID: <mYW9sxtWd2G.A.CyE.4CACLB@chimera>
References: <7qTjLRFNcGF.A.eSE.kCACLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1756174AbZKUPTf@vger.kernel.org>
In-Reply-To: <7qTjLRFNcGF.A.eSE.kCACLB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Stephan von Krawczynski <skraw@ithnet.com>, Trond Myklebust <Trond.Myklebust@netapp.com>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.30 and 2.6.31.

The following bug entry is on the current list of known regressions
introduced between 2.6.30 and 2.6.31.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14476
Subject		: Unable to handle kernel paging request in nfs_write_mapping
Submitter	: Stephan von Krawczynski <skraw@ithnet.com>
Date		: 2009-10-14 9:53 (39 days old)
References	: http://marc.info/?l=linux-kernel&m=125551421405656&w=4
Handled-By	: Trond Myklebust <Trond.Myklebust@netapp.com>

