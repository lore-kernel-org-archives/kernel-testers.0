From: Nick Piggin <nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org>
Subject: Re: 2.6.26-rc5-mm2: OOM with 1G free swap
Date: Wed, 11 Jun 2008 16:31:13 +1000
Message-ID: <200806111631.13920.nickpiggin@yahoo.com.au>
References: <20080609223145.5c9a2878.akpm@linux-foundation.org> <20080611060029.GA5011@martell.zuzino.mipt.ru> <20080610232705.3aaf5c06.akpm@linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080610232705.3aaf5c06.akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Alexey Dobriyan <adobriyan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>

On Wednesday 11 June 2008 16:27, Andrew Morton wrote:
> On Wed, 11 Jun 2008 10:00:29 +0400 Alexey Dobriyan <adobriyan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> 
wrote:
> > On Mon, Jun 09, 2008 at 10:31:45PM -0700, Andrew Morton wrote:
> > > - This is a bugfixed version of 2.6.26-rc5-mm1 - mainly to repair a
> > >   vmscan.c bug which would have prevented testing of the other vmscan.c
> > >   bugs^Wchanges.
> >
> > OOM condition happened with 1G free swap.
>
> Thanks for testing.  Again.
>
> > 4G RAM, 1G swap partition, normally LTP survives during much, much higher
> > load.
> >
> > vm.overcommit_memory = 0
> > vm.overcommit_ratio = 50
>
> Well I assume that Rik ran LTP.  Perhaps a merge problem.
>
> > ...
> >
> > [ 6773.608125] init invoked oom-killer: gfp_mask=0x1201d2, order=0,
> > oomkilladj=0
>
> GFP_USER
>
> > [ 6773.608215] Pid: 1, comm: init Not tainted 2.6.26-rc5-mm2 #2
>
> wot?  The oom-killer isn't supposed to kill init!

It is init that invokes the OOM killer, the actual process killed
comes at the end I believe:

 [...]

> > [ 6773.631799] Out of memory: kill process 4788 (sshd) score 11194 or a
> > child [ 6773.631876] Killed process 4789 (bash)
--
To unsubscribe from this list: send the line "unsubscribe kernel-testers" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
