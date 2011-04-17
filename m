From: Cyrill Gorcunov <gorcunov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #33252] [regression 2.6.39-rc2][bisected] "perf, x86: P4
 PMU - Read proper MSR register to catch" and NMIs
Date: Sun, 17 Apr 2011 17:05:46 +0400
Message-ID: <4DAAE5AA.1090302@gmail.com>
References: <OlQwC5HnRsN.A.ULB.OGuqNB@chimera> <_H4l51C1wXN.A.WiB.dGuqNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:message-id:date:from:user-agent:mime-version:to
         :cc:subject:references:in-reply-to:content-type
         :content-transfer-encoding;
        bh=xgZzukNWS2L4/mW5pZPJAZVT3jZfDAnfw1tJbq/7ZGc=;
        b=tj8ZUlQgiqWo9Tkt0WroBOpmvhwEebpR4Uv1ME4xWj6nq2q9PAY+mK1sv3M/UkMaum
         BYzh5m09vYcFQ6IXkwwF/mOuHAcyqoUGWGaPPhMwqvvaIZhFX17zi7tHWM47i7NNmgBZ
         uQHwintr86fbwDMPjDbm7tNj4qtYW9uDx34jU=
In-Reply-To: <_H4l51C1wXN.A.WiB.dGuqNB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Don Zickus <dzickus-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Shaun Ruffell <sruffell-mYLhy7Md7uHQT0dZR+AlfA@public.gmane.org>

On 04/17/2011 04:57 PM, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a summary report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.38.  Please verify if it still should be listed and let the tracking team
> know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=33252
> Subject		: [regression 2.6.39-rc2][bisected] "perf, x86: P4 PMU - Read proper MSR register to catch" and NMIs
> Submitter	: Shaun Ruffell <sruffell-mYLhy7Md7uHQT0dZR+AlfA@public.gmane.org>
> Date		: 2011-04-06 22:30 (12 days old)
> First-Bad-Commit: http://git.kernel.org/linus/242214f9c1eeaae40eca11e3b4d37bfce960a7cd
> Message-ID	: <20110406223036.GA15721-mYLhy7Md7uHQT0dZR+AlfA@public.gmane.org>
> References	: http://marc.info/?l=linux-kernel&m=130212907032580&w=2
> Handled-By	: Don Zickus <dzickus-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
> Patch		: http://cache.gmane.org//gmane/linux/kernel/1125621-001.bin
> 
> 

We're working on it, patch is almost done. I guess it'll be published next week.

-- 
    Cyrill
