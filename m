From: Mariusz Kozlowski <m.kozlowski-NWF1p15JEu3VItvQsEIGlw@public.gmane.org>
Subject: Re: 2.6.27-rc1-mm1: unable to boot with gcov on x86_64
Date: Tue, 5 Aug 2008 22:29:42 +0200
Message-ID: <200808052229.42737.m.kozlowski@tuxland.pl>
References: <20080731000354.24b55d5b.akpm@linux-foundation.org> <200808052226.36626.m.kozlowski@tuxland.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200808052226.36626.m.kozlowski-NWF1p15JEu3VItvQsEIGlw@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Peter Oberparleiter <peter.oberparleiter-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

> Hello Peter,
> 
> 	I'm seeing similar GCOV problems as with 2.6.26-rc5-mm1 that you fixed.
> This is the same x86_64 box and again it was unable to boot with gcov enabled.
> A quick look revealed that arch/x86/tsc_64.c and arch/x86/tsc_32.c code was

Make that arch/x86/kernel/tsc_64.c and arch/x86/kernel/tsc_32.c

	Mariusz
