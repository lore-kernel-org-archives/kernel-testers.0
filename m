From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #15278] lockdep warning for iscsi in 2.6.33-rc6
Date: Sun, 21 Mar 2010 21:30:47 +0100 (CET)
Message-ID: <hTwaxgnIZ2O.A.DxE.lPopLB@chimera>
References: <QQGfxbJf48H.A.NFD.uNopLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <QQGfxbJf48H.A.NFD.uNopLB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Tao Ma <tao.ma-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.32 and 2.6.33.

The following bug entry is on the current list of known regressions
introduced between 2.6.32 and 2.6.33.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15278
Subject		: lockdep warning for iscsi in 2.6.33-rc6
Submitter	: Tao Ma <tao.ma-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Date		: 2010-02-09 6:59 (41 days old)
Message-ID	: <4B7107CF.3060703-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
References	: http://marc.info/?l=linux-kernel&m=126569884330200&w=2

