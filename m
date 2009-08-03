From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: 2.6.31-rc5: Reported regressions from 2.6.30
Date: Mon, 3 Aug 2009 17:29:37 +0200
Message-ID: <200908031729.38467.rjw@sisk.pl>
References: <Su1q3S6JjyO.A.jeB.hcgdKB@chimera> <alpine.LFD.2.01.0908021456430.3352@localhost.localdomain> <19062.48839.950183.569219@pilspetsen.it.uu.se>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <19062.48839.950183.569219-tgku4HJDRZih8lFjZTKsyTAV6s6igYVG@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Monday 03 August 2009, Mikael Pettersson wrote:
> (cc:s trimmed)
> 
> Linus Torvalds writes:
>  > 
>  > 
>  > On Sun, 2 Aug 2009, Rafael J. Wysocki wrote:
>  > > 
>  > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13896
>  > > Subject		: 2.6.31-rc4 broke expect and gcc's testsuite
>  > > Submitter	: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
>  > > Date		: 2009-07-29 11:00 (5 days old)
>  > > References	: http://marc.info/?l=linux-kernel&m=124885806406520&w=4
>  > 
>  > I bet this is the same tty bug that got fixed by Ogawa in commit 
>  > e043e42bdb. -rc5 has that fix. Mikael?
> 
> I didn't identify the actual commit, but yes, 2.6.31-rc5 makes
> gcc's testsuite work again.

Great!  I've closed the bug.

Thanks,
Rafael
