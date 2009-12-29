From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #14936] kernel BUG at fs/ext4/inode.c:1063 if attempted to use non-ext4 partition with ext4
Date: Tue, 29 Dec 2009 16:10:01 +0100 (CET)
Message-ID: <NJVdobuNFNK.A.-nG.JnhOLB@chimera>
References: <LptzGUUXbTK.A.MSF.ymhOLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1753031AbZL2PSA@vger.kernel.org>
In-Reply-To: <LptzGUUXbTK.A.MSF.ymhOLB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, Gene Heskett <gene.heskett@verizon.net>, okias <d.okias@gmail.com>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.32.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14936
Subject		: kernel BUG at fs/ext4/inode.c:1063 if attempted to use non-ext4 partition with ext4
Submitter	: Gene Heskett <gene.heskett@verizon.net>
Date		: 2009-12-26 14:13 (4 days old)
References	: http://marc.info/?l=linux-kernel&m=126183682330809&w=4
		  http://marc.info/?l=linux-kernel&m=126169372613898&w=4

