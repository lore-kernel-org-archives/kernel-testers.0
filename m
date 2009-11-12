From: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Subject: Re: [PATCH 3/3] vmscan: Force kswapd to take notice faster when high-order watermarks are being hit (data on latencies available)
Date: Thu, 12 Nov 2009 12:36:19 +0100
Message-ID: <200911121236.25197.elendil@planet.nl>
References: <1256650833-15516-1-git-send-email-mel@csn.ul.ie> <200911042157.25020.elendil@planet.nl> <20091105164832.GB25926@csn.ul.ie>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20091105164832.GB25926-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, "linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org" <linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org>, Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>, Sven Geggus <lists-+AJD3D7QEjjt/htJsj1pd9AswbaBtrod@public.gmane.org>, Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Tobias Oetiker <tobi-7K0TWYW2a3pyDzI6CaY1VQ@public.gmane.org>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Stephan von Krawczynski <skraw-DcQCyzbjH0jQT0dZR+AlfA@public.gmane.org>, Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, Chris Mason <chris.mason-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

First of all, sorry for not replying to this sooner. And my heartfelt 
appreciation for sticking with the issue. I wish I could do more to help 
resolve it instead of just reporting the problem.
I saw your blog post today and am looking forward to your results.

On Thursday 05 November 2009, Mel Gorman wrote:
> In the interest of getting something more empirical, I sat down from
> scratch with the view to recreating your case and I believe I was
> successful. I was able to reproduce your problem after a fashion and
> generate some figures - crucially including some latency figures.

I'm not sure if you have exactly reproduced what I'm seeing, mainly because 
I would have expected a clearer difference between .30 and .31 for the 
latency figures. There's also little difference in latency between .32-rc6 
with and without 8aa7e847 reverted.
So it looks as if latency is not a significant indicator of the effects of 
8aa7e847 in your test.

But if I look at your graphs for IO and writeback, then those *do* show a 
marked difference between .30 and .31. Those graphs also show a 
significant difference between .32-rc6 with and without 8aa7e847 reverted.
So that looks promising.

> Because of other reports, the slight improvements on latency and the
> removal of a possible live-lock situation, I think patches 1-3 and the
> accounting patch posted in this thread should go ahead. Patches 1,2
> bring allocator behaviour more in line with 2.6.30 and are a proper fix.
> Patch 3 makes a lot of sense when there are a lot of high-order atomics
> going on so that kswapd notices as fast as possible that it needs to do
> other work. The accounting patch monitors what's going on with patch 3.

Hmmm. What strikes me most about the latency graphs is how much worse it 
looks for .32 with your patches 1-3 applied than without. That seems to 
contradict what you say above.

The fact that all .32 latencies are worse that with either .30 or .31 is 
probably simply the result of the changes in the scheduler. It's one 
reason why I have tested most candidate patches against both .31 and .32.

As the latencies are not extreme in an absolute sense, I would say it does 
not need to indicate a problem. It just means you cannot easily compare 
latency figures for .30 and .31 with those for .32.

Cheers,
FJP
