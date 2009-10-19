From: Christoph Hellwig <hch-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Subject: Re: [Bug #14141] order 2 page allocation failures in iwlagn
Date: Mon, 19 Oct 2009 13:01:15 -0400
Message-ID: <20091019170115.GA4593@infradead.org>
References: <3onW63eFtRF.A.xXH.oMTxKB@chimera> <20091014103002.GA5027@csn.ul.ie> <200910141510.11059.elendil@planet.nl> <200910190133.33183.elendil@planet.nl> <20091019140151.GC9036@csn.ul.ie> <20091019161815.GA11487@think>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20091019161815.GA11487@think>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Chris Mason <chris.mason-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>, Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>

On Tue, Oct 20, 2009 at 01:18:15AM +0900, Chris Mason wrote:
> Waiting doesn't make it synchronous from the elevator point of view ;)
> If you're using WB_SYNC_NONE, it's a async write.  WB_SYNC_ALL makes it
> a sync write.  I only see WB_SYNC_NONE in vmscan.c, so we should be
> using the async congestion wait.  (the exception is xfs which always
> does async writes).

That's only because those people who did the global sweep did not bother
to convert it or even tell the list about it.  I have a patch in my
QA queue to change it..
