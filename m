From: KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Subject: Re: [Bad page] trying to free locked page? (Re: [PATCH][RFC] fix kernel BUG at mm/migrate.c:719! in 2.6.26-rc5-mm3)
Date: Tue, 17 Jun 2008 18:14:49 +0900
Message-ID: <20080617181110.E2D6.KOSAKI.MOTOHIRO@jp.fujitsu.com>
References: <20080617164709.de4db070.nishimura@mxp.nes.nec.co.jp> <20080617180314.2d1b0efa.kamezawa.hiroyu@jp.fujitsu.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080617180314.2d1b0efa.kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: KAMEZAWA Hiroyuki <kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Cc: kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org, Daisuke Nishimura <nishimura-YQH0OdQVrdy45+QrQBaojngSJqDPrsil@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Lee Schermerhorn <lee.schermerhorn-VXdhtT5mjnY@public.gmane.org>, Nick Piggin <npiggin-l3A5Bk7waGM@public.gmane.org>, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

> > > I got this bug while migrating pages only a few times
> > > via memory_migrate of cpuset.
> > > 
> > > Unfortunately, even if this patch is applied,
> > > I got bad_page problem after hundreds times of page migration
> > > (I'll report it in another mail).
> > > But I believe something like this patch is needed anyway.
> > > 
> > 
> > I got bad_page after hundreds times of page migration.
> > It seems that a locked page is being freed.
> > 
> Good catch, and I think your investigation in the last e-mail was correct.
> I'd like to dig this...but it seems some kind of big fix is necessary.
> Did this happen under page-migraion by cpuset-task-move test ?

Indeed!

I guess lee's unevictable infrastructure and nick's specurative pagecache
is conflicted.
I'm investigating deeply now.



--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
