From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #16122] 2.6.35-rc1: WARNING at fs/fs-writeback.c:1142 __mark_inode_dirty+0x103/0x170
Date: Fri,  9 Jul 2010 01:33:43 +0200 (CEST)
Message-ID: <TXb9XdQzJoD.A.TQE.dOmNMB@chimera>
References: <-IGZ64uxA6G.A.P0H.bLmNMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <-IGZ64uxA6G.A.P0H.bLmNMB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Jens Axboe <axboe-tSWWG44O7X1aa/9Udqfwiw@public.gmane.org>, Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.34.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16122
Subject		: 2.6.35-rc1: WARNING at fs/fs-writeback.c:1142 __mark_inode_dirty+0x103/0x170
Submitter	: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
Date		: 2010-06-04 13:18 (35 days old)
Handled-By	: Jens Axboe <axboe-tSWWG44O7X1aa/9Udqfwiw@public.gmane.org>

