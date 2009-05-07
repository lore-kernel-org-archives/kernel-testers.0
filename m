From: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Subject: Re: [PATCH 1/5] mm: Add __GFP_NO_OOM_KILL flag
Date: Thu, 7 May 2009 15:16:17 -0700 (PDT)
Message-ID: <alpine.DEB.2.00.0905071508190.2164@chino.kir.corp.google.com>
References: <nY3-4PrO6XH.A.xtB.yw85JB@chimera> <200905072218.50782.rjw@sisk.pl> <alpine.DEB.2.00.0905071321440.646@chino.kir.corp.google.com> <200905072238.14558.rjw@sisk.pl> <20090507135615.e7db550d.akpm@linux-foundation.org>
 <alpine.DEB.2.00.0905071417160.24417@chino.kir.corp.google.com> <20090507145041.9b59f4eb.akpm@linux-foundation.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1241734583; bh=twPnuaT61X3wypnKQfceAekCmRw=;
	h=DomainKey-Signature:Date:From:X-X-Sender:To:cc:Subject:
	 In-Reply-To:Message-ID:References:User-Agent:MIME-Version:
	 Content-Type:X-System-Of-Record; b=QtvyNUWGUmbbCTDzFDILu0gkBmfAEqp
	JnoBtZF2WZv52NimVhRkq+vMUSOi0OaUhf/HjL8PtRY9MPj1IPoysrg==
In-Reply-To: <20090507145041.9b59f4eb.akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: rjw-KKrjLPT3xs0@public.gmane.org, fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org, pavel-+ZI9xUNit7I@public.gmane.org, torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org, alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Thu, 7 May 2009, Andrew Morton wrote:

> - the standard way of controlling memory allocator behaviour is via
>   the gfp_t.  Bypassing that is an unusual step and needs a higher
>   level of justification, which I'm not seeing here.
> 

The standard way of controlling the oom killer behavior for a zone is via 
the ZONE_OOM_LOCKED bit.

> - if we do this via an unusual global, we reduce the chances that
>   another subsytem could use the new feature.
> 
>   I don't know what subsytem that might be, but I bet they're out
>   there.  checkpoint-restart, virtual machines, ballooning memory
>   drivers, kexec loading, etc.
> 

There's two separate issues here: the use of ZONE_OOM_LOCKED to control 
whether or not to invoke the oom killer for a specific zone (which is 
already its only function), and the fact that in this case we're doing it 
for all zones.  It seems like you're concerned with the latter, but the 
distinction in the hibernation case is that no memory freeing would be 
possible as the result of the oom killer for _all_ zones, so it makes 
sense to lock them all out.

> > The fact is that _all_ allocations here are implicitly __GFP_NO_OOM_KILL 
> > whether it specifies it or not since the oom killer would simply kill a 
> > task in D state which can't exit or free memory and subsequent allocations 
> > would make the oom killer a no-op because there's an eligible task with 
> > TIF_MEMDIE set.  The only thing you're saving with __GFP_NO_OOM_KILL is 
> > calling the oom killer in a first place and killing an unresponsive task 
> > but that would have to happen anyway when thawed since the system is oom 
> > (or otherwise lockup for GFP_KERNEL with order < PAGE_ALLOC_COSTLY_ORDER).
> 
> All the above is specific to the PM application only, when userspace
> tasks are stopped.
> 

I'm not arguing that the only way we can ever implement __GFP_NO_OOM_KILL 
is for the entire system: we can set ZONE_OOM_LOCKED for only the zones in 
the zonelist that are passed to the page allocator.  For this particular 
purpose, that is naturally all zones; for other future use cases it may be 
chosen only to lock out the zones we're allowed to allocate from in that 
context.

> It might well end up that stopping userspace (beforehand or before
> oom-killing) is a hard requirement for reliably disabling the
> oom-killer.

Yes, globally, but future use cases may disable only specific zones such 
as with memory hot-remove.
