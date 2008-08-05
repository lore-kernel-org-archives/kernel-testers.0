From: Mariusz Kozlowski <m.kozlowski-NWF1p15JEu3VItvQsEIGlw@public.gmane.org>
Subject: Re: 2.6.27-rc1-mm1: unable to boot with gcov on x86_64
Date: Tue, 5 Aug 2008 22:26:36 +0200
Message-ID: <200808052226.36626.m.kozlowski@tuxland.pl>
References: <20080731000354.24b55d5b.akpm@linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080731000354.24b55d5b.akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Peter Oberparleiter <peter.oberparleiter-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Hello Peter,

	I'm seeing similar GCOV problems as with 2.6.26-rc5-mm1 that you fixed.
This is the same x86_64 box and again it was unable to boot with gcov enabled.
A quick look revealed that arch/x86/tsc_64.c and arch/x86/tsc_32.c code was
unified. Unfortunately simple change of

GCOV_tsc_32.o := n
GCOV_tsc_64.o := n

to

GCOV_tsc.o := n

did not help. Given the amount of combinations of which set of files with GCOV
might cause failures I was rather fortunate and after a few hours I was able
to pinpoint exactly two files which need GCOV disabled to make my x86_64 boot.

If you want to try to figure out what is wrong with them please feel free to send
me patches to test. If not then how about this patch? Compile and run tested.

Signed-off-by: Mariusz Kozlowski <m.kozlowski-NWF1p15JEu3VItvQsEIGlw@public.gmane.org>

--- linux-2.6.27-rc1-mm1/arch/x86/kernel/Makefile	2008-08-01 18:05:04.000000000 +0200
+++ linux-2.6.27-rc1-mm1-dirty/arch/x86/kernel/Makefile	2008-08-05 21:49:21.000000000 +0200
@@ -13,8 +13,8 @@ CFLAGS_REMOVE_rtc.o = -pg
 CFLAGS_REMOVE_paravirt.o = -pg
 endif
 
-GCOV_tsc_32.o := n
-GCOV_tsc_64.o := n
+GCOV_vsyscall_64.o := n
+GCOV_tsc.o := n
 
 #
 # vsyscalls (which work on the user stack) should have


	Mariusz
