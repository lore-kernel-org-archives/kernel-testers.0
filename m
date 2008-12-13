From: "Fabio Comolli" <fabio.comolli-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12155] Regression in 2.6.28-rc and 2.6.27-stable - hibernate related
Date: Sat, 13 Dec 2008 19:45:18 +0100
Message-ID: <b637ec0b0812131045n34bf420w3729abf24533b51c@mail.gmail.com>
References: <u7kfEgp36eE.A.qpG.Y4_QJB@chimera>
	 <T1gm2CtAHBF.A.bnH.14_QJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=T59B38Db7O/bD40VAk7e7c7loU+hiC8VStvgEPdnaGM=;
        b=d20Rp51RO3f4jOWwLsjL7DXSGJui+gSdTQvbZvjy4QU44tpL3aENZ4CxVDpvaoKFv/
         jv6Snu2G02yf3V2n3wZ8vu//Oa/BOiQMNdqhQ2InLIoUHeG3ANtqLxKxqCAwYBcwr/Lq
         jCO8G9b8zTsQw0k+ZlE0DeL03qrLShH/PzWY8=
In-Reply-To: <T1gm2CtAHBF.A.bnH.14_QJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dave Kleikamp <shaggy-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>

Hi.

On Sat, Dec 13, 2008 at 5:33 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.27.  Please verify if it still should be listed and let me know
> (either way).
>
>
> Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=12155
> Subject         : Regression in 2.6.28-rc and 2.6.27-stable - hibernate related
> Submitter       : Fabio Comolli <fabio.comolli-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date            : 2008-11-23 16:17 (21 days old)
> References      : http://marc.info/?l=linux-kernel&m=122745709926361&w=4

Still present. It has been bisected to:

---------------------------------------------------------------------------------------------------------------
commit 5e55aa8db085dad1aabb4574c73c23c7ae571e7b
Author: Dave Kleikamp <shaggy-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
Date:   Sun Oct 26 18:20:14 2008 -0400

    sched_clock: prevent scd->clock from moving backwards

    commit 5b7dba4ff834259a5623e03a565748704a8fe449 upstream

    sched_clock: prevent scd->clock from moving backwards

    When sched_clock_cpu() couples the clocks between two cpus, it may
    increment scd->clock beyond the GTOD tick window that __update_sched_clock()
    uses to clamp the clock.  A later call to __update_sched_clock() may move
    the clock back to scd->tick_gtod + TICK_NSEC, violating the clock's
    monotonic property.

    This patch ensures that scd->clock will not be set backward.

    Signed-off-by: Dave Kleikamp <shaggy-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
    Acked-by: Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>
    Signed-off-by: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
    Cc: Chuck Ebbert <cebbert-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
    Signed-off-by: Greg Kroah-Hartman <gregkh-l3A5Bk7waGM@public.gmane.org>
------------------------------------------------------------------------------------------------------------

Both 2.6.27.8 and 2.6.28-rc8 with that commit reverted work fine
(well, at least they failed to show the bug so far).
