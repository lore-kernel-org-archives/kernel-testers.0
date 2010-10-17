From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #20342] [LogFS] [2.6.36-rc7] Deadlock in logfs_get_wblocks, hold and wait on same lock super->s_write_mutex
Date: Sun, 17 Oct 2010 22:21:46 +0200 (CEST)
Message-ID: <7N-qxsaxKCN.A.LbB.6j1uMB@chimera>
References: <TP5BfCZNRXD.A._8.uj1uMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <TP5BfCZNRXD.A._8.uj1uMB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Prasad Joshi <prasadjoshi124-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.35.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=20342
Subject		: [LogFS] [2.6.36-rc7] Deadlock in logfs_get_wblocks, hold and wait on same lock super->s_write_mutex
Submitter	: Prasad Joshi <prasadjoshi124-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2010-10-13 9:49 (5 days old)
Message-ID	: <AANLkTinvsMxTxEbDEFmb5M-6fYjdRvErU==Zs7+qANkV-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
References	: http://marc.info/?l=linux-kernel&m=128696335024718&w=2

