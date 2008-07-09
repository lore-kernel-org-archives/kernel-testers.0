From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: 2.6.26-rc9-git4: Reported regressions from 2.6.25
Date: Wed, 9 Jul 2008 16:35:21 +0200
Message-ID: <200807091635.22511.rjw@sisk.pl>
References: <4yrA-dRoNlD.A.jcB.ny-cIB@albercik> <20080708214903.b783ba84.randy.dunlap@oracle.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080708214903.b783ba84.randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Wednesday, 9 of July 2008, Randy Dunlap wrote:
> On Tue,  8 Jul 2008 23:37:43 +0200 (CEST) Rafael J. Wysocki wrote:
> 
> > Unresolved regressions
> > ----------------------
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=10872
> > Subject		: x86_64 boot hang when CONFIG_NUMA=n
> > Submitter	: Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
> > Date		: 2008-06-05 21:50 (34 days old)
> > References	: http://marc.info/?l=linux-kernel&m=121270308607116&w=4
> > 		  http://lkml.org/lkml/2008/6/11/355
> > 		  http://lkml.org/lkml/2008/6/15/117
> > 		  http://marc.info/?l=linux-kernel&m=121287638527452&w=2
> > Handled-By	: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> 
> I've spent quite some time trying to bisect this problem, but to no avail.
> I don't expect to spend more time on it, so I suppose you can just mark it as dead.

OK, I'll close it, then.

Thanks,
Rafael
