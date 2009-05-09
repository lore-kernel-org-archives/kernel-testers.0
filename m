From: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Subject: Re: [PATCH 1/5] mm: Add __GFP_NO_OOM_KILL flag
Date: Sat, 9 May 2009 15:39:56 -0700 (PDT)
Message-ID: <alpine.DEB.2.00.0905091536250.6272@chino.kir.corp.google.com>
References: <nY3-4PrO6XH.A.xtB.yw85JB@chimera> <200905090155.44635.rjw@sisk.pl> <alpine.DEB.2.00.0905091415310.1124@chino.kir.corp.google.com> <200905092337.39906.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1241908804; bh=P88styYVldS4YEjF0q1AzCda1NA=;
	h=DomainKey-Signature:Date:From:X-X-Sender:To:cc:Subject:
	 In-Reply-To:Message-ID:References:User-Agent:MIME-Version:
	 Content-Type:X-System-Of-Record; b=QWIkqT6SapW9tKE5/G8sa+ozZtkh7gL
	YTuV/g42KNH9/cLDlRw/zZYhrHaayCWl1LqyehbqrY+NWDSueSb3G4A==
In-Reply-To: <200905092337.39906.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org, pavel-+ZI9xUNit7I@public.gmane.org, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org, alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>

On Sat, 9 May 2009, Rafael J. Wysocki wrote:

> > This has been changed in the latest mmotm with Mel's page alloactor 
> > patches (and I think yours should be based on mmotm).  Specifically, 
> > page-allocator-break-up-the-allocator-entry-point-into-fast-and-slow-paths.patch.
> > 
> > Before his patchset, zonelists that had ZONE_OOM_LOCKED set for at least 
> > one of their zones would unconditionally goto restart.  Now, if
> > order > PAGE_ALLOC_COSTLY_ORDER, it gives up and returns NULL.  Otherwise, 
> > it does goto restart.
> > 
> > So if your allocation has order > PAGE_ALLOC_COSTLY_ORDER,
> 
> It doesn't.  All of my allocations are of order 0.
> 

All order 0 allocations are implicitly __GFP_NOFAIL and will loop 
endlessly unless they can't block.  So if you want to simply prohibit the 
oom killer from being invoked and not change the retry behavior, setting 
ZONE_OOM_LOCKED for all zones will do that.  If your machine hangs, it 
means nothing can be reclaimed and you can't free memory via oom killing, 
so there's nothing else the page allocator can do.
