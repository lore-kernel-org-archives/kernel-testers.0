From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #11970] gettimeofday return a old time in mmbench
Date: Thu, 4 Dec 2008 08:45:40 +0100
Message-ID: <20081204074540.GA29151@elte.hu>
References: <QFIA5HSHV8B.A.2aG.hoxNJB@chimera> <bfPM5B8Tx2B.A.Qi.7pxNJB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <bfPM5B8Tx2B.A.Qi.7pxNJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, alexs <alex.shi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>, Yanmin Zhang <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, john stultz <johnstul-r/Jw6+rmf7HQT0dZR+AlfA@public.gmane.org>


* Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.27.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11970
> Subject		: gettimeofday return a old time in mmbench
> Submitter	: alexs <alex.shi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> Date		: 2008-11-06 23:57 (28 days old)
> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=99ebcf8285df28f32fd2d1c19a7166e70f00309c
> Handled-By	: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
> 		  Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
> 		  Yanmin Zhang <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>

fixed by the patch below from John Stultz, queued up in 
tip/timers/urgent.

The bisection-blamed merge commit above likely just causes a random shift 
in the timings or compiler optimization conditions of this code - making 
the bug more likely to trigger. The bug/race itself is old.

	Ingo

------------------------->
From 6c9bacb41c10ba84ff68f238e234d96f35fb64f7 Mon Sep 17 00:00:00 2001
From: john stultz <johnstul-r/Jw6+rmf7HQT0dZR+AlfA@public.gmane.org>
Date: Mon, 1 Dec 2008 18:34:41 -0800
Subject: [PATCH] time: catch xtime_nsec underflows and fix them

Impact: fix time warp bug

Alex Shi, along with Yanmin Zhang have been noticing occasional time
inconsistencies recently. Through their great diagnosis, they found that
the xtime_nsec value used in update_wall_time was occasionally going
negative. After looking through the code for awhile, I realized we have
the possibility for an underflow when three conditions are met in
update_wall_time():

  1) We have accumulated a second's worth of nanoseconds, so we
     incremented xtime.tv_sec and appropriately decrement xtime_nsec.
     (This doesn't cause xtime_nsec to go negative, but it can cause it
      to be small).

  2) The remaining offset value is large, but just slightly less then
     cycle_interval.

  3) clocksource_adjust() is speeding up the clock, causing a
     corrective amount (compensating for the increase in the multiplier
     being multiplied against the unaccumulated offset value) to be
     subtracted from xtime_nsec.

This can cause xtime_nsec to underflow.

Unfortunately, since we notify the NTP subsystem via second_overflow()
whenever we accumulate a full second, and this effects the error
accumulation that has already occured, we cannot simply revert the
accumulated second from xtime nor move the second accumulation to after
the clocksource_adjust call without a change in behavior.

This leaves us with (at least) two options:

1) Simply return from clocksource_adjust() without making a change if we
   notice the adjustment would cause xtime_nsec to go negative.

This would work, but I'm concerned that if a large adjustment was needed
(due to the error being large), it may be possible to get stuck with an
ever increasing error that becomes too large to correct (since it may
always force xtime_nsec negative). This may just be paranoia on my part.

2) Catch xtime_nsec if it is negative, then add back the amount its
   negative to both xtime_nsec and the error.

This second method is consistent with how we've handled earlier rounding
issues, and also has the benefit that the error being added is always in
the oposite direction also always equal or smaller then the correction
being applied. So the risk of a corner case where things get out of
control is lessened.

This patch fixes bug 11970, as tested by Yanmin Zhang
http://bugzilla.kernel.org/show_bug.cgi?id=11970

Reported-by: alex.shi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org
Signed-off-by: John Stultz <johnstul-r/Jw6+rmf7HQT0dZR+AlfA@public.gmane.org>
Acked-by: "Zhang, Yanmin" <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
Tested-by: "Zhang, Yanmin" <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>
Signed-off-by: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
---
 kernel/time/timekeeping.c |   22 ++++++++++++++++++++++
 1 files changed, 22 insertions(+), 0 deletions(-)

diff --git a/kernel/time/timekeeping.c b/kernel/time/timekeeping.c
index e7acfb4..fa05e88 100644
--- a/kernel/time/timekeeping.c
+++ b/kernel/time/timekeeping.c
@@ -518,6 +518,28 @@ void update_wall_time(void)
 	/* correct the clock when NTP error is too big */
 	clocksource_adjust(offset);
 
+	/*
+	 * Since in the loop above, we accumulate any amount of time
+	 * in xtime_nsec over a second into xtime.tv_sec, its possible for
+	 * xtime_nsec to be fairly small after the loop. Further, if we're
+	 * slightly speeding the clocksource up in clocksource_adjust(),
+	 * its possible the required corrective factor to xtime_nsec could
+	 * cause it to underflow.
+	 *
+	 * Now, we cannot simply roll the accumulated second back, since
+	 * the NTP subsystem has been notified via second_overflow. So
+	 * instead we push xtime_nsec forward by the amount we underflowed,
+	 * and add that amount into the error.
+	 *
+	 * We'll correct this error next time through this function, when
+	 * xtime_nsec is not as small.
+	 */
+	if (unlikely((s64)clock->xtime_nsec < 0)) {
+		s64 neg = -(s64)clock->xtime_nsec;
+		clock->xtime_nsec = 0;
+		clock->error += neg << (NTP_SCALE_SHIFT - clock->shift);
+	}
+
 	/* store full nanoseconds into xtime after rounding it up and
 	 * add the remainder to the error difference.
 	 */
