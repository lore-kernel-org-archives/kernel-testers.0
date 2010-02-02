From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #15124] PCI host bridge windows ignored (works with pci=use_crs)
Date: Tue, 2 Feb 2010 22:13:53 +0100
Message-ID: <201002022213.53446.rjw@sisk.pl>
References: <vZZJKzCUn4G.A.CPB.F7hZLB@chimera> <201002022142.58762.rjw@sisk.pl> <20100202205031.GB13949@jgarrett.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20100202205031.GB13949-184d8XiO+QJg9hUCZPvPmw@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Jeff Garrett <jeff-184d8XiO+QJg9hUCZPvPmw@public.gmane.org>
Cc: Yinghai Lu <yinghai-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>, Linux PCI <linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Tuesday 02 February 2010, Jeff Garrett wrote:
> On Tue, Feb 02, 2010 at 09:42:58PM +0100, Rafael J. Wysocki wrote:
> > On Monday 01 February 2010, Yinghai Lu wrote:
> > > On 01/31/2010 04:22 PM, Rafael J. Wysocki wrote:
> > > > This message has been generated automatically as a part of a report
> > > > of recent regressions.
> > > > 
> > > > The following bug entry is on the current list of known regressions
> > > > from 2.6.32.  Please verify if it still should be listed and let me know
> > > > (either way).
> > > > 
> > > > 
> > > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15124
> > > > Subject		: PCI host bridge windows ignored (works with pci=use_crs)
> > > > Submitter	: Jeff Garrett <jeff-184d8XiO+QJg9hUCZPvPmw@public.gmane.org>
> > > > Date		: 2010-01-13 5:37 (19 days old)
> > > > References	: http://marc.info/?l=linux-kernel&m=126336296600307&w=4
> > > > Handled-By	: Yinghai Lu <yinghai-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
> > > > 		  Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>
> > > > 
> > > 
> > > should be closed.
> > 
> > Is there a fix in the Linus' tree?
> > 
> > Rafael
> 
> Yes, it is fixed by commit e8e06eae4ffd683931b928f460c11c40cd3f7fd8

Thanks, closing.

Rafael
