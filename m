From: Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [REGRESSION][BISECTED][X86] next-20080526 hangs on boot
Date: Wed, 28 May 2008 01:50:42 +0300
Message-ID: <20080527225042.GG11310@cs181133002.pp.htv.fi>
References: <g1eg2q$81q$1@ger.gmane.org> <20080526161623.GC7305@cvg> <g1f230$7bl$1@ger.gmane.org> <g1f3ht$b9g$1@ger.gmane.org> <aa79d98a0805262335lf5cd4e1p8f318d45dfe7ff92@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <aa79d98a0805262335lf5cd4e1p8f318d45dfe7ff92-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Cyrill Gorcunov <gorcunov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Sitsofe Wheeler <sitsofe-/E1597aS9LQAvxtiuMwx3w@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

On Tue, May 27, 2008 at 10:35:43AM +0400, Cyrill Gorcunov wrote:
> On 5/26/08, Sitsofe Wheeler <sitsofe-/E1597aS9LQAvxtiuMwx3w@public.gmane.org> wrote:
> > <posted & mailed>
> >
> > Sitsofe Wheeler wrote:
> >
> > > Cyrill Gorcunov wrote:
> > >
> > >> [Sitsofe Wheeler - Mon, May 26, 2008 at 03:04:54PM +0100]
> > >> | When using a 32 bit linux-next-20080526 the bootup process will hang at
> > >> | a random point (not even sysrq helps) with no additional output on the
> > >> | screen (whereas linux-next-20080523 did boot). Mysteriously, booting
> > >> | with nmi_watchdog=2 allows the boot to finish (booting with
> > >> | nmi_watchdog=1 still stalls). I have bisected it down to commit
> > >> | [d1b946b97d71423f365fa797d1428e1847c0bec1]:
> > >>
> > >> Hi, so it helps by reverting only that commit? I mean all further commits
> > >> are still appiled?
> > >
> > > Ah that I hadn't tested. I believe I might need to revert
> > > 4b82b277707a39b97271439c475f186f63ec4692 too if later commits are applied
> > > (but I'm still testing)
> > >
> > >> and, btw, could you post your config, please?
> > >
> > > http://sucs.org/~sits/test/config-20080526.txt
> >
> > OK applying the following patch (which is more or less a revert of
> > [4b82b277707a39b97271439c475f186f63ec4692]) resolves the problem:
>...
> 
> Hi Sitsofe, actually I can't imagine how this revert have helped you
> from hang. Newly introduced nmi_watchdog_default() didn't change
> the logic of the code being used before this merge-series.
> 
> Thomas, Ingo, maybe I've overlooked something (hard to believe ;)?
> Only the change is the adding of new call for nmi_watchdog_default()
> which was say 'inlined' before.
>...

arch/x86/kernel/smpboot.c:native_smp_prepare_cpus() also calls
the no longer empty nmi_watchdog_default() on 32bit.

cu
Adrian

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed

--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
