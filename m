From: Greg KH <greg-U8xfFu+wG4EAvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12496] swsusp cannot find resume device (sometimes)
Date: Sun, 8 Feb 2009 18:27:00 -0800
Message-ID: <20090209022700.GA10979@kroah.com>
References: <AIghyjFgMFP.A.uZD._10jJB@chimera> <sWhNs83kKPE.A.gWH.s30jJB@chimera> <20090208163817.6a53d026@infradead.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20090208163817.6a53d026-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Arjan van de Ven <arjan-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Sun, Feb 08, 2009 at 04:38:17PM -0800, Arjan van de Ven wrote:
> On Sun,  8 Feb 2009 20:21:39 +0100 (CET)
> "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> 
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.28.  Please verify if it still should be listed and let me
> > know (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12496
> > Subject		: swsusp cannot find resume device (sometimes)
> > Submitter	: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
> > Date		: 2009-01-09 12:24 (31 days old)
> > References	:
> > http://marc.info/?l=linux-kernel&m=123150395731165&w=4
> > Handled-By	: Arjan van de Ven <arjan-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
> > Patch		:
> > http://marc.info/?l=linux-kernel&m=123156441218358&w=4
> > http://marc.info/?t=123156453100002&r=1&w=4
> > 
> > 
> 
> the patches are in -mm waiting for gregkh to pick them up and push...

Ok, I'm totally confused now, care to point out exactly which ones I
should be picking up and pushing?

thanks,

greg "i'm slow, humor me" k-h
