From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: Re: [Bug #14862] intel-agp breaks X, regression from 2.6.31
Date: Tue, 29 Dec 2009 22:34:31 +0100
Message-ID: <200912292234.31575.rjw@sisk.pl>
References: <oBElxfTZdhL.A.bx.-vhOLB@chimera> <20091229184220.GO19249@aehallh.com> <20091229185926.GP19249@aehallh.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1752883AbZL2VeU@vger.kernel.org>
In-Reply-To: <20091229185926.GP19249@aehallh.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: "Zephaniah E. Hull" <warp-spam_kernel@aehallh.com>, David Woodhouse <david.woodhouse@intel.com>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>

On Tuesday 29 December 2009, Zephaniah E. Hull wrote:
> On Tue, Dec 29, 2009 at 01:42:20PM -0500, Zephaniah E. Hull wrote:
> > On Tue, Dec 29, 2009 at 04:28:51PM +0100, Rafael J. Wysocki wrote:
> > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14862
> > > Subject		: intel-agp breaks X, regression from 2.6.31
> > > Submitter	: Zephaniah E. Hull. <warp-spam_kernel@aehallh.com>
> > > Date		: 2009-12-22 22:59 (8 days old)
> > 
> > I plan on testing 2.6.32.2 later today in hopes that some of the IOMMU
> > changes will have done something in regards to this.
> 
> #14627 and this bug are duplicates.
> 
> Bugs #14900, and #14728 look very suspiciously like they might be the
> same thing as well.
> 
> I would be interested to see if commenting out:
> '#define USE_PCI_DMA_API 1' in drivers/char/agp/intel-agp.c fixes the
> problem for those bugs as well.
> 
> I suspect that some better run time checking is called for here.

Thanks for the update.

David, has there been any progress with bug #14627?

Rafael
