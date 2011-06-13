From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #37222] 3.0.0-rc1-git3 -- kernel/sched.c:619 invoked rcu_dereference_check() without protection!
Date: Mon, 13 Jun 2011 19:26:58 +0200
Message-ID: <201106131926.58954.rjw@sisk.pl>
References: <vv0uv79EvLN.A.jiC.pNS9NB@chimera> <BANLkTikjZ7O6SFmD2e-YnMztGHoGZL69qg@mail.gmail.com> <1307930406.4011.3.camel@minggr.sh.intel.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1307930406.4011.3.camel-WAh/sfaZ6+hhZnBKgDE8z0EOCMrvLtNR@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Lin Ming <ming.m.lin-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Miles Lane <miles.lane-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Monday, June 13, 2011, Lin Ming wrote:
> 
> > From: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
> > Date: Mon, Jun 13, 2011 at 4:30 AM
> > Subject: [Bug #37222] 3.0.0-rc1-git3 -- kernel/sched.c:619 invoked
> > rcu_dereference_check() without protection!
> > To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
> > Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej
> > Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler
> > <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Miles Lane <miles.lane-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > 
> > 
> > This message has been generated automatically as a part of a summary report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.39.  Please verify if it still should be listed and let the
> > tracking team
> > know (either way).
> > 
> > 
> > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=37222
> > Subject         : 3.0.0-rc1-git3 -- kernel/sched.c:619 invoked
> > rcu_dereference_check() without protection!
> > Submitter       : Miles Lane <miles.lane-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Date            : 2011-06-04 3:22 (9 days old)
> > Message-ID      : <BANLkTikHS7TuFhm3cfJ+Y=erWDaAwuE_TA-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
> > References      : http://marc.info/?l=linux-kernel&m=130715775803343&w=2
> > 
> 
> This was fixed already.
> http://git.kernel.org/?p=linux/kernel/git/x86/linux-2.6-tip.git;a=commit;h=6c6c54e180
> 
> commit 6c6c54e1807faf116724451ef2bd14993780470a
> Author: Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
> Date:   Fri Jun 3 17:37:07 2011 +0200
> 
>     sched: Fix/clarify set_task_cpu() locking rules

Thanks, closing.

Rafael
