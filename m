From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: Re: [Bug #14483] Interrupts enabled after irqrouter_resume - iMac9,1
Date: Tue, 17 Nov 2009 23:42:13 +0100
Message-ID: <200911172342.13077.rjw@sisk.pl>
References: <GUZt44bIwCE.A.vLF.pSdALB@chimera> <xXQGFmujPl.A.-yG.OTdALB@chimera> <20091117060554.GC30852@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1756527AbZKQWkq@vger.kernel.org>
In-Reply-To: <20091117060554.GC30852@elte.hu>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Ingo Molnar <mingo@elte.hu>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Justin Mattock <justinmattock@gmail.com>, Martin Schwidefsky <schwidefsky@de.ibm.com>, Thomas Gleixner <tglx@linutronix.de>

On Tuesday 17 November 2009, Ingo Molnar wrote:
> 
> * Rafael J. Wysocki <rjw@sisk.pl> wrote:
> 
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.31.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14483
> > Subject		: Interrupts enabled after irqrouter_resume - iMac9,1
> > Submitter	: Justin Mattock <justinmattock@gmail.com>
> > Date		: 2009-10-25 19:58 (23 days old)
> > References	: http://marc.info/?l=linux-kernel&m=125650070420168&w=4
> 
> Looks like a suspend bug, not an irq bug. The new warnings in the 
> suspend/resume code might have triggered an old bug in that particular 
> driver.

That's quite possible, although that's rather core code than a driver.

Anyway, I haven't been able to find the bug in there so far.

Thanks,
Rafael
