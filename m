From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #15031] bug in fs/btrfs/ordered-data.c:672
Date: Sun, 10 Jan 2010 23:32:57 +0100 (CET)
Message-ID: <omZ8aBZReyD.A.0sG.6MlSLB@chimera>
References: <wnS54-l8PVO.A.TlF.oMlSLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754547Ab0AJWoL@vger.kernel.org>
In-Reply-To: <wnS54-l8PVO.A.TlF.oMlSLB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, "Carlos R. Mafra" <crmafra2@gmail.com>, "Yan, Zheng" <yanzheng@21cn.com>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.32.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15031
Subject		: bug in fs/btrfs/ordered-data.c:672
Submitter	: Carlos R. Mafra <crmafra2@gmail.com>
Date		: 2010-01-02 11:32 (9 days old)
References	: http://lkml.org/lkml/2010/1/2/17
Handled-By	: Yan, Zheng <yanzheng@21cn.com>
Patch		: http://www.mail-archive.com/linux-btrfs@vger.kernel.org/msg03686.html

