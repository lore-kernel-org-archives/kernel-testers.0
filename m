From: Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
Subject: Re: [Bug #12608] 2.6.29-rc powerpc G5 Xorg legacy_mem regression
Date: Sat, 07 Feb 2009 13:51:12 +1100
Message-ID: <1233975072.31963.55.camel@pasglop>
References: <kkuKoQJIW-D.A.61C.auYiJB@chimera>
	 <Pine.LNX.4.64.0902051713550.1445@blonde.anvils>
	 <1233867944.4612.104.camel@pasglop>
	 <200902051433.23294.jbarnes@virtuousgeek.org>
	 <1233898836.4612.116.camel@pasglop>
	 <Pine.LNX.4.64.0902061248010.14011@blonde.anvils>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Pine.LNX.4.64.0902061248010.14011-XZxpfvf5U/bbmfIwyoSfiQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>


> I still don't understand the point of this legacy_mem file at all,
> and why X should want to mmap it, if it works so well when it's
> thus divorced from reality.  But I won't worry my pretty little
> head over it any further - please don't waste your time trying
> to explain it to me!

VGA memory hole :-) ie, text mode & fonts

Ben.

> Thanks,
> Hugh
> 
> > 
> > Index: linux-work/arch/powerpc/kernel/pci-common.c
> > ===================================================================
> > --- linux-work.orig/arch/powerpc/kernel/pci-common.c	2009-02-06 16:23:36.000000000 +1100
> > +++ linux-work/arch/powerpc/kernel/pci-common.c	2009-02-06 16:30:32.000000000 +1100
> > @@ -561,8 +561,21 @@ int pci_mmap_legacy_page_range(struct pc
> >  		 (unsigned long long)(offset + size - 1));
> >  
> >  	if (mmap_state == pci_mmap_mem) {
> > -		if ((offset + size) > hose->isa_mem_size)
> > -			return -ENXIO;
> > +		/* Hack alert !
> > +		 *
> > +		 * Because X is lame and can fail starting if it gets an error trying
> > +		 * to mmap legacy_mem (instead of just moving on without legacy memory
> > +		 * access) we fake it here by giving it anonymous memory, effectively
> > +		 * behaving just like /dev/zero
> > +		 */
> > +		if ((offset + size) > hose->isa_mem_size) {
> > +			printk(KERN_DEBUG
> > +			       "Process %s (pid:%d) mapped non-existing PCI legacy memory for 0%04x:%02x\n",
> > +			       current->comm, current->pid, pci_domain_nr(bus), bus->number);
> > +			if (vma->vm_flags & VM_SHARED)
> > +				return shmem_zero_setup(vma);
> > +			return 0;
> > +		}
> >  		offset += hose->isa_mem_phys;
> >  	} else {
> >  		unsigned long io_offset = (unsigned long)hose->io_base_virt - _IO_BASE;
