From: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Subject: Re: [PATCH 1/5] mm: Add __GFP_NO_OOM_KILL flag
Date: Thu, 7 May 2009 13:40:29 -0700 (PDT)
Message-ID: <alpine.DEB.2.00.0905071337400.6598@chino.kir.corp.google.com>
References: <nY3-4PrO6XH.A.xtB.yw85JB@chimera> <200905072133.48917.rjw@sisk.pl> <20090507130202.34cbe37a.akpm@linux-foundation.org> <200905072218.50782.rjw@sisk.pl> <alpine.DEB.2.00.0905071321440.646@chino.kir.corp.google.com>
 <20090507203518.GA1652@ucw.cz>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1241728834; bh=nqvzgjLBJp7ajD0A3ksRF1rORpg=;
	h=DomainKey-Signature:Date:From:X-X-Sender:To:cc:Subject:
	 In-Reply-To:Message-ID:References:User-Agent:MIME-Version:
	 Content-Type:X-System-Of-Record; b=L7O5hZC0JePZkJQhLclh3j4lJzfhbV+
	+todM5o2r+pgIi1zjqo7TK7ZHwiWqjsgp4vCdXm5TD1u6M9EfcCuukg==
In-Reply-To: <20090507203518.GA1652-+ZI9xUNit7I@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org, torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org, alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Thu, 7 May 2009, Pavel Machek wrote:

> > Third time I'm going to suggest this, and I'd like a response on why it's 
> > not possible instead of being ignored.
> > 
> > All of your tasks are in D state other than kthreads, right?  That means 
> > they won't be in the oom killer (thus no zones are oom locked), so you can 
> > easily do this
> 
> Well, OOM killer may be running on behalf of some kthread at that
> point....? Quite unlikely, but possible AFAICT.

The oom killer doesn't care about the task's state, so this will be a 
genuine oom situation where it will kill a task (one in D state since 
kthreads are inherently immune) which will die when unfrozen.  That would 
have had to happen anyway when all tasks wake up since the system is 
completely out of memory (except for kswapd that is given access to memory 
reserves because of PF_MEMALLOC) so you're not worried about completely 
blocking out the oom killer anymore because the next kthread to invoke it 
in such a situation will end up being a no-op because it finds a task with 
TIF_MEMDIE set.
