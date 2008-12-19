From: Dmitry Adamushko <dmitry.adamushko-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [patch] Re: [Bug #12100] resume (S2R) broken by Intel microcode
	module, on A110L
Date: Sat, 20 Dec 2008 00:15:24 +0100
Message-ID: <1229728524.5122.13.camel@earth>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:subject:from:to:cc
         :content-type:date:message-id:mime-version:x-mailer
         :content-transfer-encoding;
        bh=6njjEC/oFGE9uebpM5pjCC60mmbWCpSwT7+odFXaXq4=;
        b=aROBvQoHV3Y5ilXgQ5kMrRQagVDe87/+3DC/phCMGC81phR3fVAQKPjv7//KdWq13l
         w8w6tOVmwMrn8H5F1KHbkZL8o7VuiRBGCxMqwU9ivbv9Fc/f6NUulKPEnWF679hkAw67
         fTwj4nbBhdaFE6GjJCaOJu2+NUUPAi6YaNh5g=
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Andreas Mohr <andi-5+Cda9B46AM@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>


Hi,


This is in response to the following bug report:

Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=12100
Subject         : resume (S2R) broken by Intel microcode module, on A110L
Submitter       : Andreas Mohr <andi-5+Cda9B46AM@public.gmane.org>
Date            : 2008-11-25 08:48 (19 days old)
Handled-By      : Dmitry Adamushko <dmitry.adamushko-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>


---

From: Dmitry Adamushko <dmitry.adamushko-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: [microcode] fix a deadlock in microcode_resume_cpu()

[ The deadlock scenario has been discovered by Andreas Mohr ]

I think I might have a logical explanation why the system 
(http://bugzilla.kernel.org/show_bug.cgi?id=12100)
might hang upon resuming, OTOH it should have likely hanged each and every time.

(1) possible deadlock in microcode_resume_cpu() if either 'if' section is
taken;

(2) now, I don't see it in spec. and can't experimentally verify it (newer
ucodes don't seem to be available for my Core2duo)... but logically-wise, I'd
think that when read upon resuming, the 'microcode revision' (MSR 0x8B) should
be back to its original one (we need to reload ucode anyway so it doesn't seem
logical if a cpu doesn't drop the version)... if so, the comparison with
memcmp() for the full 'struct cpu_signature' is wrong... and that's how one of
the aforementioned 'if' sections might have been triggered - leading to a
deadlock.

Obviously, in my tests I simulated loading/resuming with the ucode of the same
version (just to see that the file is loaded/re-loaded upon resuming) so this
issue has never popped up.

I'd appreciate if someone with an appropriate system might give a try to the
2nd patch (titled "fix a comparison && deadlock...").


In any case, the deadlock situation is a must-have fix.


Signed-off-by: Dmitry Adamushko <dmitry.adamushko-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
CC: Info Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
CC: Andreas Mohr <andi-5+Cda9B46AM@public.gmane.org>


---

diff --git a/arch/x86/kernel/microcode_core.c b/arch/x86/kernel/microcode_core.c
index 82fb280..c4b5b24 100644
--- a/arch/x86/kernel/microcode_core.c
+++ b/arch/x86/kernel/microcode_core.c
@@ -272,13 +272,18 @@ static struct attribute_group mc_attr_group = {
 	.name = "microcode",
 };
 
-static void microcode_fini_cpu(int cpu)
+static void __microcode_fini_cpu(int cpu)
 {
 	struct ucode_cpu_info *uci = ucode_cpu_info + cpu;
 
-	mutex_lock(&microcode_mutex);
 	microcode_ops->microcode_fini_cpu(cpu);
 	uci->valid = 0;
+}
+
+static void microcode_fini_cpu(int cpu)
+{
+	mutex_lock(&microcode_mutex);
+	__microcode_fini_cpu(cpu);
 	mutex_unlock(&microcode_mutex);
 }
 
@@ -306,12 +311,16 @@ static int microcode_resume_cpu(int cpu)
 	 * to this cpu (a bit of paranoia):
 	 */
 	if (microcode_ops->collect_cpu_info(cpu, &nsig)) {
-		microcode_fini_cpu(cpu);
+		__microcode_fini_cpu(cpu);
+		printk(KERN_ERR "failed to collect_cpu_info for resuming cpu #%d\n",
+				cpu);
 		return -1;
 	}
 
-	if (memcmp(&nsig, &uci->cpu_sig, sizeof(nsig))) {
-		microcode_fini_cpu(cpu);
+	if ((nsig.sig != uci->cpu_sig.sig) || (nsig.pf != uci->cpu_sig.pf)) {
+		__microcode_fini_cpu(cpu);
+		printk(KERN_ERR "cached ucode doesn't match the resuming cpu #%d\n",
+				cpu);
 		/* Should we look for a new ucode here? */
 		return 1;
 	}
diff --git a/arch/x86/kernel/microcode_intel.c b/arch/x86/kernel/microcode_intel.c
index 622dc4a..a8e6279 100644
--- a/arch/x86/kernel/microcode_intel.c
+++ b/arch/x86/kernel/microcode_intel.c
@@ -155,6 +155,7 @@ static DEFINE_SPINLOCK(microcode_update_lock);
 static int collect_cpu_info(int cpu_num, struct cpu_signature *csig)
 {
 	struct cpuinfo_x86 *c = &cpu_data(cpu_num);
+	unsigned long flags;
 	unsigned int val[2];
 
 	memset(csig, 0, sizeof(*csig));
@@ -174,11 +175,16 @@ static int collect_cpu_info(int cpu_num, struct cpu_signature *csig)
 		csig->pf = 1 << ((val[1] >> 18) & 7);
 	}
 
+	/* serialize access to the physical write to MSR 0x79 */
+	spin_lock_irqsave(&microcode_update_lock, flags);
+
 	wrmsr(MSR_IA32_UCODE_REV, 0, 0);
 	/* see notes above for revision 1.07.  Apparent chip bug */
 	sync_core();
 	/* get the current revision from MSR 0x8B */
 	rdmsr(MSR_IA32_UCODE_REV, val[0], csig->rev);
+	spin_unlock_irqrestore(&microcode_update_lock, flags);
+
 	pr_debug("microcode: collect_cpu_info : sig=0x%x, pf=0x%x, rev=0x%x\n",
 			csig->sig, csig->pf, csig->rev);
 

