From: Johan Hovold <jhovold-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #15038] drm/ksm: fbdev blanking regression
Date: Sun, 24 Jan 2010 23:45:16 +0100
Message-ID: <20100124224516.GA20080@localhost>
References: <md-TZL3UUvL.A.FiE.xJMXLB@chimera>
 <hE3x9c-4KZM.A.4_F.ZKMXLB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:received:date:from:to:cc
         :subject:message-id:references:mime-version:content-type
         :content-disposition:in-reply-to:user-agent;
        bh=bXkLDqoez1m9jmz8JLk4JAqKovQt3PDDwf/Cc8Abkoc=;
        b=TuGfIScslAxcekdNZW+o4BP9xJKzI7ggmGKfN1mHiRHH2rIW7hIV0br6kpEYTgZ2vJ
         0/8pitqRnuatSRt3adf9QDUl1sJ+FkOLTcrV9Gb1RIKkIBTEuMbe74YvksTBQnWz9EGZ
         /t9zVKI1WCaTLsSRSlrGuqmgEtCT/IEOUaIiY=
Content-Disposition: inline
In-Reply-To: <hE3x9c-4KZM.A.4_F.ZKMXLB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Dave Airlie <airlied-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, James Simmons <jsimmons-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, Johan Hovold <jhovold-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Sun, Jan 24, 2010 at 11:04:36PM +0100, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.32.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15038
> Subject		: drm/ksm: fbdev blanking regression
> Submitter	: Johan Hovold <jhovold-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date		: 2010-01-06 17:00 (19 days old)
> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=731b5a15a3b1474a41c2ca29b4c32b0f21bc852e
> References	: http://marc.info/?l=linux-kernel&m=126279726418748&w=4
> Handled-By	: James Simmons <jsimmons-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>

Issue remains in rc5.

/Johan
