From: =?utf-8?Q?Am=C3=A9rico?= Wang <xiyou.wangcong-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12208] uml is very slow on 2.6.28 host
Date: Sun, 22 Feb 2009 21:58:18 +0800
Message-ID: <20090222135818.GA12782@hack.private>
References: <sTyoMUwdm9B.A.QCH.U40lJB@chimera> <ROx6X68CGJG.A.Y3B.t50lJB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:date:from:to:cc:subject
         :message-id:references:mime-version:content-type:content-disposition
         :in-reply-to:user-agent;
        bh=A/t0SsGKHn7SoeL8WdiUWwwEbb0vzxM1UfEqGIV0qXw=;
        b=PTBqJ8xVTFijljtdRf/uNl8sOi6L2UMPFquxBxn99bue6FCaPMDfBW5RmO22eKa4Hq
         8qvC+qKEp/zOcc3A+o7+erJE/S5/k4cQ7lGpojeECyw6IzQ8fa1NJ2kimjU4NpUNovLr
         T0Dv3xt79U8ua/tBEOm39HBLbZ7UXp90o5XSk=
Content-Disposition: inline
In-Reply-To: <ROx6X68CGJG.A.Y3B.t50lJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Miklos Szeredi <miklos-sUDqSbJrdHQHWmgEVkV9KA@public.gmane.org>

On Sat, Feb 14, 2009 at 09:50:19PM +0100, Rafael J. Wysocki wrote:
>This message has been generated automatically as a part of a report
>of regressions introduced between 2.6.27 and 2.6.28.
>
>The following bug entry is on the current list of known regressions
>introduced between 2.6.27 and 2.6.28.  Please verify if it still should
>be listed and let me know (either way).
>
>
>Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12208
>Subject		: uml is very slow on 2.6.28 host
>Submitter	: Miklos Szeredi <miklos-sUDqSbJrdHQHWmgEVkV9KA@public.gmane.org>
>Date		: 2008-12-12 9:35 (65 days old)
>References	: http://marc.info/?l=linux-kernel&m=122907463518593&w=4

Hello, Miklos!

I can't reproduce this on host 2.6.28.7 with uml guest of current git.
Have you tried 2.6.28.7? Does it have the same problem?

Thanks.


-- 
"Against stupidity, the gods themselves, contend in vain."
