From: KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Subject: Re: [Bug #14933] OOM killer unexpectedly called
Date: Mon, 25 Jan 2010 11:37:25 +0900 (JST)
Message-ID: <20100125111948.493B.A69D9226@jp.fujitsu.com>
References: <pYFNu11z2aM.A.pJH.CZMXLB@chimera> <q60Z28d_9yH.A.LQ.iZMXLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <q60Z28d_9yH.A.LQ.iZMXLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "A. Boulan" <arnaud.boulan-TDf4sKD1mxeHlu7OokbhRg@public.gmane.org>
Cc: kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.31 and 2.6.32.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.31 and 2.6.32.  Please verify if it still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14933
> Subject		: OOM killer unexpectedly called
> Submitter	: A. Boulan <arnaud.boulan-TDf4sKD1mxeHlu7OokbhRg@public.gmane.org>
> Date		: 2009-12-24 23:42 (32 days old)
> References	: http://marc.info/?l=linux-kernel&m=126169821317492&w=4

Boulan, Can you please help our debugging?
can you disable following config option at once?

1. CONFIG_DRM_I915
2. CONFIG_RELAY
3. CONFIG_MSPEC
4. VIDEOBUF_DMA_SG

I mean
  - if anyone return VM_FAULT_OOM, this issue occur.
  - very few subsys can return VM_FAULT_OOM in their own fault handler.
  - I hope investigate this is core mm issue or not.
    (unfortunatelly, I haven't find any dubious recent mm change..)


Thanks.


