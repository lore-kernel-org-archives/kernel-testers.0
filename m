From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #13325] 2.6.30-rc kills my box hard - and lockdep chains
Date: Sat, 30 May 2009 21:37:32 +0200 (CEST)
Message-ID: <LEcEO2518_I.A.vNE.TJbIKB@chimera>
References: <4to6E2myxvG.A.muC.aIbIKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4to6E2myxvG.A.muC.aIbIKB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jonathan Corbet <corbet-T1hC0tSOHrs@public.gmane.org>, Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.29.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13325
Subject		: 2.6.30-rc kills my box hard - and lockdep chains
Submitter	: Jonathan Corbet <corbet-T1hC0tSOHrs@public.gmane.org>
Date		: 2009-05-14 15:49 (17 days old)
References	: http://marc.info/?l=linux-kernel&m=124231630701394&w=4

