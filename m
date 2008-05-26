From: Cyrill Gorcunov <gorcunov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [REGRESSION][BISECTED][X86] next-20080526 hangs on boot
Date: Mon, 26 May 2008 23:44:01 +0400
Message-ID: <20080526194401.GJ7305@cvg>
References: <g1eg2q$81q$1@ger.gmane.org> <20080526161623.GC7305@cvg> <g1f230$7bl$1@ger.gmane.org> <g1f3ht$b9g$1@ger.gmane.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:received:date:from:to:cc:subject:message-id:references:mime-version:content-type:content-disposition:in-reply-to:user-agent;
        bh=uNnAwGV/P+4fGE07eb2FokU9Y4I2HiYnsoL6hbuabeo=;
        b=wvTQxmutcZmCArktyBcUEuckwy9WudOJEfIGX1gMshnFSNGKtCDnki5FPvsBBQkyE9ETEwnHa8Rxtn9MkeEptk2wq2BPsvOUMrFlpkisp/T1IlEw993B6kdFkdzGDWIfmh/X2264ej2xPBc4L/oX4APQf8Zf9Ga9EchpWoZfn/w=
Content-Disposition: inline
In-Reply-To: <g1f3ht$b9g$1@ger.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Sitsofe Wheeler <sitsofe-/E1597aS9LQAvxtiuMwx3w@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

[Sitsofe Wheeler - Mon, May 26, 2008 at 08:36:54PM +0100]
| <posted & mailed>
| 
| Sitsofe Wheeler wrote:
| 
| > Cyrill Gorcunov wrote:
| > 
| >> [Sitsofe Wheeler - Mon, May 26, 2008 at 03:04:54PM +0100]
| >> | When using a 32 bit linux-next-20080526 the bootup process will hang at
| >> | a random point (not even sysrq helps) with no additional output on the
| >> | screen (whereas linux-next-20080523 did boot). Mysteriously, booting
| >> | with nmi_watchdog=2 allows the boot to finish (booting with
| >> | nmi_watchdog=1 still stalls). I have bisected it down to commit
| >> | [d1b946b97d71423f365fa797d1428e1847c0bec1]:
| >>
| >> Hi, so it helps by reverting only that commit? I mean all further commits
| >> are still appiled?
| > 
| > Ah that I hadn't tested. I believe I might need to revert
| > 4b82b277707a39b97271439c475f186f63ec4692 too if later commits are applied
| > (but I'm still testing)
| > 
| >> and, btw, could you post your config, please?
| > 
| > http://sucs.org/~sits/test/config-20080526.txt
| 
| OK applying the following patch (which is more or less a revert of 
| [4b82b277707a39b97271439c475f186f63ec4692]) resolves the problem:
| 
| diff --git a/arch/x86/kernel/nmi.c b/arch/x86/kernel/nmi.c
| index d99ee8a..c55519c 100644
| --- a/arch/x86/kernel/nmi.c
| +++ b/arch/x86/kernel/nmi.c
| @@ -480,8 +480,12 @@ int proc_nmi_enabled(struct ctl_table *table, int write, struct file *file,
|                 return -EIO;
|         }
|  
| -       /* if nmi_watchdog is not set yet, then set it */
| -       nmi_watchdog_default();
| +       if (nmi_watchdog == NMI_DEFAULT) {
| +               if (lapic_watchdog_ok())
| +                       nmi_watchdog = NMI_LOCAL_APIC;
| +               else
| +                       nmi_watchdog = NMI_IO_APIC;
| +       }
|  
|         if (nmi_watchdog == NMI_LOCAL_APIC) {
|                 if (nmi_watchdog_enabled)
| diff --git a/include/asm-x86/nmi.h b/include/asm-x86/nmi.h
| index 1e8f34d..7cd5b6a 100644
| --- a/include/asm-x86/nmi.h
| +++ b/include/asm-x86/nmi.h
| @@ -38,9 +38,11 @@ static inline void unset_nmi_pm_callback(struct pm_dev *dev)
|  
|  #ifdef CONFIG_X86_64
|  extern void default_do_nmi(struct pt_regs *);
| +extern void nmi_watchdog_default(void);
| +#else
| +#define nmi_watchdog_default() do {} while (0)
|  #endif
|  
| -extern void nmi_watchdog_default(void);
|  extern void die_nmi(char *str, struct pt_regs *regs, int do_panic);
|  extern int check_nmi_watchdog(void);
|  extern int nmi_watchdog_enabled; 
| 
| The removal of extern void nmi_watchdog_default(void) and the inclusion
| of #define nmi_watchdog_default() do {} while (0) look suspicious (why
| would nmi_watchdog_default() need to be an infinite loop on 32 bit
| systems?).
| 
| -- 
| Sitsofe | http://sucs.org/~sits/
| 
| 

Thanks a lot! Will take a look tomorrow!

And there was NOT an infinite loop - look more closer on that string
do { } while (0) - only *one* iteration is going (well, gcc will eliminate
it at all by optimization). Anyway, it was while (0), not while (1),
so it is ok ;)

		- Cyrill -
--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
