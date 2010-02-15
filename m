From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: 2.6.33-rc8 regression: irq11: nobody cared, during yenta registration
Date: Mon, 15 Feb 2010 23:15:34 +0100
Message-ID: <201002152315.34829.rjw@sisk.pl>
References: <alpine.SOC.1.00.1002141720120.679@math.ut.ee> <201002152048.59832.rjw@sisk.pl> <alpine.SOC.1.00.1002152315580.12096@math.ut.ee>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.SOC.1.00.1002152315580.12096-ptEonEWSGqKptlylMvRsHA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Meelis Roos <mroos-Y27EyoLml9s@public.gmane.org>
Cc: Linux Kernel list <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "H. Peter Anvin" <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

On Monday 15 February 2010, Meelis Roos wrote:
> > > > I have created the Bugzilla entry at http://bugzilla.kernel.org/show_bug.cgi?id=15307
> > > > for your report.
> > > > 
> > > > Peter, Ingo, did we do anything to the interrupt handling between .33-rc5 and .33-rc8?
> > > 
> > > I just retested it and the problem appears even in -rc5 (missed it 
> > > before). Come to think of it, I only tested -rc5 out of dock before.
> > > 
> > > With dock, the problem is there in 2.6.33-rc4-00399-g24bc734.
> > > 
> > > Without dock, even -rc8 is OK, so it only happens docked.
> > > 
> > > Will try to bisect but this takes time because I'm rarely near that 
> > > computer.
> 
> It's even worse - or my memory is, actually.
> 
> With dock, both 2.6.32 and 2.6.31 exhibit the problem, so it's not a 
> recent regression - but the bugzilla entry still holds.
> 
> In fact, googling tells that I reported the issue back in 2006 together 
> with a USB problem that I thought was related, and that has been fixed 
> meanwhile:
> 
> http://lkml.indiana.edu/hypermail/linux/kernel/0607.2/1331.html
> 
> Strange that I haven't noticed it meanwhile.

OK, so let's tentatively regard this as a regression from 2.6.30, although I'm
not really sure that's a regression at all.

Rafael


> 
> 
