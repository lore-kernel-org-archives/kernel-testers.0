From: Chris Clayton <chris2553-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Subject: Re: [Bug #29322] System lockup with 2.6.38-rc4+
Date: Mon, 21 Feb 2011 22:14:27 +0000
Message-ID: <201102212214.27880.chris2553@googlemail.com>
References: <xmAo3o4v0VF.A.eLH.HWtYNB@chimera> <5HY1m9_-mkI.A.tTH.QWtYNB@chimera>
Reply-To: chris2553-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:from:reply-to:to:subject:date:user-agent:cc
         :references:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:message-id;
        bh=dVKD7zgtxAMU2ZB4lNwoj02vyYZeGiLCG4kUUi5fRjw=;
        b=tYV4Yj+EYYkg6I61uxOYkP55CptwatXhRPHwDs4ZMHywlpBqttRBB2u57wSV3jcb/G
         QADmQvHqeNfcVoZOM7f2D0XQtpyOtYUi5exTf/11aNHyFlChzFLqIF6TC2gu+5nVL9un
         67ede+3GQnK7ZocwHk2VdnQ/MvyTwO5gQjxnA=
In-Reply-To: <5HY1m9_-mkI.A.tTH.QWtYNB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>

On Monday 21 February 2011, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a summary report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.37.  Please verify if it still should be listed and let the
> tracking team know (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=29322
> Subject		: System lockup with 2.6.38-rc4+
> Submitter	: Chris Clayton <chris2553-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
> Date		: 2011-02-14 17:31 (8 days old)
> Message-ID	: <201102141731.29331.chris2553-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
> References	: http://marc.info/?l=linux-kernel&m=129770471724602&w=2

Yes, I think this should stay open. I haven't heard anything since I replied to 
Ben Gamari on 14 February. having said that, I haven't experienced the lock up 
again since I reported it. Perhaps it's been fixed without me knowing.

Chris

-- 
The more I see, the more I know. The more I know, the less I understand. 
Changing Man - Paul Weller
