From: Christoph Hellwig <hch@lst.de>
Subject: Re: [Bug #12405] oops in __bounce_end_io_read under kvm
Date: Sat, 14 Mar 2009 16:04:07 +0100
Message-ID: <20090314150407.GB27604@lst.de>
References: <r4SCKuuJK0F.A.UrB.QdarJB@chimera> <pRIaSZpQ1ON.A.TND.CearJB@chimera>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1756259AbZCNPEa@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <pRIaSZpQ1ON.A.TND.CearJB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Christoph Hellwig <hch@lst.de>, Jens Axboe <jens.axboe@oracle.com>

On Tue, Mar 03, 2009 at 08:41:32PM +0100, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.27 and 2.6.28.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.27 and 2.6.28.  Please verify if it still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12405
> Subject		: oops in __bounce_end_io_read under kvm
> Submitter	: Christoph Hellwig <hch@lst.de>
> Date		: 2008-12-26 17:36 (68 days old)
> References	: http://marc.info/?l=linux-kernel&m=123031303400676&w=4

I haven't been able to hit this anymore for a while.
