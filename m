From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #13339] rtable leak in ipv4/route.c
Date: Sun, 24 May 2009 21:11:56 +0200 (CEST)
Message-ID: <uSztiUhmDDC.A.U8H.a9bGKB@chimera>
References: <ZPPBiNHr1LC.A.9ZH.K9bGKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <ZPPBiNHr1LC.A.9ZH.K9bGKB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Alexander V. Lukyanov" <lav-L+1EwoRT+D8@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.29.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13339
Subject		: rtable leak in ipv4/route.c
Submitter	: Alexander V. Lukyanov <lav-L+1EwoRT+D8@public.gmane.org>
Date		: 2009-05-18 14:10 (7 days old)

