From: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Subject: Re: [Bug #12608] 2.6.29-rc powerpc G5 Xorg legacy_mem regression
Date: Sat, 7 Feb 2009 15:15:20 -0800
Message-ID: <200902071515.20560.jbarnes@virtuousgeek.org>
References: <kkuKoQJIW-D.A.61C.auYiJB@chimera> <200902061445.11379.jbarnes@virtuousgeek.org> <1233975910.31963.56.camel@pasglop>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1233975910.31963.56.camel@pasglop>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
Cc: Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Friday, February 6, 2009 7:05 pm Benjamin Herrenschmidt wrote:
> On Fri, 2009-02-06 at 14:45 -0800, Jesse Barnes wrote:
> > +    if (Base <= 1024*1024) {
> > +        /* Try legacy_mem (may not be available or implemented) */
> > +        if ((fd = linuxOpenLegacy(dev, "legacy_mem")) < 0) {
> > +            addr = mmap(NULL, Size, PROT_READ|PROT_WRITE, MAP_SHARED,
> > fd, Base); +            close(fd);
> > +            if (addr && addr != MAP_FAILED)
> > +                return addr;
> > +        }
> >      }
> > -    return addr;
> > +
> > +    /* Fall back to old method if legacy_mem fails or Base >= 1M */
> > +    return linuxMapPci(ScreenNum, Flags, dev, Base, Size,
> > PCIIOC_MMAP_IS_MEM); }
>
> I don't like the fallback if legacy_mem exists and returns an error,
> that's an indication that legacy memory is -not- available and thus
> whatever 'fallback' X will try (supposedly using /dev/mem) will be
> horribly broken and will probably end up scribbling all over system
> memory :-)

Yeah, but unless we fix all the callers (and possibly their callers), not 
falling back will keep X from starting...

-- 
Jesse Barnes, Intel Open Source Technology Center
