From: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [PATCH 1/3] PM: Disable OOM killer during system-wide power
 transitions
Date: Fri, 1 May 2009 16:09:31 -0700
Message-ID: <20090501160931.1dbd2abc.akpm@linux-foundation.org>
References: <nY3-4PrO6XH.A.xtB.yw85JB@chimera>
	<20090422131943.69288af3.akpm@linux-foundation.org>
	<200905020026.19027.rjw@sisk.pl>
	<200905020027.31244.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200905020027.31244.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: pavel-+ZI9xUNit7I@public.gmane.org, torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org, alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org

On Sat, 2 May 2009 00:27:30 +0200
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> From: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
> 
> The OOM killer is not particularly useful during system-wide power
> transitions, so do not use it if such a transition is in progress.
> 

so...  I think what you've done here is to arrange for the page
allocator to return NULL if we're hibernating rather than oom-killing,
yes?

Does the same apply to suspending?  If so, why?

I think this is an OK change, as long as the only thing which is
allocating memory is hibernation itself.  If random processes are still
doing random memory allocations at this time then their failed memory
allocation could be just as fatal as an oom-killing.  Moreso if they're
s/bin/init or whatever.

So is it the case that pm_transition_in_progress() is only true during
the highly-constrained hibernation process?  After everything is frozen?

If so, there are alternatives - the calling process could set
PF_DONT_KILL_ANYONE_FOR_ME, or could pass __GFP_DONT_KILL_ANYONE_FOR_ME. 
Those might be worse alternatives, dunno - I'm just asking probing
questions ;)
