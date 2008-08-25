From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: 2.6.27-rc4-git1: Reported regressions from 2.6.26
Date: Mon, 25 Aug 2008 13:40:43 +0200
Message-ID: <200808251340.44993.rjw@sisk.pl>
References: <mzBsPw3QUOF.A.87F.wZGsIB@albercik> <1219625301.13162.2.camel@pasglop>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1219625301.13162.2.camel@pasglop>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Monday, 25 of August 2008, Benjamin Herrenschmidt wrote:
> 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11414
> > Subject		: Random crashes with 2.6.27-rc3 on PPC
> > Submitter	: Michael Buesch <mb-fseUSCV1ubazQB+pC5nmwQ@public.gmane.org>
> > Date		: 2008-08-23 14:10 (1 days old)
> > References	: http://marc.info/?l=linux-kernel&m=121950076812616&w=4
> 
> This appears to be a gcc bug when -fno-omit-stack-pointer is used (which
> we mostly don't need on ppc anyway except that another gcc stupidity makes
> it mandatory for -pg which ftrace needs).
> 
> We're working on a two fold workaround: removing -fno-omit-stack-pointer
> in all the cases where we don't really need it, and for when we do (ie,
> CONFIG_FTRACE becaues of -pg), using -mno-sched-epilog which seems to
> work around it.
> 
> The root cause in gcc hasn't been fully identified yet.

Thanks Ben.

I've already dropped it from the list of recent regressions.

Rafael
