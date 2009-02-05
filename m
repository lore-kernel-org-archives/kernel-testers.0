From: Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
Subject: Re: [Bug #12608] 2.6.29-rc powerpc G5 Xorg legacy_mem regression
Date: Fri, 06 Feb 2009 10:57:52 +1100
Message-ID: <1233878272.4612.106.camel@pasglop>
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
To: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Cc: Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>


> No, sorry, but I just took a look and as long as the various callers can 
> handle it (haven't checked), this patch would work.
> 
> > The second problem is that if I just don't expose the legacy_mem file,
> > then X has no way to know whether the kernel doesn't support the
> > interface or whether the HW doesn't support legacy memory access. So X
> > will fallback to whacking /dev/mem which is even more bogus. At least
> > that's what I remember from last I looked at that part of X code.
> >
> > It should be a trivial fix on X side tho.
> 
> One option there would be to provide the file but just use anonymous memory to 
> back it.  X will happily think it's messing with legacy VGA memory, but it 
> shouldn't matter that it's not actually affecting hw.

That might be the best approach ... I'll have a look.

Ben.

> diff --git a/hw/xfree86/os-support/bus/linuxPci.c 
> b/hw/xfree86/os-support/bus/li
> index 263fd8f..5d2da32 100644
> --- a/hw/xfree86/os-support/bus/linuxPci.c
> +++ b/hw/xfree86/os-support/bus/linuxPci.c
> @@ -484,8 +484,9 @@ xf86MapDomainMemory(int ScreenNum, int Flags, struct 
> pci_dev
>      if (fd >= 0)
>         close(fd);
>      if (addr == NULL || addr == MAP_FAILED) {
> -       perror("mmap failure");
> -       FatalError("xf86MapDomainMem():  mmap() failure\n");
> +       xf86Msg(X_WARNING, "xf86MapDomainMem():  mmap() failure: %s\n",
> +               strerror(errno));
> +       return NULL;
>      }
>      return addr;
>  }
> 
> 
