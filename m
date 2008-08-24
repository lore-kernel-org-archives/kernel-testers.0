From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: 2.6.27-rc4-git1: Reported regressions from 2.6.26
Date: Sun, 24 Aug 2008 11:52:06 -0700 (PDT)
Message-ID: <alpine.LFD.1.10.0808241141470.3363@nehalem.linux-foundation.org>
References: <mzBsPw3QUOF.A.87F.wZGsIB@albercik>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <mzBsPw3QUOF.A.87F.wZGsIB@albercik>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, "H. Peter Anvin" <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>, Alok Kataria <akataria-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org>, Sean Young <sean-hENCXIMQXOg@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>



On Sat, 23 Aug 2008, Rafael J. Wysocki wrote:
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11354
> Subject		: AMD Elan regression with 2.6.27-rc3
> Submitter	: Sean Young <sean-hENCXIMQXOg@public.gmane.org>
> Date		: 2008-08-15 18:37 (9 days old)
> References	: http://marc.info/?l=linux-kernel&m=121882578430056&w=4

Peter? Ingo? Alok?

This _looks_ like it might be due to "x86: merge the TSC cpu-freq code" 
thing by Alok, where we do this:

	+static struct notifier_block time_cpufreq_notifier_block = {
	+       .notifier_call  = time_cpufreq_notifier
	+};
	+
	+static int __init cpufreq_tsc(void)
	+{
	+       cpufreq_register_notifier(&time_cpufreq_notifier_block,
	+                               CPUFREQ_TRANSITION_NOTIFIER);
	+       return 0;
	+}

but that's just _insane_ if the CPU doesn't even support TSC to begin 
with. Also, in the actual time_cpufreq_notifier(), we do:

	if (cpu_has(&cpu_data(freq->cpu), X86_FEATURE_CONSTANT_TSC))
		return 0;

and this is stupid because:

 (a) if the CPU has no TSC at all, then it sure as hell won't have a 
     _constant_ one, so we'll actually continue into the function.

 (b) and why the hell is this done at run-time in the notifier, and not in 
     the "cpufreq_tsc" init function? If anybody mixes totally different 
     kinds of CPU's in SMP, they deserve whatever they want.

so why is the patch not something like the appended?

Sean, does this make any difference for you?

		Linus

---
 arch/x86/kernel/tsc.c |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/arch/x86/kernel/tsc.c b/arch/x86/kernel/tsc.c
index 46af716..9bed5ca 100644
--- a/arch/x86/kernel/tsc.c
+++ b/arch/x86/kernel/tsc.c
@@ -325,6 +325,10 @@ static struct notifier_block time_cpufreq_notifier_block = {
 
 static int __init cpufreq_tsc(void)
 {
+	if (!cpu_has_tsc)
+		return 0;
+	if (boot_cpu_has(X86_FEATURE_CONSTANT_TSC))
+		return 0;
 	cpufreq_register_notifier(&time_cpufreq_notifier_block,
 				CPUFREQ_TRANSITION_NOTIFIER);
 	return 0;
