From: Borislav Petkov <petkovbb-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Subject: Re: [Bug #14948] EHCI resume sysfs duplicates
Date: Mon, 11 Jan 2010 07:05:41 +0100
Message-ID: <20100111060541.GA19865@liondog.tnic>
References: <wnS54-l8PVO.A.TlF.oMlSLB@chimera>
 <omZ8aBZReyD.A.1WH.ONlSLB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:received:date:from:to:cc
         :subject:message-id:mail-followup-to:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=6iwJsC31qP/u09iShyRD2I74YbX07l5FNcWByW8L0+Q=;
        b=ueACJ7vTHr6zsACEQRkfbYo8QboOTuBFY161SKOLtIzMT2OdPFXAB5KtTB8OiZ22Wc
         iazFzOkpghoSkGonc4a+I/Z6lTCWXPLu8AITAirHH3T6zHuAYvk8H9kg/3G22hQhLK9U
         3M8VQ+vhhjkuDEX2wMKwxwdFVDWi5MbKNJk6Y=
Content-Disposition: inline
In-Reply-To: <omZ8aBZReyD.A.1WH.ONlSLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Sun, Jan 10, 2010 at 11:32:55PM +0100, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.32.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14948
> Subject		: EHCI resume sysfs duplicates
> Submitter	: Borislav Petkov <petkovbb-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
> Date		: 2009-12-26 9:36 (16 days old)
> References	: http://marc.info/?l=linux-kernel&m=126182020615709&w=4

Preliminary and tested fix is at LKML-Reference: <20100105220829.GA31569@xanatos>

-- 
Regards/Gruss,
    Boris.
