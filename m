From: Mike Isely <isely@isely.net>
Subject: Re: [Bug #11829] Kernel 2.6.26.5 -&gt; 2.6.27.2 [USB REGRESSION]
 (USB -&gt; D_STATE)
Date: Tue, 11 Nov 2008 09:41:54 -0600 (CST)
Message-ID: <Pine.LNX.4.64.0811110938500.22093@cnc.isely.net>
References: <A3oCZU7cpuO.A.ChB.ZZ1FJB@chimera> <4B0Eqx89uNG.A.kYC.vZ1FJB@chimera>
 <20081111071301.GB13596@kroah.com> <200811111453.34386.rjw@sisk.pl>
Reply-To: Mike Isely <isely@pobox.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1752446AbYKKPmP@vger.kernel.org>
In-Reply-To: <200811111453.34386.rjw@sisk.pl>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Greg KH <greg@kroah.com>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Alan Stern <stern@rowland.harvard.edu>, Justin Piszcz <jpiszcz@lucidpixels.com>, Mike Isely at pobox <isely@pobox.com>

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
> > > Submitter	: Justin Piszcz <jpiszcz@lucidpixels.com>
> > > Date		: 2008-10-19 11:26 (22 days old)
> > > References	: http://marc.info/?l=linux-kernel&m=122441560120027&w=4
> > > Handled-By	: Alan Stern <stern@rowland.harvard.edu>
> > > 		  Mike Isely <isely@isely.net>
> > > Patch		: http://linuxtv.org/hg/~mcisely/pvrusb2/rev/0bb411d8d2e4
> > 
> > This has been fixed already in .27 and in mainline with a patch from
> > Alan.
> 
> OK, closed it.
> 
> Do you remember which of the Alan's patches is that?

It wasn't a patch from Alan.  It was from me.  The commit ID is 
c82732a42896364296599b0f73f01c5e3fd781ae

  -Mike


-- 

Mike Isely
isely @ pobox (dot) com
PGP: 03 54 43 4D 75 E5 CC 92 71 16 01 E2 B5 F5 C1 E8
