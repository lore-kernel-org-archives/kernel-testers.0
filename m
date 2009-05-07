From: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Subject: Re: [PATCH 1/5] mm: Add __GFP_NO_OOM_KILL flag
Date: Thu, 7 May 2009 15:59:29 -0700 (PDT)
Message-ID: <alpine.DEB.2.00.0905071554490.10759@chino.kir.corp.google.com>
References: <nY3-4PrO6XH.A.xtB.yw85JB@chimera> <200905072218.50782.rjw@sisk.pl> <alpine.DEB.2.00.0905071321440.646@chino.kir.corp.google.com> <200905072238.14558.rjw@sisk.pl> <20090507135615.e7db550d.akpm@linux-foundation.org>
 <alpine.DEB.2.00.0905071417160.24417@chino.kir.corp.google.com> <20090507145041.9b59f4eb.akpm@linux-foundation.org> <alpine.DEB.2.00.0905071508190.2164@chino.kir.corp.google.com> <20090507154502.a7f51dd9.akpm@linux-foundation.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1241737175; bh=l6oadQTvEiDiHztpXfAhlBtcNeg=;
	h=DomainKey-Signature:Date:From:X-X-Sender:To:cc:Subject:
	 In-Reply-To:Message-ID:References:User-Agent:MIME-Version:
	 Content-Type:X-System-Of-Record; b=HKgj1fc4pXrudDPvZFX0yCp/nc6hYQx
	RBDU+1D/V8A/fOl5Tw5Vi+45XwTuKBxmcw/8Bod+i1EKM1GSzc7XzCg==
In-Reply-To: <20090507154502.a7f51dd9.akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: rjw-KKrjLPT3xs0@public.gmane.org, fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org, pavel-+ZI9xUNit7I@public.gmane.org, torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org, alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Thu, 7 May 2009, Andrew Morton wrote:

> The setting and clearing of that thing looks gruesomely racy..
> 

It's not racy currently because zone_scan_lock ensures ZONE_OOM_LOCKED 
gets test/set and cleared atomically for the entire zonelist (the clear 
happens for the same zonelist that was test/set).

Using it for hibernation in the way I've proposed will open it up to the 
race I earlier described: when a kthread is in the oom killer and 
subsequently clears its zonelist of ZONE_OOM_LOCKED (all other tasks are 
frozen so they can't be in the oom killer).  That's perfectly acceptable, 
however, since the system is by definition already oom if kthreads can't 
get memory so it will end up killing a user task even though it's stuck in 
D state and will exit on thaw; we aren't concerned about killing 
needlessly because the oom killer becomes a no-op when it finds a task 
that has already been killed but hasn't exited by way of TIF_MEMDIE.
