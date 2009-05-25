From: Bartlomiej Zolnierkiewicz <bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13371] s2disk hangs with kernel 2.6.29 and later, SATA, Gigabyte EG45M-DS2H
Date: Mon, 25 May 2009 14:48:40 +0200
Message-ID: <200905251448.40907.bzolnier@gmail.com>
References: <GtY7d2eWpoK.A.ioC.MQcGKB@chimera> <WCcYF-TAbJC.A.51C.SQcGKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:from:to:subject:date
         :user-agent:cc:references:in-reply-to:mime-version
         :content-disposition:message-id:content-type
         :content-transfer-encoding;
        bh=oLV0G7GXRbxoIoRgqlUaBds1VxwQuBUUXiHtPnzynTQ=;
        b=dwhhMLrfDlhmk/K9VJiGmGfJhDv1MMIZlZYbYwPymrbSa3yD9in/+oepm+/r0uY686
         Ra0r2639rkm1tvtZNmgBhVSo3/ME37XYKE54zamage0Du2UWpXT9hFDjCEzH6YRnUffI
         fP0EBGnmIHz8lXrWqusPTo55UrooGWF6tHSr4=
In-Reply-To: <WCcYF-TAbJC.A.51C.SQcGKB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Richard Atterer <richard-2/EmM+jwkBzwc4Swprx3xw@public.gmane.org>

On Sunday 24 May 2009 21:31:20 Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.28 and 2.6.29.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.28 and 2.6.29.  Please verify if it still should
> be listed and let me know (either way).

Yep.

> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13371
> Subject		: s2disk hangs with kernel 2.6.29 and later, SATA, Gigabyte EG45M-DS2H
> Submitter	: Richard Atterer <richard-2/EmM+jwkBzwc4Swprx3xw@public.gmane.org>
> Date		: 2009-05-16 22:51 (9 days old)
> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=295f00042aaf6b553b5f37348f89bab463d4a469

Nope.

> References	: http://marc.info/?l=linux-kernel&m=124251446428166&w=4
> Handled-By	: Bartlomiej Zolnierkiewicz <bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

Casually-Handled-By
