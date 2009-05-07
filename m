From: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [PATCH 1/5] mm: Add __GFP_NO_OOM_KILL flag
Date: Thu, 7 May 2009 11:48:07 -0700
Message-ID: <20090507114807.d7c6d26a.akpm@linux-foundation.org>
References: <nY3-4PrO6XH.A.xtB.yw85JB@chimera>
	<200905060120.35698.rjw@sisk.pl>
	<20090505164028.e9d807a1.akpm@linux-foundation.org>
	<200905072009.53406.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200905072009.53406.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org, fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org, pavel-+ZI9xUNit7I@public.gmane.org, torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org, alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Thu, 7 May 2009 20:09:52 +0200
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> > > > I'm suspecting that hibernation can allocate its pages with
> > > > __GFP_FS|__GFP_WAIT|__GFP_NORETRY|__GFP_NOWARN, and the page allocator
> > > > will dtrt: no oom-killings.
> > > > 
> > > > In which case, processes_are_frozen() is not needed at all?
> > > 
> > > __GFP_NORETRY alone causes it to fail relatively quickly, but I'll try with
> > > the combination.
> > 
> > OK.  __GFP_WAIT is the big hammer.
> 
> Unfortunately it fails too quickly with the combination as well, so it looks
> like we can't use __GFP_NORETRY during hibernation.

hm.

So where do we stand now?

I'm not a big fan of the global application-specific state change
thing.  Something like __GFP_NO_OOM_KILL has a better chance of being
reused by other subsystems in the future, which is a good indicator.
