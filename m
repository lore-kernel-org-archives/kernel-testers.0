From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #15195] kernel BUG at include/net/netns/generic.h:41, pfkey_create+0x36/0x18b [af_key]
Date: Mon,  1 Feb 2010 01:22:12 +0100 (CET)
Message-ID: <d3IDKWHT5gE.A.uzB.S7hZLB@chimera>
References: <vZZJKzCUn4G.A.CPB.F7hZLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <vZZJKzCUn4G.A.CPB.F7hZLB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Alexey Dobriyan <adobriyan@gmail.com>, Luca Tettamanti <kronos.it@gmail.com>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.32.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15195
Subject		: kernel BUG at include/net/netns/generic.h:41, pfkey_create+0x36/0x18b [af_key]
Submitter	: Luca Tettamanti <kronos.it@gmail.com>
Date		: 2010-01-30 13:23 (2 days old)
References	: http://marc.info/?l=linux-netdev&m=126485785004775&w=4
Handled-By	: Alexey Dobriyan <adobriyan@gmail.com>
Patch		: http://patchwork.kernel.org/patch/75891/

