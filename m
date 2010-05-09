From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #15909] open("a/",O_NOFOLLOW) fails with ELOOP if "a" is a symbolic link to a directory.
Date: Sun,  9 May 2010 23:17:37 +0200 (CEST)
Message-ID: <HqroMXsT-CJ.A.HlE.M9y5LB@chimera>
References: <10aqDnTJcLO.A.mLE.48y5LB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <10aqDnTJcLO.A.mLE.48y5LB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Marius Tolzmann <tolzmann@molgen.mpg.de>, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.33.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15909
Subject		: open("a/",O_NOFOLLOW) fails with ELOOP if "a" is a symbolic link to a directory.
Submitter	: Marius Tolzmann <tolzmann@molgen.mpg.de>
Date		: 2010-05-05 13:01 (5 days old)
Handled-By	: OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>

