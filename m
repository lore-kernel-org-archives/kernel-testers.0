From: Arnaud Boulan <arnaud.boulan-TDf4sKD1mxeHlu7OokbhRg@public.gmane.org>
Subject: Re: [Bug #14933] OOM killer unexpectedly called
Date: Mon, 25 Jan 2010 08:34:00 +0100
Message-ID: <201001250834.01084.arnaud.boulan@libertysurf.fr>
References: <pYFNu11z2aM.A.pJH.CZMXLB@chimera> <q60Z28d_9yH.A.LQ.iZMXLB@chimera> <20100125111948.493B.A69D9226@jp.fujitsu.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20100125111948.493B.A69D9226-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>

On Monday 25 January 2010 03:37:25 KOSAKI Motohiro wrote:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.31 and 2.6.32.
> >
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.31 and 2.6.32.  Please verify if it still should
> > be listed and let me know (either way).
> >
> >
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14933
> > Subject		: OOM killer unexpectedly called
> > Submitter	: A. Boulan <arnaud.boulan-TDf4sKD1mxeHlu7OokbhRg@public.gmane.org>
> > Date		: 2009-12-24 23:42 (32 days old)
> > References	: http://marc.info/?l=linux-kernel&m=126169821317492&w=4
>
> Boulan, Can you please help our debugging?
> can you disable following config option at once?
>
> 1. CONFIG_DRM_I915
> 2. CONFIG_RELAY
> 3. CONFIG_MSPEC
> 4. VIDEOBUF_DMA_SG
>
> I mean
>   - if anyone return VM_FAULT_OOM, this issue occur.
>   - very few subsys can return VM_FAULT_OOM in their own fault handler.
>   - I hope investigate this is core mm issue or not.
>     (unfortunatelly, I haven't find any dubious recent mm change..)
>
>
> Thanks.

Hello,

Sorry for the lack of input about this issue. I currently only have remote 
access to the machine for which i had this problem, and i'm not confident 
with rebooting into potentially broken kernels. That's why i haven't done any 
more tests yet..
I will try to reproduce the issue on another machine first, and if i that does 
not work i will find a way to test as you suggest.

Also, I have seen in the lkml archives that someone else seems to have the 
same problem:
  OOM-Killer kills too much with 2.6.32.2
  From: Roman Jarosz 
  Date:  Thu Jan 14 2010 - 08:13:36 EST

As i can't have his email from the web archives, could you plase CC: him on 
this thread? Maybe he could also help with some tests.

Regards,

Arnaud
