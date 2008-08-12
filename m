From: "Langsdorf, Mark" <mark.langsdorf@amd.com>
Subject: RE: [Regression] 2.6.27-rc2-git4: suspend and power off fails on Asus M3A32-MVP
Date: Tue, 12 Aug 2008 11:03:54 -0500
Message-ID: <6453C3CB8E2B3646B0D020C112613273C5AC60@sausexmb4.amd.com>
References: <200808092321.16711.rjw@sisk.pl>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754780AbYHLQEU@vger.kernel.org>
Content-Class: urn:content-classes:message
In-Reply-To: <200808092321.16711.rjw@sisk.pl>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Andrew Morton <akpm@linux-foundation.org>, Dave Jones <davej@redhat.com>, Linus Torvalds <torvalds@linux-foundation.org>, LKML <linux-kernel@vger.kernel.org>, kernel-testers@vger.kernel.org, Randy Dunlap <randy.dunlap@oracle.com>, "Arnold, Frank" <Frank.Arnold@amd.com>


> Unfortunately, your commit 34ae7f35a21694aa5cb8829dc5142c39d73d6ba0
> ("[CPUFREQ][2/2] preregister support for powernow-k8") causes 
> a power off/
> suspend/ hibernation regression on my test box with the Asus M3A32-MVP
> mainboard (AMD 790 chipset) and the Phenom 9850 CPU.
> 
> Apparently, the patch causes a crash in a CPU hotplug 
> notifier to happen, but I'm not really sure of that, since there are a
lot of stack 
> traces resulting from it and I'm unable to capture them over a serial
console.
> 
> It is sufficient to revert commit 
> 34ae7f35a21694aa5cb8829dc5142c39d73d6ba0 to
> make things work again.

Thanks for the clear report.  I'll look into it and try to fix it.

-Mark Langsdorf
Operating System Research Center
AMD
