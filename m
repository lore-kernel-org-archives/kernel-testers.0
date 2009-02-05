From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #12606] fb_mmap: circular locking dependency on hibernation
Date: Thu, 5 Feb 2009 02:43:42 +0100
Message-ID: <200902050243.43440.rjw@sisk.pl>
References: <kkuKoQJIW-D.A.61C.auYiJB@chimera> <pWZw1SZjMCH.A.jNE.xuYiJB@chimera> <200902041743.08010.arvidjaar@mail.ru>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200902041743.08010.arvidjaar-JGs/UdohzUI@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Andrey Borzenkov <arvidjaar-JGs/UdohzUI@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Wednesday 04 February 2009, Andrey Borzenkov wrote:
> On 4 of February 2009 13:24:06 Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> >
> > The following bug entry is on the current list of known regressions
> > from 2.6.28.  Please verify if it still should be listed and let me
> > know (either way).
> >
> >
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12606
> > Subject		: fb_mmap: circular locking dependency on hibernation
> > Submitter	: Andrey Borzenkov <arvidjaar-JGs/UdohzUI@public.gmane.org>
> > Date		: 2009-01-27 18:37 (9 days old)
> > References	: http://marc.info/?l=linux-kernel&m=123308162731408&w=4
> 
> for me it is fixed with
> http://marc.info/?l=linux-kernel&m=123365581406194&w=2 

Thanks, I've updated the bug entry.

Rafael
