From: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [PATCH 1/5] mm: Add __GFP_NO_OOM_KILL flag
Date: Thu, 7 May 2009 16:15:08 -0700
Message-ID: <20090507161508.42f586ef.akpm@linux-foundation.org>
References: <nY3-4PrO6XH.A.xtB.yw85JB@chimera>
	<200905080014.49426.rjw@sisk.pl>
	<20090507153824.df54658c.akpm@linux-foundation.org>
	<200905080050.41973.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200905080050.41973.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org, fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org, pavel-+ZI9xUNit7I@public.gmane.org, torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org, alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Fri, 8 May 2009 00:50:41 +0200
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> On Friday 08 May 2009, Andrew Morton wrote:
> > On Fri, 8 May 2009 00:14:48 +0200
> > "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> > 
> > > IOW, you need to freeze the user space totally before trying to disable the
> > > OOM killer.
> > 
> > Not necessarily.  We only need to take action if a task is about to
> > start oom-killing - presumably by taking a nap.
> > 
> > If a process is sitting there happily computing pi then we can leave it
> > running.
> 
> Well, the point is we don't really know what the task is going to do next.
> Is it going to continue computing pi, or is it going to execl(huge_binary), for
> example?
> 
> If we knew what tasks were going to do in advance, the whole freezing wouldn't
> really be necessary. :-)

argh.  Third time:

- if the task is computing pi, let it do so.

- if the task tries to allocate memory and succeeds, let it proceed.

- if the task tries to allocate memory and fails and then tries to invoke
  the oom-killer, stop the task.
