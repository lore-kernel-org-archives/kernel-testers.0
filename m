From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #12264] i915: switching from kwin in opengl mode to a VT then back to x11, x11 freezes
Date: Mon, 12 Jan 2009 09:00:20 +0100
Message-ID: <200901120900.20446.rjw@sisk.pl>
References: <nn3SOLVZ28H.A.bY.CafaJB@chimera> <nHCfeC0YLrE.A.ncC.2afaJB@chimera> <81bfc67a0901111642i37f46edar8592899d7193b863@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <81bfc67a0901111642i37f46edar8592899d7193b863-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Caleb Cushing <xenoterracide-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Monday 12 January 2009, Caleb Cushing wrote:
> so far I'm tracking with gentoo here.
> http://bugs.gentoo.org/show_bug.cgi?id=253813 and freedesktop here
> http://bugs.freedesktop.org/process_bug.cgi
> 
> and I've tested the first 2 kernel patches alone, and still have the
> issue, haven't been able to add the libdrm patch to libdrm so far.

Thanks for the update.

Rafael


> On 1/11/09, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> > This message has been generated automatically as a part of a report
> >  of regressions introduced between 2.6.27 and 2.6.28.
> >
> >  The following bug entry is on the current list of known regressions
> >  introduced between 2.6.27 and 2.6.28.  Please verify if it still should
> >  be listed and let me know (either way).
> >
> >
> >  Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=12264
> >  Subject         : i915: switching from kwin in opengl mode to a VT then back to x11, x11 freezes
> >  Submitter       : Caleb Cushing <xenoterracide-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> >  Date            : 2008-12-16 11:40 (27 days old)
> >  References      : http://marc.info/?l=linux-kernel&m=122942777030666&w=4
