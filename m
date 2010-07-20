From: Shawn Starr <shawn.starr-bJEeYj9oJeDQT0dZR+AlfA@public.gmane.org>
Subject: Re: 2.6.35-rc4-git3: Reported regressions from 2.6.34
Date: Mon, 19 Jul 2010 20:33:30 -0400
Message-ID: <201007192033.30849.shawn.starr@rogers.com>
References: <-IGZ64uxA6G.A.P0H.bLmNMB@chimera> <AANLkTiknnzWyVpqnPCpyiEVHLgkewd0zaGzLInABRe2G@mail.gmail.com> <201007082336.25201.shawn.starr@rogers.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rogers.com; s=s1024; t=1279586014; bh=qNiciKaqeEXZNKI9e9KLYrutgSlvbErVJXoYjBKGu48=; h=Received:X-Yahoo-SMTP:X-YMail-OSG:X-Yahoo-Newman-Property:From:Organization:To:Subject:Date:User-Agent:References:In-Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id; b=pDm0Wnqi/k6ypVsncB25T5Oc/GFw1mivjfIHkHN4BRwetwiCLOz09htUVJmvDs6Bw/A4yR3FPWk3zmb/Aqz8Db6CVmWKRI2TtYmpKB0QG92CyIibHCXxcBI3h4jharra+r3bwEEw1eGthXdavoYiVes//kdMMSaU+zf8pwEYM/0=
In-Reply-To: <201007082336.25201.shawn.starr-bJEeYj9oJeDQT0dZR+AlfA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>

On Thursday, July 08, 2010 11:36:25 pm Shawn Starr wrote:

<snip>

> > > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=16311
> > > Subject         : [REGRESSION][SUSPEND] 2.6.35-rcX won't suspend Lenovo
> > > W500 laptop Submitter       : Shawn Starr <shawn.starr-bJEeYj9oJeDQT0dZR+AlfA@public.gmane.org>
> > > Date            : 2010-06-28 0:45 (11 days old)
> > > Message-ID      : <201006272045.17004.shawn.starr-bJEeYj9oJeDQT0dZR+AlfA@public.gmane.org>
> > > References      :
> > > http://marc.info/?l=linux-kernel&m=127768633705286&w=2
> > 
> > I think this might be usefully bisected. Shawn?
> 
> I'll have to try bisecting this weekend. It continues in Linux sh0n.net
> 2.6.35-rc4+ #1 SMP Wed Jul 7 23:58:41 EDT 2010 x86_64 x86_64 x86_64
> GNU/Linux
> 

This continues even with no USB devices plugged in. Will try with today's 
snapshot build from Linus's tree. If this still happens, I'll see about 
bisecting.

Thanks,
Shawn.
