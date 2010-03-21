From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #15142] sysfs-related lockdep warning in __blkdev_get
Date: Sun, 21 Mar 2010 21:30:45 +0100 (CET)
Message-ID: <hTwaxgnIZ2O.A.J8F.wQopLB@chimera>
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
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Matti Aarnio <matti.aarnio--kernel-bugzilla-VYF+RMHuKCpAfugRpC6u6w@public.gmane.org>, NeilBrown <neilb-l3A5Bk7waGM@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.32 and 2.6.33.

The following bug entry is on the current list of known regressions
introduced between 2.6.32 and 2.6.33.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15142
Subject		: sysfs-related lockdep warning in __blkdev_get
Submitter	: Matti Aarnio <matti.aarnio--kernel-bugzilla-VYF+RMHuKCpAfugRpC6u6w@public.gmane.org>
Date		: 2010-01-25 13:38 (56 days old)
Handled-By	: NeilBrown <neilb-l3A5Bk7waGM@public.gmane.org>
Patch		: https://bugzilla.kernel.org/attachment.cgi?id=25085

