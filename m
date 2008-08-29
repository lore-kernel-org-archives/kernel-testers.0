From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: Linux 2.6.27-rc5: System boot regression caused by commit a2bd7274b47124d2fc4dfdb8c0591f545ba749dd
Date: Sat, 30 Aug 2008 00:30:31 +0200
Message-ID: <200808300030.32905.rjw@sisk.pl>
References: <alpine.LFD.1.10.0808281555230.3300@nehalem.linux-foundation.org> <200808292157.24179.rjw@sisk.pl> <alpine.LFD.1.10.0808291434110.3300@nehalem.linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.1.10.0808291434110.3300-nfNrOhbfy2R17+2ddN/4kux8cNe9sq/dYPYVAmT7z5s@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, David Witbrodt <dawitbro-rphTv4pjVZMJGwgDXS7ZQA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Friday, 29 of August 2008, Linus Torvalds wrote:
> 
> On Fri, 29 Aug 2008, Rafael J. Wysocki wrote:
> > 
> > Bisection turned up commit a2bd7274b47124d2fc4dfdb8c0591f545ba749dd as the culprit:
> > 
> > commit a2bd7274b47124d2fc4dfdb8c0591f545ba749dd
> > Author: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Date:   Mon Aug 25 00:56:08 2008 -0700
> > 
> >     x86: fix HPET regression in 2.6.26 versus 2.6.25, check hpet against BAR, v3
> > 
> > Reverting this commit helps.
> 
> Heh, interesting, since we were talking about reverting that one for other 
> reasons entirely.
> 
> See the thread "x86: split e820 reserved entries record to late" (yeah, I 
> know that subject isn't very grammatical or sensible) for some patches 
> worth trying _after_ you've reverted that one.
> 
> Anyway, clearly that commit needs to be reverted regardless, so I'll do 
> the revert. Can you please test the appended test-patch by Yinghai on top 
> of the revert?
> 
> (This is not the final version, but it should be sufficient to be tested)

This works, thanks.

> And if you have the whole dmesg, that would be useful.

dmesg from -rc5 with the offending commit reverted and with the patch
below applied is at:

http://www.sisk.pl/kernel/debug/mainline/2.6.27-rc5/2.6.27-rc5-git.log

Thanks,
Rafael


> ---
> From: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Subject: [PATCH] x86: split e820 reserved entries record to late v3
> Date: Thu, 28 Aug 2008 17:41:29 -0700
> 
> so could let BAR res register at first, or even pnp?
> 
> v2: insert e820 reserve resources before pnp_system_init
> v3: fix merging problem in tip/x86/core
>     please drop the one in tip/x86/core use this one instead
> 
> Signed-off-by: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> 
> ---
>  arch/x86/kernel/e820.c |   20 ++++++++++++++++++--
>  arch/x86/pci/i386.c    |    3 +++
>  include/asm-x86/e820.h |    1 +
>  3 files changed, 22 insertions(+), 2 deletions(-)
> 
> Index: linux-2.6/arch/x86/kernel/e820.c
> ===================================================================
> --- linux-2.6.orig/arch/x86/kernel/e820.c
> +++ linux-2.6/arch/x86/kernel/e820.c
> @@ -1271,13 +1271,15 @@ static inline const char *e820_type_to_s
>  /*
>   * Mark e820 reserved areas as busy for the resource manager.
>   */
> +struct resource __initdata *e820_res;
>  void __init e820_reserve_resources(void)
>  {
>  	int i;
> -	struct resource *res;
>  	u64 end;
> +	struct resource *res;
>  
>  	res = alloc_bootmem_low(sizeof(struct resource) * e820.nr_map);
> +	e820_res = res;
>  	for (i = 0; i < e820.nr_map; i++) {
>  		end = e820.map[i].addr + e820.map[i].size - 1;
>  #ifndef CONFIG_RESOURCES_64BIT
> @@ -1291,7 +1293,8 @@ void __init e820_reserve_resources(void)
>  		res->end = end;
>  
>  		res->flags = IORESOURCE_MEM | IORESOURCE_BUSY;
> -		insert_resource(&iomem_resource, res);
> +		if (e820.map[i].type != E820_RESERVED || res->start < (1ULL<<20))
> +			insert_resource(&iomem_resource, res);
>  		res++;
>  	}
>  
> @@ -1303,6 +1306,19 @@ void __init e820_reserve_resources(void)
>  	}
>  }
>  
> +void __init e820_reserve_resources_late(void)
> +{
> +	int i;
> +	struct resource *res;
> +
> +	res = e820_res;
> +	for (i = 0; i < e820.nr_map; i++) {
> +		if (e820.map[i].type == E820_RESERVED && res->start >= (1ULL<<20))
> +			insert_resource(&iomem_resource, res);
> +		res++;
> +	}
> +}
> +
>  char *__init default_machine_specific_memory_setup(void)
>  {
>  	char *who = "BIOS-e820";
> Index: linux-2.6/arch/x86/pci/i386.c
> ===================================================================
> --- linux-2.6.orig/arch/x86/pci/i386.c
> +++ linux-2.6/arch/x86/pci/i386.c
> @@ -33,6 +33,7 @@
>  #include <linux/bootmem.h>
>  
>  #include <asm/pat.h>
> +#include <asm/e820.h>
>  
>  #include "pci.h"
>  
> @@ -230,6 +231,8 @@ void __init pcibios_resource_survey(void
>  	pcibios_allocate_bus_resources(&pci_root_buses);
>  	pcibios_allocate_resources(0);
>  	pcibios_allocate_resources(1);
> +
> +	e820_reserve_resources_late();
>  }
>  
>  /**
> Index: linux-2.6/include/asm-x86/e820.h
> ===================================================================
> --- linux-2.6.orig/include/asm-x86/e820.h
> +++ linux-2.6/include/asm-x86/e820.h
> @@ -122,6 +122,7 @@ extern void e820_register_active_regions
>  extern u64 e820_hole_size(u64 start, u64 end);
>  extern void finish_e820_parsing(void);
>  extern void e820_reserve_resources(void);
> +extern void e820_reserve_resources_late(void);
>  extern void setup_memory_map(void);
>  extern char *default_machine_specific_memory_setup(void);
>  extern char *machine_specific_memory_setup(void);
> 
> 
> 

