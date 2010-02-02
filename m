From: Jeff Garrett <jeff@jgarrett.org>
Subject: Re: [Bug #15124] PCI host bridge windows ignored (works with pci=use_crs)
Date: Tue, 2 Feb 2010 14:50:32 -0600
Message-ID: <20100202205031.GB13949@jgarrett.org>
References: <vZZJKzCUn4G.A.CPB.F7hZLB@chimera> <d3IDKWHT5gE.A.ydC.r7hZLB@chimera> <4B666960.8000304@kernel.org> <201002022142.58762.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <linux-pci-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <201002022142.58762.rjw@sisk.pl>
Sender: linux-pci-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Yinghai Lu <yinghai@kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Bjorn Helgaas <bjorn.helgaas@hp.com>, Linux PCI <linux-pci@vger.kernel.org>

On Tue, Feb 02, 2010 at 09:42:58PM +0100, Rafael J. Wysocki wrote:
> On Monday 01 February 2010, Yinghai Lu wrote:
> > On 01/31/2010 04:22 PM, Rafael J. Wysocki wrote:
> > > This message has been generated automatically as a part of a report
> > > of recent regressions.
> > > 
> > > The following bug entry is on the current list of known regressions
> > > from 2.6.32.  Please verify if it still should be listed and let me know
> > > (either way).
> > > 
> > > 
> > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15124
> > > Subject		: PCI host bridge windows ignored (works with pci=use_crs)
> > > Submitter	: Jeff Garrett <jeff@jgarrett.org>
> > > Date		: 2010-01-13 5:37 (19 days old)
> > > References	: http://marc.info/?l=linux-kernel&m=126336296600307&w=4
> > > Handled-By	: Yinghai Lu <yinghai@kernel.org>
> > > 		  Bjorn Helgaas <bjorn.helgaas@hp.com>
> > > 
> > 
> > should be closed.
> 
> Is there a fix in the Linus' tree?
> 
> Rafael

Yes, it is fixed by commit e8e06eae4ffd683931b928f460c11c40cd3f7fd8

-Jeff
