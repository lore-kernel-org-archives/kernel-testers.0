From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #13657] Linux-2.6.31-rc1 Fails To Recognize Some USB Disks
Date: Sun,  2 Aug 2009 20:58:24 +0200 (CEST)
Message-ID: <iZB3Pj-uj3M.A.wZE.FegdKB@chimera>
References: <Su1q3S6JjyO.A.jeB.hcgdKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Su1q3S6JjyO.A.jeB.hcgdKB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, James Bottomley <James.Bottomley-d9PhHud1JfjCXq6kfMZ53/egYHeGw8Jk@public.gmane.org>, "Martin K. Petersen" <martin.petersen-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, Tarkan Erimer <tarkan.erimer-AMZSHK9Z0TXlajqSnzHT9w@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.30.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13657
Subject		: Linux-2.6.31-rc1 Fails To Recognize Some USB Disks
Submitter	: Tarkan Erimer <tarkan.erimer-AMZSHK9Z0TXlajqSnzHT9w@public.gmane.org>
Date		: 2009-06-26 10:03 (38 days old)
First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=3821d768912a47ddbd6cab52943a8284df88003c
References	: http://lkml.org/lkml/2009/6/26/34
Handled-By	: Martin K. Petersen <martin.petersen-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>

