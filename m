From: Pekka Enberg <penberg-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [Bug #39342] [3.0.0-rc6-git7] possible recursive locking at
 cache_alloc_refill
Date: Sun, 14 Aug 2011 23:01:39 +0300 (EEST)
Message-ID: <alpine.DEB.2.00.1108142259120.4228@tiger>
References: <xuTC4jRtHbB.A.l4H.gMCSOB@chimera> <bkwpSnItbJM.A.o3.YNCSOB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=sender:date:from:x-x-sender:to:cc:subject:in-reply-to:message-id
         :references:user-agent:mime-version:content-type;
        bh=grAWAZg13qerrOZqskNknpRb6HsvbzczzIV2yyL2Bq4=;
        b=e4HDy2xGpHRW9y6wDdmzNwc9cXZ/6tfS1RbqUOBMCMUONAC3vZ4I6Neja1e8muNhWi
         CCr7hOWZPmeMH7BuKjfY4bKiZMUnynwS49+f2evJLnEQDNzdu0Ml/OC/ty7hHaNm7cby
         6bu1lVfIe6Fxyb3f87+JlzQU/aM9Z6qW9nFPg=
In-Reply-To: <bkwpSnItbJM.A.o3.YNCSOB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Tetsuo Handa <penguin-kernel-1yMVhJb1mP/7nzcFbJAaVXf5DAMn2ifp@public.gmane.org>, peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org

On Sun, 14 Aug 2011, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.39 and 3.0.
>
> The following bug entry is on the current list of known regressions
> introduced between 2.6.39 and 3.0.  Please verify if it still should
> be listed and let the tracking team know (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=39342
> Subject		: [3.0.0-rc6-git7] possible recursive locking at cache_alloc_refill
> Submitter	: Tetsuo Handa <penguin-kernel-1yMVhJb1mP/7nzcFbJAaVXf5DAMn2ifp@public.gmane.org>
> Date		: 2011-07-11 12:37 (35 days old)
> Message-ID	: <201107112137.FAD00545.SHtLOFOJOMFQFV-JPay3/Yim36HaxMnTkn67Xf5DAMn2ifp@public.gmane.org>
> References	: http://marc.info/?l=linux-kernel&m=131038788902151&w=2

Tetsuio, did Peter's commit 30765b9 ("slab, lockdep: Annotate the locks 
before using them") and commit 83835b3 ("slab, lockdep: Annotate slab -> 
rcu -> debug_object -> slab") in Linus' git fix this for you?

 			Pekka
