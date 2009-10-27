From: Riccardo Magliocchetti <riccardo.magliocchetti-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #14484] no video output after suspend
Date: Tue, 27 Oct 2009 22:25:31 +0100
Message-ID: <4AE7654B.6040401@gmail.com>
References: <Sj-rRjx6TwF.A.djE.vqe5KB@chimera> <6dRYo8ss7vL.A.5tE.0qe5KB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=ZIn3+XSm7Io0sH1uXTI6+F881iw0Yy26PvODvVat2Oo=;
        b=DWZNXEnAznFpGKSksAKJxS7CLZ00UDnsZ77M9hFWN0bjyKyJu9J0O9mPnRcocD45UT
         X6IYY3+nQgi8Fm+QRuoTWfHBisKces1eQY4K16VhodvHzJiWYxaYksO4oOXSEPIMJfyy
         75RFQ+21uyG/+gJ/LJ+FNhP9AS3pEZg7tCheY=
In-Reply-To: <6dRYo8ss7vL.A.5tE.0qe5KB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>

Hello Rafael,

Rafael J. Wysocki ha scritto:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.31.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14484
> Subject		: no video output after suspend
> Submitter	: Riccardo Magliocchetti <riccardo.magliocchetti-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2009-10-25 20:57 (2 days old)
> References	: http://marc.info/?l=linux-kernel&m=125650430123713&w=4
> Handled-By	: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>

Since the bad commit is around 2.6.31-rc9 i think this is a regression 
from 2.6.30 and not 2.6.31, it's me that have reported the issue so 
late. Then the patch that you added on the first comment is for another 
issue and not this one.

thanks,
riccardo
