From: Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #13475] suspend/hibernate lockdep warning
Date: Mon, 8 Jun 2009 10:32:20 -0400
Message-ID: <20090608143220.GC2516@redhat.com>
References: <bCxQpon4SCJ.A.RrF.yY7KKB@chimera> <D9VoutSOyXP.A.7vF.2Y7KKB@chimera> <84144f020906070621r1f480eaeief026d23662df380@mail.gmail.com> <a8e1da0906080035j9f8b38drb46132de5a515915@mail.gmail.com> <1244447366.13471.4.camel@penberg-laptop> <20090608124844.GA17588@Krystal>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20090608124844.GA17588@Krystal>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>
Cc: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Dave Young <hidave.darkstar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>, trenn-l3A5Bk7waGM@public.gmane.org, sven.wegener-sQQoR7IzGU7R7s880joybQ@public.gmane.org, Venkatesh Pallipadi <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

On Mon, Jun 08, 2009 at 08:48:45AM -0400, Mathieu Desnoyers wrote:
 
 > > > >> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=13475
 > > > >> Subject         : suspend/hibernate lockdep warning
 > > > >> References      : http://marc.info/?l=linux-kernel&m=124393723321241&w=4
 > > > 
 > > > I suspect the following commit, after revert this patch I test 5 times
 > > > without lockdep warnings.
 > > > 
 > > > commit b14893a62c73af0eca414cfed505b8c09efc613c
 > > > Author: Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>
 > > > Date:   Sun May 17 10:30:45 2009 -0400
 > > > 
 > > > 	[CPUFREQ] fix timer teardown in ondemand governor
 > > 
 > > The patch is probably not at fault here. I suspect it's some latent bug
 > > that simply got exposed by the change to cancel_delayed_work_sync(). In
 > > any case, Mathieu, can you take a look at this please?
 > 
 > Yes, it's been looked at and discussed on the cpufreq ML. The short
 > answer is that they plan to re-engineer cpufreq and remove the policy
 > rwlock taken around almost every operations at the cpufreq level.
 > 
 > The short-term solution, which is recognised as ugly, would be do to the
 > following before doing the cancel_delayed_work_sync() :
 > 
 > unlock policy rwlock write lock
 > 
 > lock policy rwlock write lock
 > 
 > It basically works because this rwlock is unneeded for teardown, hence
 > the future re-work planned.
 > 
 > I'm sorry I cannot prepare a patch current... I've got quite a few pages
 > of Ph.D. thesis due for the beginning of July.
 
I'm kinda scared to touch this code at all for .30 due to the number of
unexpected gotchas we seem to run into every time we touch something
locking related.  So I'm inclined to just live with the lockdep warning
for .30, and see how the real fixes look for .31, and push them back
as -stable updates if they work out.


Venki, what are your thoughts?

	Dave
