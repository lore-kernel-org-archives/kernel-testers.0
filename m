From: Yong Zhang <yong.zhang-CWA4WttNNZF54TAoqtyWWQ@public.gmane.org>
Subject: Re: [Bug #15615] NULL pointer deref in task_is_waking
Date: Thu, 8 Apr 2010 15:50:03 +0800
Message-ID: <20100408075003.GC12905@windriver.com>
References: <6Pphclm24fK.A.lSF.qsPvLB@chimera>
 <JVS2s9dmTsP.A.ivH.2tPvLB@chimera>
 <20100408071617.GC26543@localhost>
Reply-To: Yong Zhang <yong.zhang-CWA4WttNNZF54TAoqtyWWQ@public.gmane.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20100408071617.GC26543@localhost>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Liang Li <liang.li-CWA4WttNNZF54TAoqtyWWQ@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Amit Shah <shahamit-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Thu, Apr 08, 2010 at 03:16:17PM +0800, Liang Li wrote:
> On Wed, Apr 07, 2010 at 11:13:48PM +0200, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a summary report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.33.  Please verify if it still should be listed and let the tracking team
> > know (either way).
> 
> The bug still there. I just met it. And seems its quite simple to get it
> fixed.
> 
> diff --git a/kernel/sched.c b/kernel/sched.c
> index a3dff1f..2df1a76 100644
> --- a/kernel/sched.c
> +++ b/kernel/sched.c
> @@ -913,7 +913,7 @@ static inline void finish_lock_switch(struct rq *rq, struct task_struct *prev)
>   */
>  static inline int task_is_waking(struct task_struct *p)
>  {
> -	return unlikely((p->state == TASK_WAKING) && !(p->flags & PF_STARTING));
> +	return unlikely(p && (p->state == TASK_WAKING) && !(p->flags & PF_STARTING));
>  }

Oh, NO. This is wrong. It will introduce other bugs.
The right direction is showed in the bug entry.

Thanks,
Yong

>  
>  /*
> 
> But seems commitid 0017d735092844118bef006696a750a0e4ef6ebd in tip tree
> also touched task_is_waking. So the patch for tip tree should be:
> 
> diff --git a/kernel/sched.c b/kernel/sched.c
> index 3acf694..d259641 100644
> --- a/kernel/sched.c
> +++ b/kernel/sched.c
> @@ -920,7 +920,7 @@ static inline void finish_lock_switch(struct rq *rq, struct task_struct *prev)
>   */
>  static inline int task_is_waking(struct task_struct *p)
>  {
> -	return unlikely(p->state == TASK_WAKING);
> +	return unlikely(p && p->state == TASK_WAKING);
>  }
>  
>  /*
> 
> Regards,
> 	-Liang Li
> 
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15615
> > Subject		: NULL pointer deref in task_is_waking
> > Submitter	: Amit Shah <shahamit-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Date		: 2010-03-23 04:04 (16 days old)
> > 
> > 
> > --
> > To unsubscribe from this list: send the line "unsubscribe linux-kernel" in
> > the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> > More majordomo info at  http://vger.kernel.org/majordomo-info.html
> > Please read the FAQ at  http://www.tux.org/lkml/
> --
> To unsubscribe from this list: send the line "unsubscribe linux-kernel" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at  http://www.tux.org/lkml/
