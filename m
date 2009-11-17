From: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
Subject: Re: [Bug #14483] Interrupts enabled after irqrouter_resume -
 iMac9,1
Date: Wed, 18 Nov 2009 00:07:09 +0100 (CET)
Message-ID: <alpine.LFD.2.00.0911180003070.24119@localhost.localdomain>
References: <GUZt44bIwCE.A.vLF.pSdALB@chimera> <xXQGFmujPl.A.-yG.OTdALB@chimera> <20091117060554.GC30852@elte.hu> <200911172342.13077.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200911172342.13077.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Justin Mattock <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Martin Schwidefsky <schwidefsky-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>, Len Brown <lenb-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Venkatesch Pallipadi <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

On Tue, 17 Nov 2009, Rafael J. Wysocki wrote:

ACPI folks Cc'ed

> On Tuesday 17 November 2009, Ingo Molnar wrote:
> > 
> > * Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> > 
> > > This message has been generated automatically as a part of a report
> > > of recent regressions.
> > > 
> > > The following bug entry is on the current list of known regressions
> > > from 2.6.31.  Please verify if it still should be listed and let me know
> > > (either way).
> > > 
> > > 
> > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14483
> > > Subject		: Interrupts enabled after irqrouter_resume - iMac9,1
> > > Submitter	: Justin Mattock <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > > Date		: 2009-10-25 19:58 (23 days old)
> > > References	: http://marc.info/?l=linux-kernel&m=125650070420168&w=4
> > 
> > Looks like a suspend bug, not an irq bug. The new warnings in the 
> > suspend/resume code might have triggered an old bug in that particular 
> > driver.
> 
> That's quite possible, although that's rather core code than a driver.
> 
> Anyway, I haven't been able to find the bug in there so far.

irqrouter_resume() seems to be solely ACPI code. I have not seen where
it might reenable interrupts, but ACPI folks might shed some light on
that.

Thanks,

	tglx
