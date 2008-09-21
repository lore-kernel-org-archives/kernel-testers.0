From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Regression] Commit 2344abbcbdb82140050e8be29d3d55e4f6fe860b breaks resume on nx6325
Date: Sun, 21 Sep 2008 21:03:16 +0200
Message-ID: <200809212103.17578.rjw@sisk.pl>
References: <200809210124.30547.rjw@sisk.pl> <200809210132.46504.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200809210132.46504.rjw-KKrjLPT3xs0@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Pavel Machek <pavel-AlSwsSmVLrQ@public.gmane.org>

On Sunday, 21 of September 2008, Rafael J. Wysocki wrote:
> On Sunday, 21 of September 2008, Rafael J. Wysocki wrote:
> > Hi,
> > 
> > Unfortunately resume from suspend to RAM is completely broken on my hp nx6325
> > because of
> > 
> > commit 2344abbcbdb82140050e8be29d3d55e4f6fe860b
> > Author: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
> > Date:   Tue Sep 16 11:32:50 2008 -0700
> > 
> >     clockevents: make device shutdown robust
> > 
> >     Signed-off-by: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
> > 
> > Reverting of this commit makes things work again.
> 
> One more thing, "broken" means that the box doesn't resume (the suspend part
> seems to work correctly) and instead it seems to enter a neverending loop
> that cannot be broken by any means except for the power button, so I think it
> occurs with interrupts disabled.

Update:

After some more debugging I verified that in fact the $subject commit breaks
CPU hotplugging (the 'online' part), so I should be able to get some more
information about what really happens.

This still will be difficult, because the box hangs solid (magic sysrq doesn't
work in this state) almost immediately after a (failing) attempt to 'online' the
previously 'offlined' CPU.

Thanks,
Rafael
