From: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH 0/5] Reduce GFP_ATOMIC allocation failures, candidate
	fix V3
Date: Mon, 16 Nov 2009 09:52:58 +0000
Message-ID: <20091116095258.GS29804@csn.ul.ie>
References: <1258054235-3208-1-git-send-email-mel@csn.ul.ie> <20091115120721.GA7557@bizet.domek.prywatny>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20091115120721.GA7557-nLtalAL5mPp2RxbNQum0x1nzlInOXLuq@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Karol Lewandowski <karol.k.lewandowski-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>, Sven Geggus <lists-+AJD3D7QEjjt/htJsj1pd9AswbaBtrod@public.gmane.org>, Tobias Oetiker <tobi-7K0TWYW2a3pyDzI6CaY1VQ@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, "linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org" <linux-mm-Bw31MaZKKs3YtjvyW6yDsg@public.gmane.org>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Stephan von Krawczynski <skraw-DcQCyzbjH0jQT0dZR+AlfA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Sun, Nov 15, 2009 at 01:07:21PM +0100, Karol Lewandowski wrote:
> On Thu, Nov 12, 2009 at 07:30:30PM +0000, Mel Gorman wrote:
> 
> > [Bug #14265] ifconfig: page allocation failure. order:5, mode:0x8020 w/ e100
> 
> > Patches 1-3 should be tested first. The testing I've done shows that the
> > page allocator and behaviour of congestion_wait() is more in line with
> > 2.6.30 than the vanilla kernels.
> > 
> > It'd be nice to have 2 more tests, applying each patch on top noting any
> > behaviour change. i.e. ideally there would be results for
> > 
> >  o patches 1+2+3
> >  o patches 1+2+3+4
> >  o patches 1+2+3+4+5
> > 
> > Of course, any tests results are welcome. The rest of the mail is the
> > results of my own tests.
> 
> I've tried testing 3+4+5 against 2.6.32-rc7 (1+2 seem to be in
> mainline) and got failure.  I've noticed something strange (I think).
> I was unable to trigger failures when system was under heavy memory
> pressure (i.e. my testing - gitk, firefoxes, etc.).  When I killed
> almost all memory hogs, put system into sleep and resumed -- it
> failed.  free(1) showed:
> 
>              total       used       free     shared    buffers     cached
> Mem:        255240     194052      61188          0       4040      49364
> -/+ buffers/cache:     140648     114592
> Swap:       514040      72712     441328
> 
> 
> Is that ok?  Wild guess -- maybe kswapd doesn't take fragmentation (or
> other factors) into account as hard as it used to in 2.6.30?
> 

That's a lot of memory free. I take it the order-5 GFP_ATOMIC allocation
failed. What was the dmesg for it please?

-- 
Mel Gorman
Part-time Phd Student                          Linux Technology Center
University of Limerick                         IBM Dublin Software Lab
