From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #16312] WARNING: at fs/fs-writeback.c:1127 __mark_inode_dirty
Date: Sun, 17 Oct 2010 22:55:46 +0200 (CEST)
Message-ID: <u4vap2zcaSM.A.JcG.j01uMB@chimera>
References: <1SnkuNVk0vO.A.E9E.Qx1uMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1SnkuNVk0vO.A.E9E.Qx1uMB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, Jan Kara <jack@suse.cz>, Zdenek Kabelac <zdenek.kabelac@gmail.com>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.34 and 2.6.35.

The following bug entry is on the current list of known regressions
introduced between 2.6.34 and 2.6.35.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16312
Subject		: WARNING: at fs/fs-writeback.c:1127 __mark_inode_dirty
Submitter	: Zdenek Kabelac <zdenek.kabelac@gmail.com>
Date		: 2010-06-28 9:40 (112 days old)
Message-ID	: <AANLkTin24fr5O4_q5Xbo9Y_NKkEmtcp6Hgmr9_4qXaFz@mail.gmail.com>
References	: http://marc.info/?l=linux-kernel&m=127771804806465&w=2
		  http://lkml.indiana.edu/hypermail/linux/kernel/1007.3/00884.html
Handled-By	: Jan Kara <jack@suse.cz>
		  Jan Kara <jack@suse.cz>
Patch		: https://bugzilla.kernel.org/attachment.cgi?id=30282

