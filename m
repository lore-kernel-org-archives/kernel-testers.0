From: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [PATCH 1/5] mm: Add __GFP_NO_OOM_KILL flag
Date: Thu, 7 May 2009 14:50:41 -0700
Message-ID: <20090507145041.9b59f4eb.akpm@linux-foundation.org>
References: <nY3-4PrO6XH.A.xtB.yw85JB@chimera>
	<200905072218.50782.rjw@sisk.pl>
	<alpine.DEB.2.00.0905071321440.646@chino.kir.corp.google.com>
	<200905072238.14558.rjw@sisk.pl>
	<20090507135615.e7db550d.akpm@linux-foundation.org>
	<alpine.DEB.2.00.0905071417160.24417@chino.kir.corp.google.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.DEB.2.00.0905071417160.24417-X6Q0R45D7oAcqpCFd4KODRPsWskHk0ljAL8bYrjMMd8@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Cc: rjw-KKrjLPT3xs0@public.gmane.org, fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org, pavel-+ZI9xUNit7I@public.gmane.org, torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org, alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Thu, 7 May 2009 14:25:23 -0700 (PDT)
David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org> wrote:

> On Thu, 7 May 2009, Andrew Morton wrote:
> 
> > > > All of your tasks are in D state other than kthreads, right?  That means 
> > > > they won't be in the oom killer (thus no zones are oom locked), so you can 
> > > > easily do this
> > > > 
> > > > 	struct zone *z;
> > > > 	for_each_populated_zone(z)
> > > > 		zone_set_flag(z, ZONE_OOM_LOCKED);
> > > > 
> > > > and then
> > > > 
> > > > 	for_each_populated_zone(z)
> > > > 		zone_clear_flag(z, ZONE_OOM_LOCKED);
> > > > 
> > > > The serialization is done with trylocks so this will never invoke the oom 
> > > > killer because all zones in the allocator's zonelist will be oom locked.
> > > > 
> > > > Why does this not work for you?
> > > 
> > > Well, it might work too, but why are you insisting?  How's it better than
> > > __GFP_NO_OOM_KILL, actually?
> > > 
> > > Andrew, what do you think about this?
> > 
> > I don't think I understand the proposal.  Is it to provide a means by
> > which PM can go in and set a state bit against each and every zone?  If
> > so, that's still a global boolean, only messier.
> > 
> 
> Why can't it be global while preallocating memory for hibernation since 
> nothing but kthreads could allocate at this point and if the system is oom 
> then the oom killer wouldn't be able to do anything anyway since it can't 
> kill them?

- globals are bad

- the standard way of controlling memory allocator behaviour is via
  the gfp_t.  Bypassing that is an unusual step and needs a higher
  level of justification, which I'm not seeing here.

- if we do this via an unusual global, we reduce the chances that
  another subsytem could use the new feature.

  I don't know what subsytem that might be, but I bet they're out
  there.  checkpoint-restart, virtual machines, ballooning memory
  drivers, kexec loading, etc.

> The fact is that _all_ allocations here are implicitly __GFP_NO_OOM_KILL 
> whether it specifies it or not since the oom killer would simply kill a 
> task in D state which can't exit or free memory and subsequent allocations 
> would make the oom killer a no-op because there's an eligible task with 
> TIF_MEMDIE set.  The only thing you're saving with __GFP_NO_OOM_KILL is 
> calling the oom killer in a first place and killing an unresponsive task 
> but that would have to happen anyway when thawed since the system is oom 
> (or otherwise lockup for GFP_KERNEL with order < PAGE_ALLOC_COSTLY_ORDER).

All the above is specific to the PM application only, when userspace
tasks are stopped.


It might well end up that stopping userspace (beforehand or before
oom-killing) is a hard requirement for reliably disabling the
oom-killer.  Because the __GFP_NO_OOM_KILL user will be safe, but
random other allocations from other tasks will not be.  So perhaps we
_do_ need a global, and random userspace processes should test and
sleep upon that global if they're heading in the direction of the
oom-killer.
