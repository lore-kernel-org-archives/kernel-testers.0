From: Lee Schermerhorn <Lee.Schermerhorn-VXdhtT5mjnY@public.gmane.org>
Subject: Re: [Bad page] trying to free locked page? (Re: [PATCH][RFC] fix
	kernel BUG at mm/migrate.c:719! in 2.6.26-rc5-mm3)
Date: Tue, 17 Jun 2008 14:29:45 -0400
Message-ID: <1213727385.8707.53.camel@lts-notebook>
References: <20080611225945.4da7bb7f.akpm@linux-foundation.org>
	 <20080617163501.7cf411ee.nishimura@mxp.nes.nec.co.jp>
	 <20080617164709.de4db070.nishimura@mxp.nes.nec.co.jp>
	 <20080617180314.2d1b0efa.kamezawa.hiroyu@jp.fujitsu.com>
	 <20080617181527.5bcbbccc.nishimura@mxp.nes.nec.co.jp>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080617181527.5bcbbccc.nishimura-YQH0OdQVrdy45+QrQBaojngSJqDPrsil@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Daisuke Nishimura <nishimura-YQH0OdQVrdy45+QrQBaojngSJqDPrsil@public.gmane.org>
Cc: KAMEZAWA Hiroyuki <kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Kosaki Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Nick Piggin <npiggin-l3A5Bk7waGM@public.gmane.org>, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Tue, 2008-06-17 at 18:15 +0900, Daisuke Nishimura wrote:
> On Tue, 17 Jun 2008 18:03:14 +0900, KAMEZAWA Hiroyuki <kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org> wrote:
> > On Tue, 17 Jun 2008 16:47:09 +0900
> > Daisuke Nishimura <nishimura-YQH0OdQVrdy45+QrQBaojngSJqDPrsil@public.gmane.org> wrote:
> > 
> > > On Tue, 17 Jun 2008 16:35:01 +0900, Daisuke Nishimura <nishimura-YQH0OdQVrdy45+QrQBaojngSJqDPrsil@public.gmane.org> wrote:
> > > > Hi.
> > > > 
> > > > I got this bug while migrating pages only a few times
> > > > via memory_migrate of cpuset.
> > > > 
> > > > Unfortunately, even if this patch is applied,
> > > > I got bad_page problem after hundreds times of page migration
> > > > (I'll report it in another mail).
> > > > But I believe something like this patch is needed anyway.
> > > > 
> > > 
> > > I got bad_page after hundreds times of page migration.
> > > It seems that a locked page is being freed.

I'm seeing *mlocked* pages [PG_mlocked] being freed now with my stress
load, with just the "if(!page->mapping) { } clause removed, as proposed
in your rfc patch in previous mail.  Need to investigate this...

I'm not seeing *locked* pages [PG_lock], tho'.  From your stack trace,
it appears that migrate_page() left locked pages on the list of pages to
be putback.  The pages get locked and unlocked in unmap_and_move().  I
haven't found a path [yet] where the page can be returned still locked.
I think I need to duplicate the problem.

> > > 
> > Good catch, and I think your investigation in the last e-mail was correct.
> > I'd like to dig this...but it seems some kind of big fix is necessary.
> > Did this happen under page-migraion by cpuset-task-move test ?
> > 
> Yes.
> 
> I made 2 cpuset directories, run some processes in each cpusets,
> and run a script like below infinitely to move tasks and migrate pages.

What processes/tests do you run in each cpuset?

> 
> ---
> #!/bin/bash
> 
> G1=$1
> G2=$2
> 
> move_task()
> {
>         for pid in $1
>         do
>                 echo $pid >$2/tasks 2>/dev/null
>         done
> }
> 
> G1_TASK=`cat ${G1}/tasks`
> G2_TASK=`cat ${G2}/tasks`
> 
> move_task "${G1_TASK}" ${G2} &
> move_task "${G2_TASK}" ${G1} &
> 
> wait
> ---
> 
> I got this bad_page after running this script for about 600 times.
> 



--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
