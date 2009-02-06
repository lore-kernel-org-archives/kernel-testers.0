From: Christoph Hellwig <hch-jcswGhMUV9g@public.gmane.org>
Subject: Re: [Bug #12497] new barrier warnings in 2.6.29-rc1
Date: Fri, 6 Feb 2009 09:12:32 +0100
Message-ID: <20090206081232.GA31358@lst.de>
References: <kkuKoQJIW-D.A.61C.auYiJB@chimera> <pWZw1SZjMCH.A.W2G.rvYiJB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <pWZw1SZjMCH.A.W2G.rvYiJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Christoph Hellwig <hch-jcswGhMUV9g@public.gmane.org>, Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, Tejun Heo <tj-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>

On Wed, Feb 04, 2009 at 11:23:59AM +0100, Rafael J. Wysocki wrote:
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12497
> Subject		: new barrier warnings in 2.6.29-rc1
> Submitter	: Christoph Hellwig <hch-jcswGhMUV9g@public.gmane.org>
> Date		: 2009-01-12 15:46 (24 days old)
> References	: http://marc.info/?l=linux-kernel&m=123177528217154&w=4
> Handled-By	: Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>


We're now done to a single warning per mount instead of the previous
two:

[  485.307225] end_request: I/O error, dev vdb, sector 0
[  485.604639] Filesystem "vdb": Disabling barriers, trial barrier write failed
[  485.627352] XFS mounting filesystem vdb

but it's still around.
