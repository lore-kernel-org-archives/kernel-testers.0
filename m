From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: 2.6.30-rc2-git2: Reported regressions from 2.6.29
Date: Fri, 17 Apr 2009 23:38:35 +0200
Message-ID: <200904172338.36389.rjw@sisk.pl>
References: <EJaiQ4Wfaz.A.3YG.4v85JB@chimera> <20090417190943.411479vadrij472v@mail.your-server.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090417190943.411479vadrij472v-3kKKDy/3F8MR5xTLlF7YiBvVK+yQ3ZXh@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Thomas Meyer <thomas-VsYtu1Qij5c@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Friday 17 April 2009, Thomas Meyer wrote:
> 
> Zitat von "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>:
> 
> > If you know of any other unresolved regressions from 2.6.29, please  
> > let me know
> > either and I'll add them to the list.  Also, please let me know if any of the
> > entries below are invalid.
> 
> Two things on 2.6.30-rc2:
> 
> 1) Kernel panic while shutting down the system:
> http://m3y3r.de/wordpress/?p=67

Can you pleaes open a Bugzilla entry for this one (please add my address to the
CC list of the bug entry)?

> 2) Backlight daemon dies (hald-addon-macbookpro-backlight). Don't know why.

Isn't that bug #13048?

Rafael
