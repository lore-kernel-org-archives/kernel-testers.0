From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [PATCH 1/5] mm: Add __GFP_NO_OOM_KILL flag
Date: Fri, 8 May 2009 00:05:43 +0200
Message-ID: <200905080005.44589.rjw@sisk.pl>
References: <nY3-4PrO6XH.A.xtB.yw85JB@chimera> <200905072336.11383.rjw@sisk.pl> <alpine.DEB.2.00.0905071439370.24404@chino.kir.corp.google.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.DEB.2.00.0905071439370.24404-X6Q0R45D7oAcqpCFd4KODRPsWskHk0ljAL8bYrjMMd8@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org, pavel-+ZI9xUNit7I@public.gmane.org, torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org, alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Thursday 07 May 2009, David Rientjes wrote:
> On Thu, 7 May 2009, Rafael J. Wysocki wrote:
> 
> > > The fact is that _all_ allocations here are implicitly __GFP_NO_OOM_KILL 
> > > whether it specifies it or not since the oom killer would simply kill a 
> > > task in D state which can't exit or free memory and subsequent allocations 
> > > would make the oom killer a no-op because there's an eligible task with 
> > > TIF_MEMDIE set.  The only thing you're saving with __GFP_NO_OOM_KILL is 
> > > calling the oom killer in a first place and killing an unresponsive task 
> > 
> > That's exactly what we're trying to do.  We don't want tasks to get killed just
> > because we're freeing memory for hibernation image.
> > 
> 
> Then, again, why can't you just lock out the oom killer as I suggested if 
> __GFP_NO_OOM_KILL is actually implied for all allocations when 
> preallocating?  It prevents adding an unnecessary gfp flag, sprinkling it 
> around in the hibernation code,

In one place really.

> and a comment would actually explain why it's the right thing to do (i.e. no
> other threads other than kthreads could possibly be executing the oom killer
> and if they are oom then we'll have to kill a userspace task anyway when
> thawed).

Quite frankly, I prefer my freezer-based patch to this.  I'm not really
inclined to fiddle with the mm internals from within snapshot.c .

Still, I trust the Andrew's experience and that's why I'm going to try the
__GFP_NO_OOM_KILL first, as I already said.  If there is a problem with it,
I'm going to use the freezer-based approach.
 
> > > but that would have to happen anyway when thawed since the system is oom 
> > > (or otherwise lockup for GFP_KERNEL with order < PAGE_ALLOC_COSTLY_ORDER).
> > 
> > Are you sure?  The image memory is freed before thawing tasks.
> > 
> 
> If you try to allocate any non-__GFP_NORETRY memory such as GFP_KERNEL 
> with order < PAGE_ALLOC_COSTLY_ORDER and direct reclaim cannot free memory 
> (and the oom killer is implicitly a no-op whether you specify 
> __GFP_NO_OOM_KILL or not), then you could loop endlessly in the page 
> allocator.  When allocating GFP_IMAGE you need to ensure that can't happen 
> and __GFP_NORETRY may not be your best option because it could fail 
> unnecessarily when reclaim could have helped.

I'm really unsure what you mean and how that is related to your previous remark
about what's going to happen after the thawing of tasks.

Thanks,
Rafael
