From: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 3/3] vmscan: Force kswapd to take notice faster when
	high-order watermarks are being hit
Date: Wed, 4 Nov 2009 02:08:15 +0000
Message-ID: <20091104020815.GH22046@csn.ul.ie>
References: <1256650833-15516-1-git-send-email-mel@csn.ul.ie> <200911032301.59662.elendil@planet.nl> <20091103220808.GF22046@csn.ul.ie> <200911040101.50194.elendil@planet.nl> <20091104011811.GG22046@csn.ul.ie>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20091104011811.GG22046-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, "linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org" <linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org>, Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>, Sven Geggus <lists-+AJD3D7QEjjt/htJsj1pd9AswbaBtrod@public.gmane.org>, Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Tobias Oetiker <tobi-7K0TWYW2a3pyDzI6CaY1VQ@public.gmane.org>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Stephan von Krawczynski <skraw-DcQCyzbjH0jQT0dZR+AlfA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Wed, Nov 04, 2009 at 01:18:11AM +0000, Mel Gorman wrote:
> > From vmstat for .31.1:
> > kswapd_highorder_rewakeup 20
> > kswapd_slept_prematurely_fast 307
> > kswapd_slept_prematurely_slow 105
> > 
> 
> This is useful.
> 
> The high premature_fast shows that after kswapd apparently finishes its work,
> the high waterwater marks are being breached very quickly (the fast counter
> being positive). The "slow" counter is even worse. Your machine is getting
> from the high to low watermark quickly without kswapd noticing and processes
> depending on the atomics are not waiting long enough.
> 

Sorry, that should have been

 The premature_fast shows that after kswapd finishes its work, the low
 waterwater marks are being breached very quickly as kswapd is being rewoken
 up. The "slow" counter is slightly worse. Just after kswapd sleeps, the
 high watermark is being breached again.

Either counter being positive implies that kswapd is having to do too
much work while parallel allocators are chewing up the high-order pages
quickly. The effect of the patch should still be to delay the rate high-order
pages are consumed but it assumes there are enough high-order requests that
can go to sleep.

Mentioning sleep, I'm going to get some.

-- 
Mel Gorman
Part-time Phd Student                          Linux Technology Center
University of Limerick                         IBM Dublin Software Lab
