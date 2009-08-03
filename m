From: Chris Clayton <chris2553-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Subject: Re: [Bug #13846] Possible regression in rt61pci driver
Date: Mon, 3 Aug 2009 19:31:27 +0100
Message-ID: <200908031931.27427.chris2553@googlemail.com>
References: <Su1q3S6JjyO.A.jeB.hcgdKB@chimera> <iZB3Pj-uj3M.A.pRC.1cgdKB@chimera>
Reply-To: chris2553-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:from:reply-to:to:subject:date
         :user-agent:cc:references:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:message-id;
        bh=xfK/qgtdsg2nz3tBVUZK07jYAwVg99M0tQiN0LKuxTM=;
        b=nIquEY23ljV2VwHFhqd1HUNelOWrWgriUQrtD+QYdiIu7KdnUsmVxwgRn1aCiAmPQX
         w70aUpVCsNlSVpSfs0pMVks3mIURv6zZJoDWWjSGjxxIkPKfnx0zykh9p08MVYE3+PhV
         nImVls+If1rhsJT7nZYMqAGpMcJAdZNiPMyu8=
In-Reply-To: <iZB3Pj-uj3M.A.pRC.1cgdKB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Hi Rafael,

On Sunday 02 August 2009, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.30.  Please verify if it still should be listed and let me know
> (either way).
>

The folks on the wireless project have concluded that the problem I reported is down to a hardware 
problem when power saving is switched on on for my Belkin cardbus wireless adapter, so now I simply 
turn power-saving off when wlan0 comes up. I did, however, ask whether anyone was going to fix the 
fact that once power-saving turns the LEDs off, they never come back on again, but I haven't had an 
answer. Is that a regression? I guess the answer is no, because power saving in the rt61pci driver 
is feature that is new to 2.6.31. Should it be fixed? I think the answer is yes, but being unable 
to do it myself, I probably don't have a vote :-)

All I can do is report that I now know how to avoid my laptop freezing and leave the decision as to 
whether it should stay on the regression list to you and the folks from the wireless project.

Thanks,

Chris

>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13846
> Subject		: Possible regression in rt61pci driver
> Submitter	: Chris Clayton <chris2553-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
> Date		: 2009-07-13 8:27 (21 days old)
> References	: http://marc.info/?l=linux-kernel&m=124747418828398&w=4


-- 
No, Sir; there is nothing which has yet been contrived by man, by which so much happiness is 
produced as by a good tavern or inn - Doctor Samuel Johnson
