From: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [PATCH 1/5] mm: Add __GFP_NO_OOM_KILL flag
Date: Tue, 5 May 2009 15:37:39 -0700
Message-ID: <20090505153739.2cc9d244.akpm@linux-foundation.org>
References: <nY3-4PrO6XH.A.xtB.yw85JB@chimera>
	<200905050023.38064.rjw@sisk.pl>
	<alpine.DEB.2.00.0905041735590.24101@chino.kir.corp.google.com>
	<200905060019.36542.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200905060019.36542.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org, fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org, pavel-+ZI9xUNit7I@public.gmane.org, torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org, alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Wed, 6 May 2009 00:19:35 +0200
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> > > +			&& !processes_are_frozen()) {
> > >  		if (!try_set_zone_oom(zonelist, gfp_mask)) {
> > >  			schedule_timeout_uninterruptible(1);
> > >  			goto restart;
> > 
> > Cool, that looks like the semantics of __GFP_NO_OOM_KILL without requiring 
> > a new gfp flag.  Thanks.
> 
> Well, you're welcome.
> 
> BTW, I think that Andrew was actually right when he asked if I checked whether
> the existing __GFP_NORETRY would work as-is for __GFP_FS set and
> __GFP_NORETRY unset.  Namely, in that case we never reach the code before
> nopage: that checks __GFP_NORETRY, do we?
> 
> So I think we shouldn't modify the 'else if' condition above and check for
> !processes_are_frozen() at the beginning of the block below.

Confused.

I'm suspecting that hibernation can allocate its pages with
__GFP_FS|__GFP_WAIT|__GFP_NORETRY|__GFP_NOWARN, and the page allocator
will dtrt: no oom-killings.

In which case, processes_are_frozen() is not needed at all?
