From: Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>
Subject: Re: [Bug #12608] 2.6.29-rc powerpc G5 Xorg legacy_mem regression
Date: Sat, 7 Feb 2009 00:50:15 +0000 (GMT)
Message-ID: <Pine.LNX.4.64.0902070040240.15875@blonde.anvils>
References: <kkuKoQJIW-D.A.61C.auYiJB@chimera> <200902060849.45851.jbarnes@virtuousgeek.org>
 <Pine.LNX.4.64.0902062205540.5710@blonde.anvils> <200902061445.11379.jbarnes@virtuousgeek.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200902061445.11379.jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Cc: Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Fri, 6 Feb 2009, Jesse Barnes wrote:
> 
> Yeah that should work.  I always hated this code (well most of X actually); we
> could probably clean up the logic a little.  If this works I'll send it
> out to the Xorg list for review.

Yes, thanks for restructuring it, I was rather itching to do so.

With the one small change below which I think you'll approve,
your patch works for me on the G5 - but I've not tested it on
other (x86) machines which were already working.

Hugh

> 
> -- 
> Jesse Barnes, Intel Open Source Technology Center
> 
> diff --git a/hw/xfree86/os-support/bus/linuxPci.c b/hw/xfree86/os-support/bus/linuxPci.c
> index 263fd8f..fa0fc0a 100644
> --- a/hw/xfree86/os-support/bus/linuxPci.c
> +++ b/hw/xfree86/os-support/bus/linuxPci.c
> @@ -471,23 +471,18 @@ xf86MapDomainMemory(int ScreenNum, int Flags, struct pci_device *dev,
>      int fd = -1;
>      pointer addr;
>  
> -    /*
> -     * We use /proc/bus/pci on non-legacy addresses or if the Linux sysfs
> -     * legacy_mem interface is unavailable.
> -     */
> -    if ((Base > 1024*1024) || ((fd = linuxOpenLegacy(dev, "legacy_mem")) < 0))
> -	return linuxMapPci(ScreenNum, Flags, dev, Base, Size,
> -			   PCIIOC_MMAP_IS_MEM);
> -    else
> -	addr = mmap(NULL, Size, PROT_READ|PROT_WRITE, MAP_SHARED, fd, Base);
> -
> -    if (fd >= 0)
> -	close(fd);
> -    if (addr == NULL || addr == MAP_FAILED) {
> -	perror("mmap failure");
> -	FatalError("xf86MapDomainMem():  mmap() failure\n");
> +    if (Base <= 1024*1024) {
> +        /* Try legacy_mem (may not be available or implemented) */
> +        if ((fd = linuxOpenLegacy(dev, "legacy_mem")) < 0) {

                                                         >=

> +            addr = mmap(NULL, Size, PROT_READ|PROT_WRITE, MAP_SHARED, fd, Base);
> +            close(fd);
> +            if (addr && addr != MAP_FAILED)
> +                return addr;
> +        }
>      }
> -    return addr;
> +
> +    /* Fall back to old method if legacy_mem fails or Base >= 1M */
> +    return linuxMapPci(ScreenNum, Flags, dev, Base, Size, PCIIOC_MMAP_IS_MEM);
>  }
>  
>  /**
