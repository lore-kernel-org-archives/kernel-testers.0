From: KAMEZAWA Hiroyuki <kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Subject: Re: [PATCH 1/5] mm: Add __GFP_NO_OOM_KILL flag
Date: Fri, 8 May 2009 10:16:51 +0900
Message-ID: <20090508101651.aa4d513d.kamezawa.hiroyu@jp.fujitsu.com>
References: <nY3-4PrO6XH.A.xtB.yw85JB@chimera>
	<20090507154502.a7f51dd9.akpm@linux-foundation.org>
	<alpine.DEB.2.00.0905071554490.10759@chino.kir.corp.google.com>
	<200905080111.31273.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200905080111.31273.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org, pavel-+ZI9xUNit7I@public.gmane.org, torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org, alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Fri, 8 May 2009 01:11:30 +0200
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> +	for_each_populated_zone(zone)
> +		zone_set_flag(zone, ZONE_OOM_LOCKED);

> +	for_each_populated_zone(zone)
> +		zone_clear_flag(zone, ZONE_OOM_LOCKED);
> +

Isn't it better to make above 2 be functions and move to mm/oom_kill.c ?

Thanks,
-Kame
