From: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Subject: Re: [PATCH 1/5] mm: Add __GFP_NO_OOM_KILL flag
Date: Mon, 4 May 2009 09:44:46 -0700 (PDT)
Message-ID: <alpine.DEB.2.00.0905040939400.10707@chino.kir.corp.google.com>
References: <nY3-4PrO6XH.A.xtB.yw85JB@chimera> <200905040210.10153.rjw@sisk.pl> <alpine.DEB.2.00.0905031734190.24114@chino.kir.corp.google.com> <200905041702.23291.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1241455491; bh=PDmrg107SuWmEarzfxOjV/2nU+0=;
	h=DomainKey-Signature:Date:From:X-X-Sender:To:cc:Subject:
	 In-Reply-To:Message-ID:References:User-Agent:MIME-Version:
	 Content-Type:X-System-Of-Record; b=ChSKfeLIVvTctuHqc/tKBg/+k7Zc+pm
	Dhns6UFHjdyK5OZObiLkKgJrpVu1r473uccvYua4/iCyqHEEK/ke0TQ==
In-Reply-To: <200905041702.23291.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Wu Fengguang <fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, pavel-+ZI9xUNit7I@public.gmane.org, torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org, alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Mon, 4 May 2009, Rafael J. Wysocki wrote:

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

A couple things:

 - rebase this on mmotm so that it doesn't conflict with Mel Gorman's page
   allocator speedup changes, and

 - avoid the final call to get_page_from_freelist() for 
   !(gfp_mask & __GFP_NO_OOM_KILL) by adding a check for it alongside 
   (gfp_mask & __GFP_FS) and !(gfp_mask & __GFP_NORETRY) because it should
   really only catch parallel oom killings which won't happen in your 
   suspend case since it uses ALLOC_WMARK_HIGH.

The latter is important to avoid unnecessary dependencies among low-level 
__GFP_* flags (although all __GFP_NO_OOM_KILL allocations should really 
all be passing __GFP_NORETRY too to avoid relying too heavily on direct 
reclaim).
