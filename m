From: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Subject: Re: [Bug #13319] Page allocation failures with b43 and p54usb
Date: Mon, 8 Jun 2009 12:03:03 +0100
Message-ID: <20090608110303.GD15377@csn.ul.ie>
References: <bCxQpon4SCJ.A.RrF.yY7KKB@chimera> <D9VoutSOyXP.A.hvH.Ha7KKB@chimera> <4A2BBC30.2030300@lwfinger.net> <84144f020906070640rf5ab14nbf66d3ca7c97675f@mail.gmail.com> <4A2BCC6F.8090004@redhat.com> <84144f020906070732l31786156r5d9753a0cabfde79@mail.gmail.com> <20090608101739.GA15377@csn.ul.ie> <84144f020906080352k57f12ff9pbd696da5f332ac1a@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <84144f020906080352k57f12ff9pbd696da5f332ac1a-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Cc: Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, KAMEZAWA Hiroyuki <kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

On Mon, Jun 08, 2009 at 01:52:05PM +0300, Pekka Enberg wrote:
> On Mon, Jun 8, 2009 at 1:17 PM, Mel Gorman<mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org> wrote:
> > Pekka, assuming the request size is 800 bytes, and SLUB is using order-1
> > pages for allocations of that size, what happened order-1 allocations
> > falling back to order-0 allocations as necessary. That logic exists,
> > right? If so, could it be broken?
> 
> That logic is in allocate_slab() and if the higher order allocation
> fails, we fall-back to struct kmem_cache ->min order. That in turn is
> set up in calculate_sizes() to get_order(size) so it seems pretty
> unlikely to me the allocation is 800 bytes. Of course, I could be
> missing something here and there's a bug in oo_make() or oo_order().
> Hmm.

Is there any chance you could hatchet together a patch
slab-allocation-failure that reports on slab allocation failures similar
to what the page allocator does? Minimally, it should tell us what
the size of the allocation was but any other information such as the
same of the slab, the size of pages it normally uses are, etc. would
also be useful.

-- 
Mel Gorman
Part-time Phd Student                          Linux Technology Center
University of Limerick                         IBM Dublin Software Lab
