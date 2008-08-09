From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Regression] 2.6.27-rc2-git4: suspend and power off fails on Asus M3A32-MVP
Date: Sat, 9 Aug 2008 23:21:15 +0200
Message-ID: <200808092321.16711.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Mark Langsdorf <mark.langsdorf-5C7GfCeVMHo@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, Frank Arnold <frank.arnold-5C7GfCeVMHo@public.gmane.org>

Hi Mark,

Unfortunately, your commit 34ae7f35a21694aa5cb8829dc5142c39d73d6ba0
("[CPUFREQ][2/2] preregister support for powernow-k8") causes a power off/
suspend/ hibernation regression on my test box with the Asus M3A32-MVP
mainboard (AMD 790 chipset) and the Phenom 9850 CPU.

Apparently, the patch causes a crash in a CPU hotplug notifier to happen, but
I'm not really sure of that, since there are a lot of stack traces resulting
from it and I'm unable to capture them over a serial console.

It is sufficient to revert commit 34ae7f35a21694aa5cb8829dc5142c39d73d6ba0 to
make things work again.

Please advise.

Thanks,
Rafael
