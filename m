From: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Subject: Re: [PATCH 1/5] mm: Add __GFP_NO_OOM_KILL flag
Date: Thu, 7 May 2009 11:50:04 -0700 (PDT)
Message-ID: <alpine.DEB.2.00.0905071147260.26631@chino.kir.corp.google.com>
References: <nY3-4PrO6XH.A.xtB.yw85JB@chimera> <200905060120.35698.rjw@sisk.pl> <20090505164028.e9d807a1.akpm@linux-foundation.org> <200905072009.53406.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1241722209; bh=LnJN0UQ5wf/gYnVlbtOyNtyxmeI=;
	h=DomainKey-Signature:Date:From:X-X-Sender:To:cc:Subject:
	 In-Reply-To:Message-ID:References:User-Agent:MIME-Version:
	 Content-Type:X-System-Of-Record; b=Ki0iD6Cdgx2HsOsJNTghYiImE9/6bFR
	p0fr0/3QDbVtOgZMHdUqn3rh7xm5vulkluyYyQ+TuL5sC7GvDjYC8Rg==
In-Reply-To: <200905072009.53406.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org, pavel-+ZI9xUNit7I@public.gmane.org, torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org, alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Thu, 7 May 2009, Rafael J. Wysocki wrote:

> Unfortunately it fails too quickly with the combination as well, so it looks
> like we can't use __GFP_NORETRY during hibernation.
> 

If you know that no other tasks are in the oom killer at suspend time, you 
can do what I mentioned earlier:

	struct zone *z;
	for_each_populated_zone(z)
		zone_set_flag(z, ZONE_OOM_LOCKED);

and then later

	for_each_populated_zone(z)
		zone_clear_flag(z, ZONE_OOM_LOCKED);

The only race there is if a task is currently in the oom killer and will 
subsequently clear ZONE_OOM_LOCKED for its zonelist.
