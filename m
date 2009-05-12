From: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [PATCH 1/5] mm: Add __GFP_NO_OOM_KILL flag
Date: Mon, 11 May 2009 17:11:11 -0700
Message-ID: <20090511171111.9d74e4c0.akpm@linux-foundation.org>
References: <nY3-4PrO6XH.A.xtB.yw85JB@chimera>
	<200905120044.37342.rjw@sisk.pl>
	<20090511160704.e1fa2512.akpm@linux-foundation.org>
	<200905120128.16780.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200905120128.16780.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org, fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org, pavel-+ZI9xUNit7I@public.gmane.org, torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org, alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org

On Tue, 12 May 2009 01:28:15 +0200
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> On Tuesday 12 May 2009, Andrew Morton wrote:
> > On Tue, 12 May 2009 00:44:36 +0200
> > "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> > 
> > > Which means this patch:
> > > http://marc.info/?l=linux-kernel&m=124165031723627 (it also is my favourite
> > > one).
> > 
> > ho hum, I could live with that ;)
> > 
> > Would it make sense to turn it into something more general?  Instead of
> > "tasks_frozen/processes_are_frozen()", present it as
> > "oom_killer_disabled/oom_killer_is_disabled()"?
> > 
> > That would invite other subsystems to use it, if they want to.  Which
> > might well be a bad thing on their behalf, hard to say..
> 
> I chose the names this way because the variable is defined in the freezer code.
> 
> Alternatively, I can define one in page_alloc.c, add [disable|enable]_oom_killer()
> for manipulating it and call them from the freezer code.  Do you think that
> would be better?

The choice is:

a) put a general oom-killer interface function into the oom-killer
   code, call that from swsusp.

b) put a swsusp-specific change into the oom-killer, call that from swsusp.


From a cleanliess POV, a) is way better.  But it does need to be a
general function!  If there's some hidden requirement which only makes
the function applicable to swsusp, such as "all tasks must be frozen" then
we'd be kidding ourselves by making it general-looking.

I have a bad feeling that after one week and 12^17 emails, we're back
to your original patch :)
