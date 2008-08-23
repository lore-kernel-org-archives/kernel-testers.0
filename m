From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #11406] patch "x86: MOVE PCI IO ECS code to x86/pci" breaks CPU hotplug
Date: Sat, 23 Aug 2008 20:10:24 +0200 (CEST)
Message-ID: <VSpL6AnBTS.A.bfG.CaGsIB@albercik>
References: <mzBsPw3QUOF.A.87F.wZGsIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <mzBsPw3QUOF.A.87F.wZGsIB@albercik>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Jan Beulich <jbeulich-Et1tbQHTxzrQT0dZR+AlfA@public.gmane.org>, Robert Richter <robert.richter-5C7GfCeVMHo@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.26.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11406
Subject		: patch "x86: MOVE PCI IO ECS code to x86/pci" breaks CPU hotplug
Submitter	: Jan Beulich <jbeulich-Et1tbQHTxzrQT0dZR+AlfA@public.gmane.org>
Date		: 2008-08-21 12:59 (3 days old)
References	: http://marc.info/?l=linux-kernel&m=121932366326572&w=4
Handled-By	: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
		  Robert Richter <robert.richter-5C7GfCeVMHo@public.gmane.org>

