From: "Pallipadi, Venkatesh" <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH] remove rwsem lock from CPUFREQ_GOV_STOP call (second
 call site)
Date: Mon, 08 Jun 2009 09:57:34 -0700
Message-ID: <1244480254.4534.265.camel@localhost.localdomain>
References: <bCxQpon4SCJ.A.RrF.yY7KKB@chimera>
	 <D9VoutSOyXP.A.7vF.2Y7KKB@chimera>
	 <84144f020906070621r1f480eaeief026d23662df380@mail.gmail.com>
	 <a8e1da0906080035j9f8b38drb46132de5a515915@mail.gmail.com>
	 <1244447366.13471.4.camel@penberg-laptop> <20090608124844.GA17588@Krystal>
	 <20090608143220.GC2516@redhat.com>  <20090608152316.GA21033@Krystal>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090608152316.GA21033@Krystal>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>
Cc: Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Dave Young <hidave.darkstar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>, "trenn-l3A5Bk7waGM@public.gmane.org" <trenn-l3A5Bk7waGM@public.gmane.org>, "sven.wegener-sQQoR7IzGU7R7s880joybQ@public.gmane.org" <sven.wegener-sQQoR7IzGU7R7s880joybQ@public.gmane.org>, "mingo-X9Un+BFzKDI@public.gmane.org" <mingo-X9Un+BFzKDI@public.gmane.org>, "Li, Shaohua" <shaohua.li-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

On Mon, 2009-06-08 at 08:23 -0700, Mathieu Desnoyers wrote:
> * Dave Jones (davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org) wrote:
> > On Mon, Jun 08, 2009 at 08:48:45AM -0400, Mathieu Desnoyers wrote:
> >  
> >  > > > >> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=13475
> >  > > > >> Subject         : suspend/hibernate lockdep warning
> >  > > > >> References      : http://marc.info/?l=linux-kernel&m=124393723321241&w=4
> >  > > > 
> >  > > > I suspect the following commit, after revert this patch I test 5 times
> >  > > > without lockdep warnings.
> >  > > > 
> >  > > > commit b14893a62c73af0eca414cfed505b8c09efc613c
> >  > > > Author: Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>
> >  > > > Date:   Sun May 17 10:30:45 2009 -0400
> >  > > > 
> >  > > > 	[CPUFREQ] fix timer teardown in ondemand governor
> >  > > 
> >  > > The patch is probably not at fault here. I suspect it's some latent bug
> >  > > that simply got exposed by the change to cancel_delayed_work_sync(). In
> >  > > any case, Mathieu, can you take a look at this please?
> >  > 
> >  > Yes, it's been looked at and discussed on the cpufreq ML. The short
> >  > answer is that they plan to re-engineer cpufreq and remove the policy
> >  > rwlock taken around almost every operations at the cpufreq level.
> >  > 
> >  > The short-term solution, which is recognised as ugly, would be do to the
> >  > following before doing the cancel_delayed_work_sync() :
> >  > 
> >  > unlock policy rwlock write lock
> >  > 
> >  > lock policy rwlock write lock
> >  > 
> >  > It basically works because this rwlock is unneeded for teardown, hence
> >  > the future re-work planned.
> >  > 
> >  > I'm sorry I cannot prepare a patch current... I've got quite a few pages
> >  > of Ph.D. thesis due for the beginning of July.
> >  
> > I'm kinda scared to touch this code at all for .30 due to the number of
> > unexpected gotchas we seem to run into every time we touch something
> > locking related.  So I'm inclined to just live with the lockdep warning
> > for .30, and see how the real fixes look for .31, and push them back
> > as -stable updates if they work out.
> > 
> > 
> > Venki, what are your thoughts?
> > 
> 
> Hi Dave,
> 
> I've looked through the cpufreq code, and the following patch should
> address the call site I've missed in commit 
> 42a06f2166f2f6f7bf04f32b4e823eacdceafdc9. I've followed all
> __cpufreq_set_policy call sites within cpufreq.c to make sure they all
> hold the rwsem write lock. An extra round of review would be good
> though.
> 
> Can someone try the following patch and see if it fixes the regression ?
> My test machine is currently busy running long formal verifications, and
> therefore unavailable for kernel patch testing. It compiles fine on a
> 2.6.30-rc5 kernel with my (now mainlined) cpufreq patches applied.
> 
> Mathieu
> 
> 
> remove rwsem lock from CPUFREQ_GOV_STOP call (second call site)
> 
> commit	42a06f2166f2f6f7bf04f32b4e823eacdceafdc9
> 
> Missed a call site for CPUFREQ_GOV_STOP to remove the rwlock taken around the
> teardown. To make a long story short, the rwlock write-lock causes a circular
> dependency with cancel_delayed_work_sync(), because the timer handler takes the
> read lock.
> 
> Note that all callers to __cpufreq_set_policy are taking the rwsem. All sysfs
> callers (writers) hold the write rwsem at the earliest sysfs calling stage.
> 
> However, the rwlock write-lock is not needed upon governor stop.
> 
> Signed-off-by: Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>

Acked-by: Venkatesh Pallipadi <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

This change is same as the patch that I was testing right now.
Only additional change I had was a comment for cpu_policy_rwsem

  *   are concerned with are online after they get the lock.
  * - Governor routines that can be called in cpufreq hotplug path
should not
  *   take this sem as top level hotplug notifier handler takes this.
+ * - Lock should not be held across
+ *     __cpufreq_governor(data, CPUFREQ_GOV_STOP);
  */


Thanks,
Venki


> CC: rjw-KKrjLPT3xs0@public.gmane.org
> CC: mingo-X9Un+BFzKDI@public.gmane.org
> CC: Shaohua Li <shaohua.li-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> CC: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
> CC: Dave Young <hidave.darkstar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> CC: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
> CC: Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>
> CC: trenn-l3A5Bk7waGM@public.gmane.org
> CC: sven.wegener-sQQoR7IzGU7R7s880joybQ@public.gmane.org
> CC: Venkatesh Pallipadi <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> CC: cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> ---
>  drivers/cpufreq/cpufreq.c |   11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
> 
> Index: linux-2.6-lttng/drivers/cpufreq/cpufreq.c
> ===================================================================
> --- linux-2.6-lttng.orig/drivers/cpufreq/cpufreq.c	2009-06-08 10:20:48.000000000 -0400
> +++ linux-2.6-lttng/drivers/cpufreq/cpufreq.c	2009-06-08 10:48:52.000000000 -0400
> @@ -1697,8 +1697,17 @@ static int __cpufreq_set_policy(struct c
>  			dprintk("governor switch\n");
>  
>  			/* end old governor */
> -			if (data->governor)
> +			if (data->governor) {
> +				/*
> +				 * Need to release the rwsem around governor
> +				 * stop due to lock dependency between
> +				 * cancel_delayed_work_sync and the read lock
> +				 * taken in the delayed work handler.
> +				 */
> +				unlock_policy_rwsem_write(data->cpu);
>  				__cpufreq_governor(data, CPUFREQ_GOV_STOP);
> +				lock_policy_rwsem_write(data->cpu);
> +			}
>  
>  			/* start new governor */
>  			data->governor = policy->governor;
> 
> 
