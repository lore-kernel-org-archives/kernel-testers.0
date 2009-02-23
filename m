From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #12760] 2.6.29-rc5 hanging at boot when CONFIG_LOCK_STAT=y
Date: Mon, 23 Feb 2009 22:48:16 +0100 (CET)
Message-ID: <vP9hdyF4fL.A.ubD.7ozoJB@chimera>
References: <GVhknozYwrL.A.hiC.rozoJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <GVhknozYwrL.A.hiC.rozoJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Adam J. Richter" <adam-7x81iamSd18S+FvcfC7Uqw@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.28.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12760
Subject		: 2.6.29-rc5 hanging at boot when CONFIG_LOCK_STAT=y
Submitter	: Adam J. Richter <adam-7x81iamSd18S+FvcfC7Uqw@public.gmane.org>
Date		: 2009-02-16 6:50 (8 days old)
References	: http://marc.info/?l=linux-kernel&m=123476768023893&w=4
Handled-By	: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

