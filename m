From: Chris Clayton <chris2553-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Subject: Re: [Bug #16231] Noticeable slow-down in 2.6.35-rc3
Date: Mon, 21 Jun 2010 06:58:08 +0100
Message-ID: <201006210658.08740.chris2553@googlemail.com>
References: <lc60d4toGTL.A.QzD._LpHMB@chimera> <W8JfMs9cZw.A.xkE.aMpHMB@chimera>
Reply-To: chris2553-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:from:reply-to:to:subject:date
         :user-agent:cc:references:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:message-id;
        bh=mMnkl/5NR/7NlDzbBCJaptwK7FPcZqdxgktOqWKK1vI=;
        b=JcpVpUsZm6ue4DhKvqs+qYYBHoTR0kb6vdygJES920ki1OvwHdM2itnJU4AXKbTEGk
         vTKj8Jqr9ggs1UYXI3ReWc5sQp4y/z3Mo4g8Yasd3EwZAGAieAqIBdD1fyeMV5ClSxoo
         OA8Qi6mIP3k7icN3GcXoOw2O33Sq1946/fCZY=
In-Reply-To: <W8JfMs9cZw.A.xkE.aMpHMB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, John Fastabend <john.r.fastabend-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

On Sunday 20 June 2010, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a summary report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.34.  Please verify if it still should be listed and let the
> tracking team know (either way).
>

As noted below, the problem is fixed by John's patch. I added a Tested-by to the 
bugzilla report a few days ago. I guess it should stay open, however, until 
Linus has applied the patch to mainline.

>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16231
> Subject		: Noticeable slow-down in 2.6.35-rc3
> Submitter	: Chris Clayton <chris2553-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
> Date		: 2010-06-13 20:15 (8 days old)
> First-Bad-Commit:
> http://git.kernel.org/linus/597a264b1a9c7e36d1728f677c66c5c1f7e3b837
> Message-ID	: <AANLkTimDUf0N6b5PBy2wTGeAWEIY-lUvQPHQ7D7Gyrq4-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
> References	: http://marc.info/?l=linux-kernel&m=127646015226601&w=2
> Handled-By	: John Fastabend <john.r.fastabend-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
> Patch		: https://patchwork.kernel.org/patch/105859/



-- 
The more I see, the more I know. The more I know, the less I understand. 
Changing Man - Paul Weller
