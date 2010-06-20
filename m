From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #16131] kernel BUG at fs/btrfs/extent-tree.c:4363 (btrfs_free_tree_block)
Date: Mon, 21 Jun 2010 00:17:36 +0200 (CEST)
Message-ID: <W8JfMs9cZw.A.JvG.xNpHMB@chimera>
References: <lc60d4toGTL.A.QzD._LpHMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <lc60d4toGTL.A.QzD._LpHMB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Chow Loong Jin <hyperair@ubuntu.com>, Yan Zheng <zheng.yan@oracle.com>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.34.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16131
Subject		: kernel BUG at fs/btrfs/extent-tree.c:4363 (btrfs_free_tree_block)
Submitter	: Chow Loong Jin <hyperair@ubuntu.com>
Date		: 2010-06-05 18:53 (16 days old)
Handled-By	: Yan Zheng <zheng.yan@oracle.com>
Patch		: https://patchwork.kernel.org/patch/103235/

