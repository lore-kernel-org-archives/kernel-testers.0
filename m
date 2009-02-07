From: Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
Subject: Re: [Bug #12608] 2.6.29-rc powerpc G5 Xorg legacy_mem regression
Date: Sat, 07 Feb 2009 14:05:10 +1100
Message-ID: <1233975910.31963.56.camel@pasglop>
References: <kkuKoQJIW-D.A.61C.auYiJB@chimera>
	 <200902060849.45851.jbarnes@virtuousgeek.org>
	 <Pine.LNX.4.64.0902062205540.5710@blonde.anvils>
	 <200902061445.11379.jbarnes@virtuousgeek.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200902061445.11379.jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Cc: Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Fri, 2009-02-06 at 14:45 -0800, Jesse Barnes wrote:
> +    if (Base <= 1024*1024) {
> +        /* Try legacy_mem (may not be available or implemented) */
> +        if ((fd = linuxOpenLegacy(dev, "legacy_mem")) < 0) {
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

I don't like the fallback if legacy_mem exists and returns an error,
that's an indication that legacy memory is -not- available and thus
whatever 'fallback' X will try (supposedly using /dev/mem) will be
horribly broken and will probably end up scribbling all over system
memory :-)

Ben.

