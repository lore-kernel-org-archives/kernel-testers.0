From: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Subject: Re: [PATCH 1/5] mm: Add __GFP_NO_OOM_KILL flag
Date: Thu, 7 May 2009 13:25:06 -0700 (PDT)
Message-ID: <alpine.DEB.2.00.0905071321440.646@chino.kir.corp.google.com>
References: <nY3-4PrO6XH.A.xtB.yw85JB@chimera> <200905072133.48917.rjw@sisk.pl> <20090507130202.34cbe37a.akpm@linux-foundation.org> <200905072218.50782.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1241727912; bh=pW+fBjpTnRQbWlSkm+woTQyzy9o=;
	h=DomainKey-Signature:Date:From:X-X-Sender:To:cc:Subject:
	 In-Reply-To:Message-ID:References:User-Agent:MIME-Version:
	 Content-Type:X-System-Of-Record; b=GNu+xkV10WUttog5f/AZMlAleSsERMF
	wThf63yRzq3UxlMpWOmHZvkZUZixM6gtGrIfY+JMo+GK2AvLb7BZ+xg==
In-Reply-To: <200905072218.50782.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org, pavel-+ZI9xUNit7I@public.gmane.org, torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org, alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Thu, 7 May 2009, Rafael J. Wysocki wrote:

> OK, let's try with __GFP_NO_OOM_KILL first.  If there's too much disagreement,
> I'll use the freezer-based approach instead.
> 

Third time I'm going to suggest this, and I'd like a response on why it's 
not possible instead of being ignored.

All of your tasks are in D state other than kthreads, right?  That means 
they won't be in the oom killer (thus no zones are oom locked), so you can 
easily do this

	struct zone *z;
	for_each_populated_zone(z)
		zone_set_flag(z, ZONE_OOM_LOCKED);

and then

	for_each_populated_zone(z)
		zone_clear_flag(z, ZONE_OOM_LOCKED);

The serialization is done with trylocks so this will never invoke the oom 
killer because all zones in the allocator's zonelist will be oom locked.

Why does this not work for you?
