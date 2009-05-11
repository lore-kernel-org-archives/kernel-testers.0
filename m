From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [PATCH 1/5] mm: Add __GFP_NO_OOM_KILL flag
Date: Tue, 12 May 2009 01:28:15 +0200
Message-ID: <200905120128.16780.rjw@sisk.pl>
References: <nY3-4PrO6XH.A.xtB.yw85JB@chimera> <200905120044.37342.rjw@sisk.pl> <20090511160704.e1fa2512.akpm@linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090511160704.e1fa2512.akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org, fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org, pavel-+ZI9xUNit7I@public.gmane.org, torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org, alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org

On Tuesday 12 May 2009, Andrew Morton wrote:
> On Tue, 12 May 2009 00:44:36 +0200
> "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> 
> > Which means this patch:
> > http://marc.info/?l=linux-kernel&m=124165031723627 (it also is my favourite
> > one).
> 
> ho hum, I could live with that ;)
> 
> Would it make sense to turn it into something more general?  Instead of
> "tasks_frozen/processes_are_frozen()", present it as
> "oom_killer_disabled/oom_killer_is_disabled()"?
> 
> That would invite other subsystems to use it, if they want to.  Which
> might well be a bad thing on their behalf, hard to say..

I chose the names this way because the variable is defined in the freezer code.

Alternatively, I can define one in page_alloc.c, add [disable|enable]_oom_killer()
for manipulating it and call them from the freezer code.  Do you think that
would be better?
