From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #14141] order 2 page allocation failures
Date: Thu, 10 Sep 2009 23:14:59 +0200
Message-ID: <200909102315.00052.rjw@sisk.pl>
References: <2ehA7xoGvXL.A.4PB.3eBpKB@chimera> <Vm51Upp4EV.A.RWB.7eBpKB@chimera> <20090909152206.GJ24614@csn.ul.ie>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090909152206.GJ24614-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, reinette chatre <reinette.chatre-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

On Wednesday 09 September 2009, Mel Gorman wrote:
> On Sun, Sep 06, 2009 at 07:24:58PM +0200, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.30.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14141
> > Subject		: order 2 page allocation failures
> > Submitter	: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
> > Date		: 2009-09-06 7:40 (1 days old)
> > References	: http://marc.info/?l=linux-kernel&m=125222287419691&w=4
> > Handled-By	: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
> > 
> 
> AFAIK, this is still a problem. Have requested more information in
> relation to the bug. 
> 
> As an aside, the subject seems to have lost the iwlagn aspect of this
> bug.

Fixed.  I also moved the bug to "drivers/network-wireless" as it seems to
be specific to iwlagn.

Thanks,
Rafael
