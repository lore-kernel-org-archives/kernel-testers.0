From: Steven Rostedt <rostedt@goodmis.org>
Subject: Re: [Bug #11996] Tracing framework regression in 2.6.28-rc3
Date: Sun, 16 Nov 2008 17:44:39 -0500 (EST)
Message-ID: <alpine.DEB.1.10.0811161741050.2919@gandalf.stny.rr.com>
References: <VwdsQNEjR_C.A.CiD.9_FIJB@chimera> <Q7OAnAv0V3D.A.GwE.gAGIJB@chimera> <20081117003531.4c8b5679@daedalus.pq.iki.fi>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754665AbYKPWo6@vger.kernel.org>
In-Reply-To: <20081117003531.4c8b5679@daedalus.pq.iki.fi>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Pekka Paalanen <pq@iki.fi>
Cc: Ingo Molnar <mingo@elte.hu>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Andrew Morton <akpm@linux-foundation.org>


On Mon, 17 Nov 2008, Pekka Paalanen wrote:

> On Sun, 16 Nov 2008 17:35:18 +0100 (CET)
> "Rafael J. Wysocki" <rjw@sisk.pl> wrote:
> 
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.27.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11996
> > Subject		: Tracing framework regression in 2.6.28-rc3
> > Submitter	: Pekka Paalanen <pq@iki.fi>
> > Date		: 2008-11-09 10:13 (8 days old)
> > References	: http://marc.info/?l=linux-kernel&m=122624392229317&w=4
> > Handled-By	: Steven Rostedt <rostedt@goodmis.org>
> 
> Steve, Ingo, did you get into an agreement on the patch?
> What should I test?
> 
> I see -rc5 is out, but I didn't spot the fix in the changelog.
> 
> (The ring buffer NULL dereference on resize / unallocated max tracer.)

Ingo's solution was to have the ring_buffer_resize return success on NULL 
buffer being passed in. Although I agree that it should not crash when 
passed a NULL pointer, I feel that a NULL pointer should return a -1 
(failure). The caller of the code (one place in kernel/trace/trace.c) 
could simply check if the buffer was allocated, and if not, simply ignore 
it.

I agree with Ingo that my original solution was too much churn. But the 
simple if statement and "indent" change is what I feel to be the solution, 
not letting the ring buffer return success on NULL pointer.

-- Steve
