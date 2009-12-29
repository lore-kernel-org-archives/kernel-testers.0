From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #14891] Deadlock regression related to NFS root
Date: Tue, 29 Dec 2009 16:28:52 +0100 (CET)
Message-ID: <srmJ8vMxKPH.A.mPC.XwhOLB@chimera>
References: <oBElxfTZdhL.A.bx.-vhOLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1753458AbZL2PfA@vger.kernel.org>
In-Reply-To: <oBElxfTZdhL.A.bx.-vhOLB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, "Stephen R. van den Berg" <srb@cuci.nl>, Trond Myklebust <Trond.Myklebust@netapp.com>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.31 and 2.6.32.

The following bug entry is on the current list of known regressions
introduced between 2.6.31 and 2.6.32.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14891
Subject		: Deadlock regression related to NFS root
Submitter	: Stephen R. van den Berg <srb@cuci.nl>
Date		: 2009-11-24 0:24 (36 days old)
References	: http://marc.info/?l=linux-kernel&m=125902279909452&w=4
Handled-By	: Trond Myklebust <Trond.Myklebust@netapp.com>

