From: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12038] Suspend regression in stable kernel 2.6.27.4 on
 Mac mini Core Duo
Date: Mon, 24 Nov 2008 00:32:42 -0800
Message-ID: <1227515562.3108.30.camel@LiNuX>
References: <sBqd4qMeLzC.A.mgB.B7HKJB@chimera>
	 <vyitTh0pP2N.A.nJC.c7HKJB@chimera>  <20081124080334.GA4598@dose.home.local>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:subject:from:to:cc
         :in-reply-to:references:content-type:date:message-id:mime-version
         :x-mailer:content-transfer-encoding;
        bh=9yLoGwi4KpS2j8IZvZcjXDcOF25Qj60bTMNlVol6vqY=;
        b=tESOEc0xD2RkVWJnWtPnC+JI6Pca0rJ9kErvtcY6KescAJ9rRAI0SFL+0UG6zm/RmI
         0E/5/rKBQj43LbCa6YwhDmaf+6VbrD28oV3zTHvUFArIWSAel+7hbDR6C36OeXOp1/xJ
         lhlktUk2tAsVy9X6O/Y8xcZwalbTOepVmc1Gk=
In-Reply-To: <20081124080334.GA4598-z7fNteJZwjmqk56C3691EA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Tino Keitel <tino.keitel-Mmb7MZpHnFY@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Mon, 2008-11-24 at 09:03 +0100, Tino Keitel wrote:
> On Sat, Nov 22, 2008 at 21:28:19 +0100, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.27.  Please verify if it still should be listed and let me know
> > (either way).
> 
> Hi,
> 
> 2.6.28-rc6 (or more precisely:
> ed313489badef16d700f5a3be50e8fd8f8294bc8) still hangs my Mac after
> resume, and git log drivers/acpi/sleep/main.c shows no relevant commits.
> 
> Regards,
> Tino
> --
> To unsubscribe from this list: send the line "unsubscribe linux-kernel" in
> the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at  http://www.tux.org/lkml/

I'm not getting a freeze here(was getting strange cpu frequencies
though); My setup here is the latest xserver from intrepid
readeon, and s2ram app. echo mem > /sys/power/state gives
me a black screen, then an instant reboot. s2ram recovers
as expected. Although I'm not sure what the setup is with macmini,
I've a macbook pro ati chipset.

regards;
-- 
Justin P. Mattock <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
