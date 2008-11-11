From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #11829] Kernel 2.6.26.5 -&gt; 2.6.27.2 [USB REGRESSION] (USB -&gt; D_STATE)
Date: Tue, 11 Nov 2008 17:38:20 +0100
Message-ID: <200811111738.20759.rjw@sisk.pl>
References: <A3oCZU7cpuO.A.ChB.ZZ1FJB@chimera> <200811111453.34386.rjw@sisk.pl> <Pine.LNX.4.64.0811110938500.22093@cnc.isely.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Pine.LNX.4.64.0811110938500.22093-Ea2Jjc6YRc5If6P1QZMOBw@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Mike Isely <isely-e+AXbWqSrlAAvxtiuMwx3w@public.gmane.org>
Cc: Greg KH <greg-U8xfFu+wG4EAvxtiuMwx3w@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>, Justin Piszcz <jpiszcz-BP4nVm5VUdNhbmWW9KSYcQ@public.gmane.org>

On Tuesday, 11 of November 2008, Mike Isely wrote:
> On Tue, 11 Nov 2008, Rafael J. Wysocki wrote:
> 
> > On Tuesday, 11 of November 2008, Greg KH wrote:
> > > On Sun, Nov 09, 2008 at 08:43:22PM +0100, Rafael J. Wysocki wrote:
> > > > This message has been generated automatically as a part of a report
> > > > of regressions introduced between 2.6.26 and 2.6.27.
> > > > 
> > > > The following bug entry is on the current list of known regressions
> > > > introduced between 2.6.26 and 2.6.27.  Please verify if it still should
> > > > be listed and let me know (either way).
> > > > 
> > > > 
> > > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11829
> > > > Subject		: Kernel 2.6.26.5 -&gt; 2.6.27.2 [USB REGRESSION] (USB -&gt; D_STATE)
> > > > Submitter	: Justin Piszcz <jpiszcz-BP4nVm5VUdNhbmWW9KSYcQ@public.gmane.org>
> > > > Date		: 2008-10-19 11:26 (22 days old)
> > > > References	: http://marc.info/?l=linux-kernel&m=122441560120027&w=4
> > > > Handled-By	: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
> > > > 		  Mike Isely <isely-2vzrQ03IO+5eoWH0uzbU5w@public.gmane.org>
> > > > Patch		: http://linuxtv.org/hg/~mcisely/pvrusb2/rev/0bb411d8d2e4
> > > 
> > > This has been fixed already in .27 and in mainline with a patch from
> > > Alan.
> > 
> > OK, closed it.
> > 
> > Do you remember which of the Alan's patches is that?
> 
> It wasn't a patch from Alan.  It was from me.  The commit ID is 
> c82732a42896364296599b0f73f01c5e3fd781ae

OK, thanks.

I added the "Fixed by" information to the bug entry, for the record.

Rafael
