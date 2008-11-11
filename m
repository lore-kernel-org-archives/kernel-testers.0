From: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
Subject: Re: [Bug #11829] Kernel 2.6.26.5 -&gt; 2.6.27.2 [USB REGRESSION]
 (USB -&gt; D_STATE)
Date: Tue, 11 Nov 2008 11:42:56 -0500 (EST)
Message-ID: <Pine.LNX.4.44L0.0811111141500.29125-100000@netrider.rowland.org>
References: <200811111453.34386.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200811111453.34386.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Greg KH <greg-U8xfFu+wG4EAvxtiuMwx3w@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Justin Piszcz <jpiszcz-BP4nVm5VUdNhbmWW9KSYcQ@public.gmane.org>, Mike Isely <isely-2vzrQ03IO+5eoWH0uzbU5w@public.gmane.org>

On Tue, 11 Nov 2008, Rafael J. Wysocki wrote:

> On Tuesday, 11 of November 2008, Greg KH wrote:
> > On Sun, Nov 09, 2008 at 08:43:22PM +0100, Rafael J. Wysocki wrote:
> > > This message has been generated automatically as a part of a report
> > > of regressions introduced between 2.6.26 and 2.6.27.
> > > 
> > > The following bug entry is on the current list of known regressions
> > > introduced between 2.6.26 and 2.6.27.  Please verify if it still should
> > > be listed and let me know (either way).
> > > 
> > > 
> > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11829
> > > Subject		: Kernel 2.6.26.5 -&gt; 2.6.27.2 [USB REGRESSION] (USB -&gt; D_STATE)
> > > Submitter	: Justin Piszcz <jpiszcz-BP4nVm5VUdNhbmWW9KSYcQ@public.gmane.org>
> > > Date		: 2008-10-19 11:26 (22 days old)
> > > References	: http://marc.info/?l=linux-kernel&m=122441560120027&w=4
> > > Handled-By	: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
> > > 		  Mike Isely <isely-2vzrQ03IO+5eoWH0uzbU5w@public.gmane.org>
> > > Patch		: http://linuxtv.org/hg/~mcisely/pvrusb2/rev/0bb411d8d2e4
> > 
> > This has been fixed already in .27 and in mainline with a patch from
> > Alan.
> 
> OK, closed it.
> 
> Do you remember which of the Alan's patches is that?

I wasn't one of mine.  The patch was written by Mike Isely: commit 
c82732a42896364296599b0f73f01c5e3fd781ae.

Alan Stern
