From: "Cyrill Gorcunov" <gorcunov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [REGRESSION][BISECTED][X86] next-20080526 hangs on boot
Date: Tue, 27 May 2008 10:35:43 +0400
Message-ID: <aa79d98a0805262335lf5cd4e1p8f318d45dfe7ff92@mail.gmail.com>
References: <g1eg2q$81q$1@ger.gmane.org> <20080526161623.GC7305@cvg>
	 <g1f230$7bl$1@ger.gmane.org> <g1f3ht$b9g$1@ger.gmane.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        bh=5XIGsB0wsSIAqHgFNKLrOHz6JZmFTIvgsb7qXPpPvPM=;
        b=NAAZlFTjC+0B2WgOFIpNYrORIzwD4b7x4xp1QL4u9LRWk4rZwiKEuEjf/IEhF5jLDUCOy+eC4JNwYq8Qv23Gh2ElzYwKX02okoxcU8ib+3LVYbR159REz2gMFRn8fpuVUg6W6rVrR3OJN4tn9ZWDANMbOWwHyx70eg/XNOerAd4=
In-Reply-To: <g1f3ht$b9g$1@ger.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Sitsofe Wheeler <sitsofe-/E1597aS9LQAvxtiuMwx3w@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

On 5/26/08, Sitsofe Wheeler <sitsofe-/E1597aS9LQAvxtiuMwx3w@public.gmane.org> wrote:
> <posted & mailed>
>
> Sitsofe Wheeler wrote:
>
> > Cyrill Gorcunov wrote:
> >
> >> [Sitsofe Wheeler - Mon, May 26, 2008 at 03:04:54PM +0100]
> >> | When using a 32 bit linux-next-20080526 the bootup process will hang at
> >> | a random point (not even sysrq helps) with no additional output on the
> >> | screen (whereas linux-next-20080523 did boot). Mysteriously, booting
> >> | with nmi_watchdog=2 allows the boot to finish (booting with
> >> | nmi_watchdog=1 still stalls). I have bisected it down to commit
> >> | [d1b946b97d71423f365fa797d1428e1847c0bec1]:
> >>
> >> Hi, so it helps by reverting only that commit? I mean all further commits
> >> are still appiled?
> >
> > Ah that I hadn't tested. I believe I might need to revert
> > 4b82b277707a39b97271439c475f186f63ec4692 too if later commits are applied
> > (but I'm still testing)
> >
> >> and, btw, could you post your config, please?
> >
> > http://sucs.org/~sits/test/config-20080526.txt
>
> OK applying the following patch (which is more or less a revert of
> [4b82b277707a39b97271439c475f186f63ec4692]) resolves the problem:
>
> diff --git a/arch/x86/kernel/nmi.c b/arch/x86/kernel/nmi.c
> index d99ee8a..c55519c 100644
> --- a/arch/x86/kernel/nmi.c
> +++ b/arch/x86/kernel/nmi.c
> @@ -480,8 +480,12 @@ int proc_nmi_enabled(struct ctl_table *table, int write, struct file *file,
>                return -EIO;
>        }
>
> -       /* if nmi_watchdog is not set yet, then set it */
> -       nmi_watchdog_default();
> +       if (nmi_watchdog == NMI_DEFAULT) {
> +               if (lapic_watchdog_ok())
> +                       nmi_watchdog = NMI_LOCAL_APIC;
> +               else
> +                       nmi_watchdog = NMI_IO_APIC;
> +       }
>
>        if (nmi_watchdog == NMI_LOCAL_APIC) {
>                if (nmi_watchdog_enabled)
> diff --git a/include/asm-x86/nmi.h b/include/asm-x86/nmi.h
> index 1e8f34d..7cd5b6a 100644
> --- a/include/asm-x86/nmi.h
> +++ b/include/asm-x86/nmi.h
> @@ -38,9 +38,11 @@ static inline void unset_nmi_pm_callback(struct pm_dev *dev)
>
>  #ifdef CONFIG_X86_64
>  extern void default_do_nmi(struct pt_regs *);
> +extern void nmi_watchdog_default(void);
> +#else
> +#define nmi_watchdog_default() do {} while (0)
>  #endif
>
> -extern void nmi_watchdog_default(void);
>  extern void die_nmi(char *str, struct pt_regs *regs, int do_panic);
>  extern int check_nmi_watchdog(void);
>  extern int nmi_watchdog_enabled;
>
> The removal of extern void nmi_watchdog_default(void) and the inclusion
> of #define nmi_watchdog_default() do {} while (0) look suspicious (why
> would nmi_watchdog_default() need to be an infinite loop on 32 bit
> systems?).
>
> --
> Sitsofe | http://sucs.org/~sits/
>

Hi Sitsofe, actually I can't imagine how this revert have helped you
from hang. Newly introduced nmi_watchdog_default() didn't change
the logic of the code being used before this merge-series.

Thomas, Ingo, maybe I've overlooked something (hard to believe ;)?
Only the change is the adding of new call for nmi_watchdog_default()
which was say 'inlined' before.

The thread is started on http://lkml.org/lkml/2008/5/26/146
--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
