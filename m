From: Pavel Machek <pavel-AlSwsSmVLrQ@public.gmane.org>
Subject: Re: 2.6.28-rc6: hpet: object is on stack, but not annotated
Date: Thu, 4 Dec 2008 12:16:21 +0100
Message-ID: <20081204111621.GA2466@elf.ucw.cz>
References: <a4423d670811240839q54e6b7afxfc49d28b3ea127cb@mail.gmail.com> <a4423d670811241014n2b2192beh931d374bf063894f@mail.gmail.com> <alpine.LFD.2.00.0811241916560.3301@localhost.localdomain>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.00.0811241916560.3301-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
Cc: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, mingo-X9Un+BFzKDI@public.gmane.org, venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, shaohua.li-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org

On Mon 2008-11-24 19:17:44, Thomas Gleixner wrote:
> On Mon, 24 Nov 2008, Alexander Beregalov wrote:
> 
> > 2008/11/24 Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>:
> > > hpet0: at MMIO 0xfed00000, IRQs 2, 8, 0
> > > hpet0: 3 comparators, 64-bit 14.318180 MHz counter
> > > ODEBUG: object is on stack, but not annotated
> > > ------------[ cut here ]------------
> > > WARNING: at lib/debugobjects.c:251 __debug_object_init+0x2a4/0x352()
> > 
> > Bisected down to 26afe5f2fbf06ea0765aaa316640c4dd472310c0
> > (x86: HPET_MSI Initialise per-cpu HPET timers)
> > 
> > Revert helps
> 
> That's just a warning about a missing annotation. The commit is fine.

You must be using very different metric of what "fine" means than rest
of the world.

(No, introducing WARN_ON()s is not fine; it spams kerneloops.org at least...)

									Pavel
-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html
