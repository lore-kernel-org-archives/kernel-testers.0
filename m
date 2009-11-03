From: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 3/3] vmscan: Force kswapd to take notice faster when
	high-order watermarks are being hit
Date: Tue, 3 Nov 2009 22:08:09 +0000
Message-ID: <20091103220808.GF22046@csn.ul.ie>
References: <1256650833-15516-1-git-send-email-mel@csn.ul.ie> <200911021832.59035.elendil@planet.nl> <20091102173837.GB22046@csn.ul.ie> <200911032301.59662.elendil@planet.nl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <200911032301.59662.elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, "linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org" <linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org>, Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>, Sven Geggus <lists-+AJD3D7QEjjt/htJsj1pd9AswbaBtrod@public.gmane.org>, Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Tobias Oetiker <tobi-7K0TWYW2a3pyDzI6CaY1VQ@public.gmane.org>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Stephan von Krawczynski <skraw-DcQCyzbjH0jQT0dZR+AlfA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Tue, Nov 03, 2009 at 11:01:50PM +0100, Frans Pop wrote:
> On Monday 02 November 2009, Mel Gorman wrote:
> > On Mon, Nov 02, 2009 at 06:32:54PM +0100, Frans Pop wrote:
> > > On Monday 02 November 2009, Mel Gorman wrote:
> > > > vmscan: Help debug kswapd issues by counting number of rewakeups and
> > > > premature sleeps
> > > >
> > > > There is a growing amount of anedotal evidence that high-order
> > > > atomic allocation failures have been increasing since 2.6.31-rc1.
> > > > The two strongest possibilities are a marked increase in the number
> > > > of GFP_ATOMIC allocations and alterations in timing. Debugging
> > > > printk patches have shown for example that kswapd is sleeping for
> > > > shorter intervals and going to sleep when watermarks are still not
> > > > being met.
> > > >
> > > > This patch adds two kswapd counters to help identify if timing is an
> > > > issue. The first counter kswapd_highorder_rewakeup counts the number
> > > > of times that kswapd stops reclaiming at one order and restarts at a
> > > > higher order. The second counter kswapd_slept_prematurely counts the
> > > > number of times kswapd went to sleep when the high watermark was not
> > > > met.
> > >
> > > What testing would you like done with this patch?
> >
> > Same reproduction as before except post what the contents of
> > /proc/vmstat were after the problem was triggered.
> 
> With a representative test I get 0 for kswapd_slept_prematurely.
> Tested with .32-rc6 + patches 1-3 + this patch.
> 

Assuming the problem actually reproduced, can you still retest with the
patch I posted as a follow-up and see if fast or slow premature sleeps
are happening and if the problem still occurs please? It's still
possible with the patch as-is could be timing related. After I posted
this patch, I continued testing and found I could get counts fairly
reliably if kswapd was calling printk() before making the premature
check so the window appears to be very small.

-- 
Mel Gorman
Part-time Phd Student                          Linux Technology Center
University of Limerick                         IBM Dublin Software Lab
