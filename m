From: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [PATCH 1/5] mm: Add __GFP_NO_OOM_KILL flag
Date: Thu, 7 May 2009 13:56:15 -0700
Message-ID: <20090507135615.e7db550d.akpm@linux-foundation.org>
References: <nY3-4PrO6XH.A.xtB.yw85JB@chimera>
	<200905072218.50782.rjw@sisk.pl>
	<alpine.DEB.2.00.0905071321440.646@chino.kir.corp.google.com>
	<200905072238.14558.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200905072238.14558.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org, fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org, pavel-+ZI9xUNit7I@public.gmane.org, torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org, alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Thu, 7 May 2009 22:38:13 +0200
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> On Thursday 07 May 2009, David Rientjes wrote:
> > On Thu, 7 May 2009, Rafael J. Wysocki wrote:
> > 
> > > OK, let's try with __GFP_NO_OOM_KILL first.  If there's too much disagreement,
> > > I'll use the freezer-based approach instead.
> > > 
> > 
> > Third time I'm going to suggest this, and I'd like a response on why it's 
> > not possible instead of being ignored.
> > 
> > All of your tasks are in D state other than kthreads, right?  That means 
> > they won't be in the oom killer (thus no zones are oom locked), so you can 
> > easily do this
> > 
> > 	struct zone *z;
> > 	for_each_populated_zone(z)
> > 		zone_set_flag(z, ZONE_OOM_LOCKED);
> > 
> > and then
> > 
> > 	for_each_populated_zone(z)
> > 		zone_clear_flag(z, ZONE_OOM_LOCKED);
> > 
> > The serialization is done with trylocks so this will never invoke the oom 
> > killer because all zones in the allocator's zonelist will be oom locked.
> > 
> > Why does this not work for you?
> 
> Well, it might work too, but why are you insisting?  How's it better than
> __GFP_NO_OOM_KILL, actually?
> 
> Andrew, what do you think about this?

I don't think I understand the proposal.  Is it to provide a means by
which PM can go in and set a state bit against each and every zone?  If
so, that's still a global boolean, only messier.
