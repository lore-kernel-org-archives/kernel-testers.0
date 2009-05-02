From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [PATCH 1/3] PM: Disable OOM killer during system-wide power transitions
Date: Sat, 2 May 2009 13:34:50 +0200
Message-ID: <200905021334.51261.rjw@sisk.pl>
References: <nY3-4PrO6XH.A.xtB.yw85JB@chimera> <200905020027.31244.rjw@sisk.pl> <20090501160931.1dbd2abc.akpm@linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090501160931.1dbd2abc.akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: pavel-+ZI9xUNit7I@public.gmane.org, torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org, alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org

On Saturday 02 May 2009, Andrew Morton wrote:
> On Sat, 2 May 2009 00:27:30 +0200
> "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> 
> > From: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
> > 
> > The OOM killer is not particularly useful during system-wide power
> > transitions, so do not use it if such a transition is in progress.
> > 
> 
> so...  I think what you've done here is to arrange for the page
> allocator to return NULL if we're hibernating rather than oom-killing,
> yes?

Yes.

> Does the same apply to suspending?  If so, why?

Because I think it doesn't work anyway.  User space processes are frozen and
effectively in TASK_UNINTERRUPTIBLE, so they won't be killed.

> I think this is an OK change, as long as the only thing which is
> allocating memory is hibernation itself.  If random processes are still
> doing random memory allocations at this time then their failed memory
> allocation could be just as fatal as an oom-killing.  Moreso if they're
> s/bin/init or whatever.

At this point all of the user space tasks are frozen.

> So is it the case that pm_transition_in_progress() is only true during
> the highly-constrained hibernation process?  After everything is frozen?

Yes.

> If so, there are alternatives - the calling process could set
> PF_DONT_KILL_ANYONE_FOR_ME, or could pass __GFP_DONT_KILL_ANYONE_FOR_ME. 
> Those might be worse alternatives, dunno - I'm just asking probing
> questions ;)

Well, the __GFP_DONT_KILL_ANYONE_FOR_ME would be easier to implement.

I don't really think that the freezing of processes plays very well with the
OOM killer, so disabling it altogether after the processes have been frozen
seems reasonable to me.  Still, if you prefer to use
__GFP_DONT_KILL_ANYONE_FOR_ME, it's fine by me.
