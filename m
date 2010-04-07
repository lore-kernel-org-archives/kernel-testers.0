From: Frederic Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #15624] [BUG] percpu misaligned allocation
Date: Wed, 7 Apr 2010 23:59:29 +0200
Message-ID: <20100407215926.GA10002@nowhere>
References: <6Pphclm24fK.A.lSF.qsPvLB@chimera> <JVS2s9dmTsP.A.mnH.stPvLB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:received:date:from:to:cc
         :subject:message-id:references:mime-version:content-type
         :content-disposition:in-reply-to:user-agent;
        bh=o7LVVMo0d/tm2rNmFXGlEscAdloawf1dXJ3IVKuWAMQ=;
        b=w6NtooWNN+YcNEW49slFvtEN/8y2oFnAkRBQ/VUJGcyXoGpV441lAeIijd5D6CFbEV
         R9zgYdJGAjk5LlYFAKnVg1NJYKT6jH8gSbMsf+Ym9+RfwxBpdZg5pnple6odpVV+m6zx
         hSL8l+PJoFweTEHPnUmyVqJN/DywrV/kQ5NSs=
Content-Disposition: inline
In-Reply-To: <JVS2s9dmTsP.A.mnH.stPvLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Wed, Apr 07, 2010 at 11:13:49PM +0200, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a summary report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.33.  Please verify if it still should be listed and let the tracking team
> know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15624
> Subject		: [BUG] percpu misaligned allocation
> Submitter	: Frederic Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2010-03-18 4:49 (21 days old)
> Message-ID	: <20100318044930.GC5045@nowhere>
> References	: http://marc.info/?l=linux-kernel&m=126888780031992&w=2


This has been fixed with "eb1e79611cc9bfe21978230e3521e77ea2d7874a"
(perf: Correctly align perf event tracing buffer).

The ticket can be closed, thanks!
