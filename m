From: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
Subject: [PATCH] x86: vm86: fix preemption bug
Date: Tue, 13 Jan 2009 23:36:34 +0100 (CET)
Message-ID: <alpine.LFD.2.00.0901132117270.3549@localhost.localdomain>
References: <nn3SOLVZ28H.A.bY.CafaJB@chimera> <nHCfeC0YLrE.A.WKC.qafaJB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <nHCfeC0YLrE.A.WKC.qafaJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Michal Suchanek <hramrach-aRb0bU7PRFPrBKCeMvbIDA@public.gmane.org>, Alexander van Heukelum <heukelum-97jfqw80gc6171pxa8y+qA@public.gmane.org>, "H. Peter Anvin" <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

Impact: fix scheduling while atomic bug

commit 3d2a71a596bd9c761c8487a2178e95f8a61da083 (x86, traps: converge
do_debug handlers) changed the preemption disable logic of do_debug()
so vm86_handle_trap() is called with preemption disabled resulting in:

BUG: sleeping function called from invalid context at include/linux/kernel.h:155
in_atomic(): 1, irqs_disabled(): 0, pid: 3005, name: dosemu.bin
Pid: 3005, comm: dosemu.bin Tainted: G        W  2.6.29-rc1 #51
Call Trace:
 [<c050d669>] copy_to_user+0x33/0x108
 [<c04181f4>] save_v86_state+0x65/0x149
 [<c0418531>] handle_vm86_trap+0x20/0x8f
 [<c064e345>] do_debug+0x15b/0x1a4
 [<c064df1f>] debug_stack_correct+0x27/0x2c
 [<c040365b>] sysenter_do_call+0x12/0x2f
BUG: scheduling while atomic: dosemu.bin/3005/0x10000001

Restore the original calling convention and reenable preemption before
calling handle_vm86_trap().

Reported-by: Michal Suchanek <hramrach-aRb0bU7PRFPrBKCeMvbIDA@public.gmane.org>
Cc: stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org
Signed-off-by: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
---
 arch/x86/kernel/traps.c |   10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

Index: linux-2.6/arch/x86/kernel/traps.c
===================================================================
--- linux-2.6.orig/arch/x86/kernel/traps.c
+++ linux-2.6/arch/x86/kernel/traps.c
@@ -99,6 +99,12 @@ static inline void preempt_conditional_s
 		local_irq_enable();
 }
 
+static inline void conditional_cli(struct pt_regs *regs)
+{
+	if (regs->flags & X86_EFLAGS_IF)
+		local_irq_disable();
+}
+
 static inline void preempt_conditional_cli(struct pt_regs *regs)
 {
 	if (regs->flags & X86_EFLAGS_IF)
@@ -626,8 +632,10 @@ clear_dr7:
 
 #ifdef CONFIG_X86_32
 debug_vm86:
+	/* reenable preemption: handle_vm86_trap() might sleep */
+	dec_preempt_count();
 	handle_vm86_trap((struct kernel_vm86_regs *) regs, error_code, 1);
-	preempt_conditional_cli(regs);
+	conditional_cli(regs);
 	return;
 #endif
 
