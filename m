From: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Subject: Re: [PATCH 3/3] vmscan: Force kswapd to take notice faster when high-order watermarks are being hit
Date: Wed, 4 Nov 2009 21:57:21 +0100
Message-ID: <200911042157.25020.elendil@planet.nl>
References: <1256650833-15516-1-git-send-email-mel@csn.ul.ie> <200911040305.59352.elendil@planet.nl> <20091104154853.GM22046@csn.ul.ie>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20091104154853.GM22046-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, "linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org" <linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org>, Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>, Sven Geggus <lists-+AJD3D7QEjjt/htJsj1pd9AswbaBtrod@public.gmane.org>, Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Tobias Oetiker <tobi-7K0TWYW2a3pyDzI6CaY1VQ@public.gmane.org>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Stephan von Krawczynski <skraw-DcQCyzbjH0jQT0dZR+AlfA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Wednesday 04 November 2009, Mel Gorman wrote:
> Agreed. I'll start from scratch again trying to reproduce what you're
> seeing locally. I'll try breaking my network card so that it's making
> high-order atomics and see where I get. Machines that were previously
> tied up are now free so I might have a better chance.

Hmmm. IMO you're looking at this from the wrong side. You don't need to 
break your network card because the SKB problems are only the *result* of 
the change, not the *cause*.

I can reproduce the desktop freeze just as easily when I'm using wired 
(e1000e) networking and when I'm not streaming music at all, but just 
loading that 3rd gitk instance.

So it's not
  "I get a desktop freeze because of high order allocations from wireless
   during swapping",
but
  "during very heavy swapping on a system with an encrypted LMV volume
   group containing (encrypted) fs and (encrytpted) swap, the swapping
   gets into some semi-stalled state *causing* a long desktop freeze
   and, if there also happens to be some process trying higher order
   allocations, failures of those allocations".

I have tried to indicate this in the past, but it may have gotten lost in 
the complexity of the issue.

An important clue is still IMO that during the first part of the freezes 
there is very little disk activity for a long time. Why would that be when 
the system is supposed to be swapping like hell?

Cheers,
FJP
