From: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 3/3] vmscan: Force kswapd to take notice faster when
	high-order watermarks are being hit
Date: Wed, 4 Nov 2009 15:48:53 +0000
Message-ID: <20091104154853.GM22046@csn.ul.ie>
References: <1256650833-15516-1-git-send-email-mel@csn.ul.ie> <200911040101.50194.elendil@planet.nl> <20091104011811.GG22046@csn.ul.ie> <200911040305.59352.elendil@planet.nl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <200911040305.59352.elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, "linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org" <linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org>, Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>, Sven Geggus <lists-+AJD3D7QEjjt/htJsj1pd9AswbaBtrod@public.gmane.org>, Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Tobias Oetiker <tobi-7K0TWYW2a3pyDzI6CaY1VQ@public.gmane.org>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Stephan von Krawczynski <skraw-DcQCyzbjH0jQT0dZR+AlfA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Wed, Nov 04, 2009 at 03:05:55AM +0100, Frans Pop wrote:
> On Wednesday 04 November 2009, Mel Gorman wrote:
> > > If you'd like me to test with the congestion_wait() revert on top of
> > > this for comparison, please let me know.
> >
> > No, there is resistance to rolling back the congestion_wait() changes
> 
> I've never promoted the revert as a solution. It just shows the cause of a 
> regression.
> 

Yeah, I still haven't managed to figure out what exactly is wrong in there
other than "something changed with timing" and writeback behaves differently. I
still don't know the why of it because I haven't digged into that area in
depth in the past and failed at reproducing this. "My desktop is fine" :/

> > from what I gather because they were introduced for sane reasons. The
> > consequence is just that the reliability of high-order atomics are
> > impacted because more processes are making forward progress where
> > previously they would have waited until kswapd had done work. Your
> > driver has already been fixed in this regard and maybe it's a case that
> > the other atomic users simply have to be fixed to "not do that".
> 
> The problem is that although my driver has been fixed so that it no longer 
> causes the SKB allocation errors, the also rather serious behavior change 
> where due to swapping my 3rd gitk takes up to twice as long to load with 
> desktop freezes of up 45 seconds or so is still there.
> 
> Although that's somewhat separate from the issue that started this whole 
> investigation, I still feel that should be sorted out as well.
> 

You're right. That behaviour sucks.

> The congestion_wait() change, even if theoretically valid, introduced a 
> very real regression IMO. Such long desktop freezes during swapping should 
> be avoided; .30 and earlier simply behaved a whole lot better in the same 
> situation.
> 

Agreed. I'll start from scratch again trying to reproduce what you're seeing
locally. I'll try breaking my network card so that it's making high-order
atomics and see where I get. Machines that were previously tied up are now
free so I might have a better chance.

-- 
Mel Gorman
Part-time Phd Student                          Linux Technology Center
University of Limerick                         IBM Dublin Software Lab
