From: Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>
Subject: Re: [Bug #11276] build error: CONFIG_OPTIMIZE_INLINING=y causes gcc 4.2 to do stupid things
Date: Wed, 17 Sep 2008 08:26:50 -0600
Message-ID: <200809170826.51292.bjorn.helgaas@hp.com>
References: <j3zWxt-CgYL.A.WTF.bbsyIB@albercik> <48CAD51D.4060908@oracle.com> <200809122319.18633.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200809122319.18633.rjw-KKrjLPT3xs0@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Cc: Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

On Friday 12 September 2008 03:19:17 pm Rafael J. Wysocki wrote:
> On Friday, 12 of September 2008, Randy Dunlap wrote:
> > Rafael J. Wysocki wrote:
> > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11276
> > > Subject		: build error: CONFIG_OPTIMIZE_INLINING=y causes gcc 4.2 to do stupid things
> > > Submitter	: Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
> > > Date		: 2008-08-06 17:18 (38 days old)
> > > References	: http://marc.info/?l=linux-kernel&m=121804329014332&w=4
> > > 		  http://lkml.org/lkml/2008/7/22/353
> > > Handled-By	: Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>
> > > Patch		: http://lkml.org/lkml/2008/7/22/364

Thanks for pointing out the fix that should have been obvious,
Dave.  That's a much better solution than sprinkling #ifdef
CONFIG_PNP through drivers.

Rafael, in case you missed the checkin, it's commit
ef3d7714f6b75b51825ad0384b5ce48358427e50

Bjorn
