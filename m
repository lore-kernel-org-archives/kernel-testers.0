From: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [PATCH 1/5] mm: Add __GFP_NO_OOM_KILL flag
Date: Mon, 4 May 2009 12:01:03 -0700
Message-ID: <20090504120103.c516ad18.akpm@linux-foundation.org>
References: <nY3-4PrO6XH.A.xtB.yw85JB@chimera>
	<200905040210.10153.rjw@sisk.pl>
	<alpine.DEB.2.00.0905031734190.24114@chino.kir.corp.google.com>
	<200905041702.23291.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200905041702.23291.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org, fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org, pavel-+ZI9xUNit7I@public.gmane.org, torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org, alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Mon, 4 May 2009 17:02:22 +0200
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> On Monday 04 May 2009, David Rientjes wrote:
> > On Mon, 4 May 2009, Rafael J. Wysocki wrote:
> > 
> > > Index: linux-2.6/mm/page_alloc.c
> > > ===================================================================
> > > --- linux-2.6.orig/mm/page_alloc.c
> > > +++ linux-2.6/mm/page_alloc.c
> > > @@ -1620,7 +1620,8 @@ nofail_alloc:
> > >  		}
> > >  
> > >  		/* The OOM killer will not help higher order allocs so fail */
> > > -		if (order > PAGE_ALLOC_COSTLY_ORDER) {
> > > +		if (order > PAGE_ALLOC_COSTLY_ORDER ||
> > > +				(gfp_mask & __GFP_NO_OOM_KILL)) {
> > >  			clear_zonelist_oom(zonelist, gfp_mask);
> > >  			goto nopage;
> > >  		}
> > 
> > This is inconsistent because __GFP_NO_OOM_KILL now implies __GFP_NORETRY 
> > (the "goto nopage" above), but only for allocations with __GFP_FS set and 
> > __GFP_NORETRY clear.
> 
> Well, what would you suggest?
> 

Did you check whether the existing __GFP_NORETRY will work as-is for
this requirement?
