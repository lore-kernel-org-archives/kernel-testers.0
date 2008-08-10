From: Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Subject: Re: [Bug #11278] 2.6.27-rc2: Very odd top: '5124095h kthreadd'
	display
Date: Sun, 10 Aug 2008 17:52:38 +0200
Message-ID: <1218383558.10800.13.camel@twins>
References: <VYYCiQF4qDI.A.BPH.KCjnIB@albercik>
	 <cX_-nNkxKaF.A.WR.xCjnIB@albercik>
	 <otds94lkpmrooo1s9c0he3j3pral8fmojl@4ax.com>
	 <200808101457.26524.rjw@sisk.pl>
	 <p8tt949h41ff647i9ga0fp3jhpvnllnj3t@4ax.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <p8tt949h41ff647i9ga0fp3jhpvnllnj3t-e09XROE/p8c@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Grant Coady <gcoady.lk-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>

On Mon, 2008-08-11 at 00:06 +1000, Grant Coady wrote:
> On Sun, 10 Aug 2008 14:57:26 +0200, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> 
> >On Sunday, 10 of August 2008, Grant Coady wrote:
> >> On Sun, 10 Aug 2008 00:43:52 +0200 (CEST), "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> >> 
> >> >This message has been generated automatically as a part of a report
> >> >of recent regressions.
> >> >
> >> >The following bug entry is on the current list of known regressions
> >> >from 2.6.26.  Please verify if it still should be listed and let me know
> >> >(either way).
> >> >
> >> >
> >> >Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11278
> >> >Subject		: 2.6.27-rc2: Very odd top: '5124095h kthreadd' display
> >> >Submitter	: Grant Coady <grant_lkml-rGYn+TmxqGy6c6uEtOJ/EA@public.gmane.org>
> >> >Date		: 2008-08-07 7:03 (3 days old)
> >> >References	: http://marc.info/?l=linux-kernel&m=121809267318795&w=4
> >> >
> >> 
> >> Patch from Peter Z. fixed it for me, so it may be removed now.
> >
> >Is the patch in the mainline already?
> 
> No idea.
> >
> >If not, can you please provide me with a link to the patch?
> 
> root@twins:/mnt/build/linux-2.6# git show 4a273f209cc95d148f79b4c96d3d03997b44ffda | patch -p1 -R
> patching file kernel/sched_clock.c
> 
> Is what I have from Peter's email.  Added Peter Z. to the Cc:
> 
> Grant.

its part of tip/sched/clock

except for that one patch that got reverted. I'll work on getting it
upstream once Ingo is back next week.
