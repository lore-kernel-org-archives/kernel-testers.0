From: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Subject: Re: [Bug #17131] WARN with 3c905 boomerang NIC
Date: Sun, 12 Sep 2010 17:28:38 -0700 (PDT)
Message-ID: <20100912.172838.226772027.davem@davemloft.net>
References: <EP3NUDNWMO.A.O0.rrRjMB@chimera>
	<0c5PAlgnPrH.A.t5B.UsRjMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <0c5PAlgnPrH.A.t5B.UsRjMB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: rjw-KKrjLPT3xs0@public.gmane.org
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, nazard.lkml-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org

From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Date: Sun, 12 Sep 2010 20:14:27 +0200 (CEST)

> This message has been generated automatically as a part of a summary report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.35.  Please verify if it still should be listed and let the tracking team
> know (either way).
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=17131
> Subject		: WARN with 3c905 boomerang NIC
> Submitter	: Doug Nazar <nazard.lkml-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2010-08-22 6:35 (22 days old)
> Message-ID	: <4C70C516.5020404-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> References	: http://marc.info/?l=linux-kernel&m=128245894300623&w=2
> Handled-By	: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>

Paul, could you please get the softirq.c _local_bh_enable_ip() warning
patch referenced in that bugzilla queued up for Linus's tree if you
haven't done so already?  I'm pretty sure I ACK'd it too, thanks :-)
