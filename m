From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #12395] 2.6.28-rc9: oprofile regression
Date: Tue, 3 Mar 2009 21:45:05 +0100
Message-ID: <20090303204504.GA20038@elte.hu>
References: <HFSEX4uppGO.A.JSG.2yzoJB@chimera> <LLno3yT_fnC.A.Lh.4zzoJB@chimera> <20090303113218.GE10085@erda.amd.com> <200903032055.23969.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <200903032055.23969.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Robert Richter <robert.richter-5C7GfCeVMHo@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andi Kleen <ak-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, Tim Blechmann <tim-xpEK/MU0Hawdnm+yROfE0A@public.gmane.org>


* Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> On Tuesday 03 March 2009, Robert Richter wrote:
> > Fix upstream in tip/x86/urgent:
> > 
> > 780eef9492b16a1543a3b2ae9f9526a735fc9856
> 
> URL, please?

The fix is not yet in Linus's tree - the commit is below.

	Ingo

------------>
From 780eef9492b16a1543a3b2ae9f9526a735fc9856 Mon Sep 17 00:00:00 2001
From: Tim Blechmann <tim-xpEK/MU0Hawdnm+yROfE0A@public.gmane.org>
Date: Thu, 19 Feb 2009 17:34:03 +0100
Subject: [PATCH] x86: oprofile: don't set counter width from cpuid on Core2

Impact: fix stuck NMIs and non-working oprofile on certain CPUs

Resetting the counter width of the performance counters on Intel's
Core2 CPUs, breaks the delivery of NMIs, when running in x86_64 mode.

This should fix bug #12395:

  http://bugzilla.kernel.org/show_bug.cgi?id=12395

Signed-off-by: Tim Blechmann <tim-xpEK/MU0Hawdnm+yROfE0A@public.gmane.org>
Signed-off-by: Robert Richter <robert.richter-5C7GfCeVMHo@public.gmane.org>
LKML-Reference: <20090303100412.GC10085-yX1UDyMwZ8xWk0Htik3J/w@public.gmane.org>
Cc: <stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Signed-off-by: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
---
 arch/x86/oprofile/op_model_ppro.c |   14 ++++++++++++--
 1 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/arch/x86/oprofile/op_model_ppro.c b/arch/x86/oprofile/op_model_ppro.c
index e9f80c7..10131fb 100644
--- a/arch/x86/oprofile/op_model_ppro.c
+++ b/arch/x86/oprofile/op_model_ppro.c
@@ -78,8 +78,18 @@ static void ppro_setup_ctrs(struct op_msrs const * const msrs)
 	if (cpu_has_arch_perfmon) {
 		union cpuid10_eax eax;
 		eax.full = cpuid_eax(0xa);
-		if (counter_width < eax.split.bit_width)
-			counter_width = eax.split.bit_width;
+
+		/*
+		 * For Core2 (family 6, model 15), don't reset the
+		 * counter width:
+		 */
+		if (!(eax.split.version_id == 0 &&
+			current_cpu_data.x86 == 6 &&
+				current_cpu_data.x86_model == 15)) {
+
+			if (counter_width < eax.split.bit_width)
+				counter_width = eax.split.bit_width;
+		}
 	}
 
 	/* clear all counters */
