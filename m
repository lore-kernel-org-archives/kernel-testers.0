From: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Subject: Re: [Bug #13319] Page allocation failures with b43 and p54usb
Date: Mon, 8 Jun 2009 15:12:13 +0100
Message-ID: <20090608141212.GE15070@csn.ul.ie>
References: <bCxQpon4SCJ.A.RrF.yY7KKB@chimera> <D9VoutSOyXP.A.hvH.Ha7KKB@chimera> <4A2BBC30.2030300@lwfinger.net> <84144f020906070640rf5ab14nbf66d3ca7c97675f@mail.gmail.com> <4A2BCC6F.8090004@redhat.com> <84144f020906070732l31786156r5d9753a0cabfde79@mail.gmail.com> <20090608101739.GA15377@csn.ul.ie> <84144f020906080352k57f12ff9pbd696da5f332ac1a@mail.gmail.com> <20090608110303.GD15377@csn.ul.ie> <Pine.LNX.4.64.0906081657001.7036@melkki.cs.Helsinki.FI>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.64.0906081657001.7036-nkv1RstziBCWKadcF5yKzn5wuOn9r4cE@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Pekka J Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Cc: Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, KAMEZAWA Hiroyuki <kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

On Mon, Jun 08, 2009 at 04:58:10PM +0300, Pekka J Enberg wrote:
> Hi Mel,
> 
> On Mon, 8 Jun 2009, Mel Gorman wrote:
> > Is there any chance you could hatchet together a patch
> > slab-allocation-failure that reports on slab allocation failures similar
> > to what the page allocator does? Minimally, it should tell us what
> > the size of the allocation was but any other information such as the
> > same of the slab, the size of pages it normally uses are, etc. would
> > also be useful.
> 
> Would something like this be sufficient? Figuring out the actual _size_ 
> passed to kmalloc() is pretty difficult as then we would need to do the 
> NULL test in fastpath code or pass the argument deeper in the call-chain.
> 

It's much better than nothing. In the event of an allocation failure, we'll
know which kmalloc bucket it's coming out of so we'll have a limited range
of possible buffer sizes.

I have some suggestions on what we're outputting though.

> 			Pekka
> 
> diff --git a/mm/slub.c b/mm/slub.c
> index 65ffda5..b5acf18 100644
> --- a/mm/slub.c
> +++ b/mm/slub.c
> @@ -1565,6 +1565,8 @@ new_slab:
>  		c->page = new;
>  		goto load_freelist;
>  	}
> +	printk(KERN_WARNING "SLUB: unable to satisfy allocation for cache %s (size=%d, node=%d, gfp=%x)\n",
> +		s->name, s->size, node, gfpflags);

size could be almost anything here for a casual reader. You are
outputting the size of the object plus its metadata so the name should
reflect that. I think it would be better to output objsize= and the
object size without the metadata overhead. What do you think?

In addition, include how many objects there are per-slab and include what
the order is being passed to the page allocator when allocating new slabs.
Would that be enough to determine if fallback-to-smaller orders occured?

>  	return NULL;
>  debug:
>  	if (!alloc_debug_processing(s, c->page, object, addr))
> 

-- 
Mel Gorman
Part-time Phd Student                          Linux Technology Center
University of Limerick                         IBM Dublin Software Lab
