From: "Zephaniah E. Hull" <warp-spam_kernel-K3duNNWoiDlBDgjK7y7TUQ@public.gmane.org>
Subject: Re: [Bug #14862] intel-agp breaks X, regression from 2.6.31
Date: Tue, 29 Dec 2009 13:59:26 -0500
Message-ID: <20091229185926.GP19249@aehallh.com>
References: <oBElxfTZdhL.A.bx.-vhOLB@chimera>
 <srmJ8vMxKPH.A.ujC.cwhOLB@chimera>
 <20091229184220.GO19249@aehallh.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20091229184220.GO19249-K3duNNWoiDlBDgjK7y7TUQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, warp-spam_kernel-K3duNNWoiDlBDgjK7y7TUQ@public.gmane.org

On Tue, Dec 29, 2009 at 01:42:20PM -0500, Zephaniah E. Hull wrote:
> On Tue, Dec 29, 2009 at 04:28:51PM +0100, Rafael J. Wysocki wrote:
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14862
> > Subject		: intel-agp breaks X, regression from 2.6.31
> > Submitter	: Zephaniah E. Hull. <warp-spam_kernel-K3duNNWoiDlBDgjK7y7TUQ@public.gmane.org>
> > Date		: 2009-12-22 22:59 (8 days old)
> 
> I plan on testing 2.6.32.2 later today in hopes that some of the IOMMU
> changes will have done something in regards to this.

#14627 and this bug are duplicates.

Bugs #14900, and #14728 look very suspiciously like they might be the
same thing as well.

I would be interested to see if commenting out:
'#define USE_PCI_DMA_API 1' in drivers/char/agp/intel-agp.c fixes the
problem for those bugs as well.

I suspect that some better run time checking is called for here.

Zephaniah E. Hull.
(And please keep me on the CC list, I am not subscribed to LKML or KTL.)
