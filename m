From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #12405] oops in __bounce_end_io_read under kvm
Date: Fri, 6 Feb 2009 16:46:46 +0100
Message-ID: <200902061646.46598.rjw@sisk.pl>
References: <a47yn9c9JrF.A.hz.L5YiJB@chimera> <CGyEB0S4BpO.A.eRC.y5YiJB@chimera> <20090206081302.GB31358@lst.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090206081302.GB31358-jcswGhMUV9g@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Christoph Hellwig <hch-jcswGhMUV9g@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>

On Friday 06 February 2009, Christoph Hellwig wrote:
> On Wed, Feb 04, 2009 at 11:58:40AM +0100, Rafael J. Wysocki wrote:
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12405
> > Subject		: oops in __bounce_end_io_read under kvm
> > Submitter	: Christoph Hellwig <hch-jcswGhMUV9g@public.gmane.org>
> > Date		: 2008-12-26 17:36 (41 days old)
> > References	: http://marc.info/?l=linux-kernel&m=123031303400676&w=4
> > Handled-By	: Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
> 
> Still around.  Btw, I'm not sure it's a regression as I only started
> using virtio_blk heavily during the 2.6.28 cycle.

Well, assuming that it is a regression raises its chances to be fixed faster. ;-)
