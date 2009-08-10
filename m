From: Chris Clayton <chris2553-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Subject: Re: [Bug #13846] LEDs switched off permanently by power saving with rt61pci driver
Date: Mon, 10 Aug 2009 11:11:16 +0100
Message-ID: <200908101111.16762.chris2553@googlemail.com>
References: <AuPdDySr74O.A.5LC.Pj1fKB@chimera> <u1L1PAbl8zG.A.EjD.3j1fKB@chimera>
Reply-To: chris2553-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:from:reply-to:to:subject:date
         :user-agent:cc:references:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:message-id;
        bh=Ub5SDwBqt38AB0PRE4RgtLkugkHFBnQ+7WsRou45r8g=;
        b=Yf58M+qO49kryJZ6oRd2+Ca4k7mJX2Wi+mLvSrKma7ze+pMeYv1+juHakfZGa/r2Uc
         if9q4/+40D7EMaS92oAHaswoI0T5fubdQWXsKgNuWphZNRLjwYu8GBBtJeEfPGaNDvP9
         ZhjTqpJieVXNWYX5IH0Vscu23eADahwKtml6U=
In-Reply-To: <u1L1PAbl8zG.A.EjD.3j1fKB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Hi Rafael,

On Sunday 09 August 2009, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.30.  Please verify if it still should be listed and let me know
> (either way).
>

Ivo sent a test patch for this and I tested it., but without success. I reported my findings but 
didn't get a reply. See http://marc.info/?l=linux-wireless&m=124940189007154&w=4.

I suspect the failure is due to the same PS hardware probelms that were at the route of my original 
report.. Unless one of the wireless folks say otherwise, I think we should close this on the basis 
of busted hardware. I'm happy to simply eject the card and re-insert it now that I have some udev 
scripts to tear down the wireless configuration on the ejection and set it uop again when the card 
is re-inserted.

Thanks

Chris


>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13846
> Subject		: LEDs switched off permanently by power saving with rt61pci
> driver Submitter	: Chris Clayton <chris2553-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
> Date		: 2009-07-13 8:27 (28 days old)
> References	: http://marc.info/?l=linux-kernel&m=124747418828398&w=4


-- 
No, Sir; there is nothing which has yet been contrived by man, by which so much happiness is 
produced as by a good tavern or inn - Doctor Samuel Johnson
