From: Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
Subject: Re: [Bug #12608] 2.6.29-rc powerpc G5 Xorg legacy_mem regression
Date: Fri, 06 Feb 2009 16:40:36 +1100
Message-ID: <1233898836.4612.116.camel@pasglop>
References: <kkuKoQJIW-D.A.61C.auYiJB@chimera>
	 <Pine.LNX.4.64.0902051713550.1445@blonde.anvils>
	 <1233867944.4612.104.camel@pasglop>
	 <200902051433.23294.jbarnes@virtuousgeek.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200902051433.23294.jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>

On Thu, 2009-02-05 at 14:33 -0800, Jesse Barnes wrote:

> One option there would be to provide the file but just use anonymous memory to 
> back it.  X will happily think it's messing with legacy VGA memory, but it 
> shouldn't matter that it's not actually affecting hw.

What about this (untested) patch ?

powerpc/pci: mmap anonymous memory when legacy_mem doesn't exist

The new legacy_mem file in sysfs is causing problems with X on machines
that don't support legacy memory access. The way I initially implemented
it, we would fail with -ENXIO when trying to mmap it, thus exposing to
X that we do support the API but there is no legacy memory.

Unfortunately, X poor error handling is causing it to fail to start when
it gets this error.

This implements a workaround hack that instead maps anonymous memory
instead (using shmem if VM_SHARED is set, just like /dev/zero does).

Signed-off-by: Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
---

Index: linux-work/arch/powerpc/kernel/pci-common.c
===================================================================
--- linux-work.orig/arch/powerpc/kernel/pci-common.c	2009-02-06 16:23:36.000000000 +1100
+++ linux-work/arch/powerpc/kernel/pci-common.c	2009-02-06 16:30:32.000000000 +1100
@@ -561,8 +561,21 @@ int pci_mmap_legacy_page_range(struct pc
 		 (unsigned long long)(offset + size - 1));
 
 	if (mmap_state == pci_mmap_mem) {
-		if ((offset + size) > hose->isa_mem_size)
-			return -ENXIO;
+		/* Hack alert !
+		 *
+		 * Because X is lame and can fail starting if it gets an error trying
+		 * to mmap legacy_mem (instead of just moving on without legacy memory
+		 * access) we fake it here by giving it anonymous memory, effectively
+		 * behaving just like /dev/zero
+		 */
+		if ((offset + size) > hose->isa_mem_size) {
+			printk(KERN_DEBUG
+			       "Process %s (pid:%d) mapped non-existing PCI legacy memory for 0%04x:%02x\n",
+			       current->comm, current->pid, pci_domain_nr(bus), bus->number);
+			if (vma->vm_flags & VM_SHARED)
+				return shmem_zero_setup(vma);
+			return 0;
+		}
 		offset += hose->isa_mem_phys;
 	} else {
 		unsigned long io_offset = (unsigned long)hose->io_base_virt - _IO_BASE;

