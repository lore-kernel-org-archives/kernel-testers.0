From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #13914] e1000e reports invalid NVM Checksum on 82566DM-2 (bisected)
Date: Wed, 19 Aug 2009 22:26:53 +0200 (CEST)
Message-ID: <ADSuNT6McuD.A.QBB.GOIjKB@chimera>
References: <jCYznkTxcLB.A.EPH.eNIjKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <jCYznkTxcLB.A.EPH.eNIjKB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, jsbronder-aBrp7R+bbdUdnm+yROfE0A@public.gmane.org

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.30.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13914
Subject		: e1000e reports invalid NVM Checksum on 82566DM-2 (bisected)
Submitter	:  <jsbronder-aBrp7R+bbdUdnm+yROfE0A@public.gmane.org>
Date		: 2009-08-04 18:06 (16 days old)

