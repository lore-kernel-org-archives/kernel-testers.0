From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #11276] build error: CONFIG_OPTIMIZE_INLINING=y causes gcc 4.2 to do stupid things
Date: Sat, 16 Aug 2008 14:00:31 +0200
Message-ID: <200808161400.32209.rjw@sisk.pl>
References: <VYYCiQF4qDI.A.BPH.KCjnIB@albercik> <cX_-nNkxKaF.A.Fg.4CjnIB@albercik> <200808151721.08175.bjorn.helgaas@hp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200808151721.08175.bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>

On Saturday, 16 of August 2008, Bjorn Helgaas wrote:
> On Saturday 09 August 2008 04:43:51 pm Rafael J. Wysocki wrote:
> > The following bug entry is on the current list of known regressions
> > from 2.6.26.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11276
> > Subject		: build error: CONFIG_OPTIMIZE_INLINING=y causes gcc 4.2 to do stupid things
> > Submitter	: Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
> > Date		: 2008-08-06 17:18 (4 days old)
> > References	: http://marc.info/?l=linux-kernel&m=121804329014332&w=4
> > 		  http://lkml.org/lkml/2008/7/22/353
> > Handled-By	: Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>
> > Patch		: http://lkml.org/lkml/2008/7/22/364
> 
> Since I supplied a patch, I assume I don't need to do anything more.
> Let me know if my assumption is incorrect.

You don't need to do anything more, but please let me know when the patch gets
into to Linus' tree (please ignore the subsequent "should it still be listed"
messages until that happens).

Thanks,
Rafael
