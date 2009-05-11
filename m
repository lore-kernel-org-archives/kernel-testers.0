From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [PATCH 1/5] mm: Add __GFP_NO_OOM_KILL flag
Date: Tue, 12 May 2009 00:44:36 +0200
Message-ID: <200905120044.37342.rjw@sisk.pl>
References: <nY3-4PrO6XH.A.xtB.yw85JB@chimera> <200905100103.23815.rjw@sisk.pl> <alpine.DEB.2.00.0905111249170.23739@chino.kir.corp.google.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.DEB.2.00.0905111249170.23739-X6Q0R45D7oAcqpCFd4KODRPsWskHk0ljAL8bYrjMMd8@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org, pavel-+ZI9xUNit7I@public.gmane.org, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org, alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>

On Monday 11 May 2009, David Rientjes wrote:
> On Sun, 10 May 2009, Rafael J. Wysocki wrote:
> 
> > > All order 0 allocations are implicitly __GFP_NOFAIL and will loop 
> > > endlessly unless they can't block.  So if you want to simply prohibit the 
> > > oom killer from being invoked and not change the retry behavior, setting 
> > > ZONE_OOM_LOCKED for all zones will do that.  If your machine hangs, it 
> > > means nothing can be reclaimed and you can't free memory via oom killing, 
> > > so there's nothing else the page allocator can do.
> > 
> > But I want it to give up in this case instead of looping forever.
> > 
> > Look.  I have a specific problem at hand that I want to solve and the approach
> > you suggested _clearly_ _doesn't_ _work_.  I have also tried to explain to you
> > why it doesn't work, but you're ingnoring it, so I really don't know what else
> > I can say.
> > 
> > OTOH, the approach suggested by Andrew _does_ _work_ regardless of your
> > opinion about it.  It's been tested and it's done the job 100% of the time.  Go
> > figure.  And please stop beating the dead horse.
> > 
> 
> Which implementation are you talking about?  You've had several:
> 
> 	http://marc.info/?l=linux-kernel&m=124121728429113
> 	http://marc.info/?l=linux-kernel&m=124131049223733
> 	http://marc.info/?l=linux-kernel&m=124165031723627
> 	http://marc.info/?l=linux-kernel&m=124146681311494

The second one.  The first one was too much code, the third one was not the
Andrew's favourite and the last one is wrong, because it changes the behaviour
related to __GFP_NORETRY incorrectly.

> The issue with your approach is that it doesn't address the problem; the 
> problem is _not_ specific to individual page allocations it is specific to 
> the STATE OF THE MACHINE.

Yes, it is, but have you followed my discussion with Andrew?

> If all userspace tasks are uninterruptible when trying to reserve this 
> memory and, thus, oom killing is negligent and not going to help, that 
> needs to be addressed in the page allocator.  It is a bug for the 
> allocator to continuously retry the allocation unless __GFP_NOFAIL is set 
> if oom killing will not free memory.

That was my argument in the discussion with Andrew, actually.

> Adding a new __GFP_NO_OOM_KILL flag to address that isn't helpful since it 
> has nothing at all to do with the specific allocation.  It may certainly 
> be the easiest way to implement your patchset without doing VM work, but 
> it's not going to fix the problem for others.

I agree, but I didn't even want to fix the problem with OOM killing after
freezing tasks.

> I just posted a patch series[*] that would fix this problem for you 
> without even locking out the oom killer or adding any unnecessary gfp 
> flags.  It is based on mmotm since it has Mel's page allocator speedups.  
> Any change you do to the allocator at this point should be based on that 
> to avoid nasty merge conflicts later, so try my series out and see how it 
> works.
> 
> Now, I won't engage in your personal attacks because (i) nobody else 
> cares, and (ii) it's not going to be productive.

My previous message wasn't meant to be personal, so I'm sorry if it sounded
like it was.

> I'll let my code do the talking.
>
>  [*] http://lkml.org/lkml/2009/5/10/118

OK, so the patch is http://lkml.org/lkml/2009/5/10/127, isn't it?  I'm not
sure it will fly, given the Andrew's reply.

In fact the problem is that processes in D state are only legitimately going
to stay in this state when they are _frozen_.  So, the right approach seems to
be to avoid calling the OOM killer at all after freezing processes and instead
fail the allocations that would have triggered it.  Which means this patch:
http://marc.info/?l=linux-kernel&m=124165031723627 (it also is my favourite
one).

But Andrew says that it's better to have a __GFP_NO_OOM_KILL flag instead,
because someone else might presumably use it in future for something (I have
no idea who that might be, but whatever) and _surely_ no one else will use a
global switch related to the freezer.

Still _I_ think that since the freezer is the source of the problematic
situation (all tasks are persistently unkillable), using it should change the
behaviour of the page allocator, so that the OOM killer is not activated
while processes are frozen.  And in fact that should not depend on what flags
are used by whoever tries to allocate memory.

Thanks,
Rafael
