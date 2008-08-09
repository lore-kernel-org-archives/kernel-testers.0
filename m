From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #11270] BUG when doing a cat /sys/devices/system/cpu/cpuidle/current_driver
Date: Sun, 10 Aug 2008 00:43:51 +0200 (CEST)
Message-ID: <cX_-nNkxKaF.A.7EB.GDjnIB@albercik>
References: <VYYCiQF4qDI.A.BPH.KCjnIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <VYYCiQF4qDI.A.BPH.KCjnIB@albercik>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Eric Sesterhenn <snakebyte-Mmb7MZpHnFY@public.gmane.org>, Rabin Vincent <rabin-66gdRtMMWGc@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.26.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11270
Subject		: BUG when doing a cat /sys/devices/system/cpu/cpuidle/current_driver
Submitter	: Eric Sesterhenn <snakebyte-Mmb7MZpHnFY@public.gmane.org>
Date		: 2008-08-05 12:33 (5 days old)
References	: http://marc.info/?l=linux-kernel&m=121793969102438&w=4
Handled-By	: Rabin Vincent <rabin-66gdRtMMWGc@public.gmane.org>
Patch		: http://marc.info/?l=linux-kernel&m=121795955208618&w=4

