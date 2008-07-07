From: Pavel Machek <pavel-AlSwsSmVLrQ@public.gmane.org>
Subject: Re: 2.6.26-rc9: Reported regressions from 2.6.25
Date: Mon, 7 Jul 2008 19:37:08 +0200
Message-ID: <20080707173708.GA3000@elf.ucw.cz>
References: <Vu1KV8Wj_GP.A.qW.DzLcIB@albercik> <alpine.LFD.1.10.0807060816070.3016@woody.linux-foundation.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <alpine.LFD.1.10.0807060816070.3016-5CScLwifNT1QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maximilian Engelhardt <maxi-OwNUvPV92VfddJNmlsFzeA@public.gmane.org>, Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, "Paul E. McKenney" <paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, James Bottomley <James.Bottomley-d9PhHud1JfjCXq6kfMZ53/egYHeGw8Jk@public.gmane.org>

Hi!

> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=10919
> > Subject		: [regression] display dimming is slow and laggy - Acer Travelmate 661lci
> > Submitter	: Maximilian Engelhardt <maxi-OwNUvPV92VfddJNmlsFzeA@public.gmane.org>
> > Date		: 2008-06-14 22:31 (23 days old)
> > References	: http://marc.info/?l=linux-kernel&m=121348428828320&w=4
> 
> I wonder if this one could be related. The 'nr_zones' overwriting bug 
> would result in kswapd not reclaiming any memory asynchronously, so the 
> kernel would basically be constantly under a low-memory situation, and 
> processes would be forced to do synchronous reclaim. 
> 
> That, in turn, could easily explain laggy operation, especially if it is 
> something bigger that needs to allocate new memory (not that I know if X 
> dimming needs to, but I could imagine that it does some double buffering 
> or whatever).

Hmm, but that would mean whole system is slow, right?

I'd bet this is ACPI EC problem...
									Pavel
-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html
