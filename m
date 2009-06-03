From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #13306] hibernate slow on _second_ run
Date: Wed, 3 Jun 2009 11:16:04 +0200
Message-ID: <200906031116.05114.rjw@sisk.pl>
References: <4to6E2myxvG.A.muC.aIbIKB@chimera> <200906012248.49304.rjw@sisk.pl> <1244018021.10665.4.camel@johannes.local>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1244018021.10665.4.camel-YfaajirXv2244ywRPIzf9A@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Wednesday 03 June 2009, Johannes Berg wrote:
> On Mon, 2009-06-01 at 22:48 +0200, Rafael J. Wysocki wrote:
> > > No, it's now hanging 20 seconds much later, after returning to
> > > userspace :( But the dmesg log still has a hang of ~20.5 seconds just
> > > like before, between two kernel messages...
> > 
> > Hmm.  Can you try to comment out suspend_device_irqs() and resume_device_irqs()
> > in drivers/base/power/main.c and see what happens?
> 
> Oddly, that does seem to help. I'm sure it can't be a solution though :)

Not really. ;-)

Still, something like the (untested) patch below can be.  Can you please give
it a try?

Rafael

---
 kernel/irq/manage.c |   12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

Index: linux-2.6/kernel/irq/manage.c
===================================================================
--- linux-2.6.orig/kernel/irq/manage.c
+++ linux-2.6/kernel/irq/manage.c
@@ -187,9 +187,9 @@ static inline int setup_affinity(unsigne
 void __disable_irq(struct irq_desc *desc, unsigned int irq, bool suspend)
 {
 	if (suspend) {
-		if (!desc->action || (desc->action->flags & IRQF_TIMER))
-			return;
-		desc->status |= IRQ_SUSPENDED;
+		if (desc->action && !(desc->action->flags & IRQF_TIMER))
+			desc->status |= IRQ_SUSPENDED | IRQ_DISABLED;
+		return;
 	}
 
 	if (!desc->depth++) {
@@ -250,8 +250,12 @@ EXPORT_SYMBOL(disable_irq);
 
 void __enable_irq(struct irq_desc *desc, unsigned int irq, bool resume)
 {
-	if (resume)
+	if (resume) {
 		desc->status &= ~IRQ_SUSPENDED;
+		if (!desc->depth)
+			desc->status &= ~IRQ_DISABLED;
+		return;
+	}
 
 	switch (desc->depth) {
 	case 0:
