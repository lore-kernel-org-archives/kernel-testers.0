From: Peter Oberparleiter <peter.oberparleiter-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>
Subject: Re: 2.6.27-rc1-mm1: unable to boot with gcov on x86_64
Date: Wed, 06 Aug 2008 09:23:41 +0200
Message-ID: <4899517D.2050208@de.ibm.com>
References: <20080731000354.24b55d5b.akpm@linux-foundation.org> <200808052226.36626.m.kozlowski@tuxland.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200808052226.36626.m.kozlowski-NWF1p15JEu3VItvQsEIGlw@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Mariusz Kozlowski <m.kozlowski-NWF1p15JEu3VItvQsEIGlw@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Mariusz Kozlowski wrote:
> 	I'm seeing similar GCOV problems as with 2.6.26-rc5-mm1 that you fixed.
> This is the same x86_64 box and again it was unable to boot with gcov enabled.
> A quick look revealed that arch/x86/tsc_64.c and arch/x86/tsc_32.c code was
> unified. Unfortunately simple change of
> 
> GCOV_tsc_32.o := n
> GCOV_tsc_64.o := n
> 
> to
> 
> GCOV_tsc.o := n
> 
> did not help. Given the amount of combinations of which set of files with GCOV
> might cause failures I was rather fortunate and after a few hours I was able
> to pinpoint exactly two files which need GCOV disabled to make my x86_64 boot.
> 
> If you want to try to figure out what is wrong with them please feel free to send
> me patches to test. If not then how about this patch? Compile and run tested.

Your patch looks good. I don't think I will be able to refine those
list of files to be excluded any better than you already did so this
should go into -mm with the other gcov patches.

For future reference, there are other object files which "stand out" in
the respective Makefile, namely rtc.o, hpet.o and paravirt.o. Just like
the two files that you identified as causing problems with gcov
profiling, these are explicitly excluded from either FTRACE profiling
or stack-protector checks or both. If there should be further run-time
problems, these are good candidates to check, though I'd like to refrain
from removing them at this point in time without them causing any
apparent problems.


Regards,
  Peter
