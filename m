From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #15137] NULL pointer dereference in vlan_skb_recv
Date: Sun, 24 Jan 2010 23:04:41 +0100 (CET)
Message-ID: <hE3x9c-4KZM.A.W0E.4JMXLB@chimera>
References: <md-TZL3UUvL.A.FiE.xJMXLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754445Ab0AXWS3@vger.kernel.org>
In-Reply-To: <md-TZL3UUvL.A.FiE.xJMXLB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="macroman"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, =?utf-8?q?Bruno=20Pr=C3=A9mont?= <bonbons@linux-vserver.org>, Eric Dumazet <eric.dumazet@gmail.com>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.32.  Please verify if it still should be listed and let me kno=
w
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D15137
Subject		: NULL pointer dereference in vlan_skb_recv
Submitter	: Bruno Pr=C3=A9mont <bonbons@linux-vserver.org>
Date		: 2010-01-23 15:56 (2 days old)
References	: http://marc.info/?l=3Dlinux-kernel&m=3D126426286507497&w=3D=
4
Handled-By	: Eric Dumazet <eric.dumazet@gmail.com>
Patch		: http://patchwork.kernel.org/patch/74999/
		  http://patchwork.kernel.org/patch/75002/

