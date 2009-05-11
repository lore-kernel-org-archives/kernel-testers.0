From: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Subject: Re: [PATCH 1/5] mm: Add __GFP_NO_OOM_KILL flag
Date: Mon, 11 May 2009 13:11:45 -0700 (PDT)
Message-ID: <alpine.DEB.2.00.0905111249170.23739@chino.kir.corp.google.com>
References: <nY3-4PrO6XH.A.xtB.yw85JB@chimera> <200905092337.39906.rjw@sisk.pl> <alpine.DEB.2.00.0905091536250.6272@chino.kir.corp.google.com> <200905100103.23815.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1242072711; bh=Z5NG1wKzCR30TF1qSRW5Ef1Vtzw=;
	h=DomainKey-Signature:Date:From:X-X-Sender:To:cc:Subject:
	 In-Reply-To:Message-ID:References:User-Agent:MIME-Version:
	 Content-Type:X-System-Of-Record; b=ZD6Sc7orYNi1hdDqWe+moQyCURcDKFx
	ZcfceVvIDIRfhqf9Ug8uyRHKLEwxVUrdo0kuMBtpduScmH77HxQUgZw==
In-Reply-To: <200905100103.23815.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org, pavel-+ZI9xUNit7I@public.gmane.org, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org, alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>

On Sun, 10 May 2009, Rafael J. Wysocki wrote:

> > All order 0 allocations are implicitly __GFP_NOFAIL and will loop 
> > endlessly unless they can't block.  So if you want to simply prohibit the 
> > oom killer from being invoked and not change the retry behavior, setting 
> > ZONE_OOM_LOCKED for all zones will do that.  If your machine hangs, it 
> > means nothing can be reclaimed and you can't free memory via oom killing, 
> > so there's nothing else the page allocator can do.
> 
> But I want it to give up in this case instead of looping forever.
> 
> Look.  I have a specific problem at hand that I want to solve and the approach
> you suggested _clearly_ _doesn't_ _work_.  I have also tried to explain to you
> why it doesn't work, but you're ingnoring it, so I really don't know what else
> I can say.
> 
> OTOH, the approach suggested by Andrew _does_ _work_ regardless of your
> opinion about it.  It's been tested and it's done the job 100% of the time.  Go
> figure.  And please stop beating the dead horse.
> 

Which implementation are you talking about?  You've had several:

	http://marc.info/?l=linux-kernel&m=124121728429113
	http://marc.info/?l=linux-kernel&m=124131049223733
	http://marc.info/?l=linux-kernel&m=124165031723627
	http://marc.info/?l=linux-kernel&m=124146681311494

The issue with your approach is that it doesn't address the problem; the 
problem is _not_ specific to individual page allocations it is specific to 
the STATE OF THE MACHINE.

If all userspace tasks are uninterruptible when trying to reserve this 
memory and, thus, oom killing is negligent and not going to help, that 
needs to be addressed in the page allocator.  It is a bug for the 
allocator to continuously retry the allocation unless __GFP_NOFAIL is set 
if oom killing will not free memory.

Adding a new __GFP_NO_OOM_KILL flag to address that isn't helpful since it 
has nothing at all to do with the specific allocation.  It may certainly 
be the easiest way to implement your patchset without doing VM work, but 
it's not going to fix the problem for others.

I just posted a patch series[*] that would fix this problem for you 
without even locking out the oom killer or adding any unnecessary gfp 
flags.  It is based on mmotm since it has Mel's page allocator speedups.  
Any change you do to the allocator at this point should be based on that 
to avoid nasty merge conflicts later, so try my series out and see how it 
works.

Now, I won't engage in your personal attacks because (i) nobody else 
cares, and (ii) it's not going to be productive.  I'll let my code do the 
talking.

 [*] http://lkml.org/lkml/2009/5/10/118
