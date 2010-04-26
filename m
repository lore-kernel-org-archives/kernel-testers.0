From: Tejun Heo <tj-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [Bug #15713] hackbench regression due to commit 9dfc6e68bfe6e
Date: Mon, 26 Apr 2010 16:33:33 +0200
Message-ID: <4BD5A43D.2060009@kernel.org>
References: <deuQKFRcc0B.A.3EG.BRSzLB@tosh> <YeFfFNFyTSF.A.vjH.sRSzLB@tosh>  <alpine.DEB.2.00.1004221045270.1204@router.home>  <4BD086D0.9090309@cs.helsinki.fi>  <alpine.DEB.2.00.1004232214520.29018@melkki.cs.helsinki.fi>  <1272265147.2078.648.camel@ymzhang.sh.intel.com>  <i2m84144f021004260022nb58e3e27vd351d6646b99f265@mail.gmail.com>  <4BD564BE.6020700@kernel.org> <x2o84144f021004260309k9edf9e88t92e4c988d12de234@mail.gmail.com> <4BD570A8.90304@kernel.org> <alpine.DEB.2.00.1004261710500.16526@melkki.cs.helsinki.fi>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.DEB.2.00.1004261710500.16526-nkv1RstziBBsRR2hCrRKtT03IgOmwywn@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Pekka J Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Cc: "Zhang, Yanmin" <yanmin_zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, Christoph Lameter <cl-vYTEC60ixJUAvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Alex Shi <alex.shi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, tim.c.chen-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, npiggin-l3A5Bk7waGM@public.gmane.org, rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org

Hello, Pekka.

On 04/26/2010 04:17 PM, Pekka J Enberg wrote:
> Even if the cacheline is dirtied like in the struct kmem_cache_cpu case?

If my hypothesis is the case, I don't think dirtying or not would
matter.  It's about two cpus sharing a cache line which usually is a
bad idea but in this case happens to be a good idea because the two
cpus sit on the same cache.

> If that's the case, don't we want the per-CPU allocator to support back
> to back allocation for cores that are in the same package?

I think it's probably gonna be an over-engineering effort.  W/ percpu
allocator the rest of the cacheline would likely be occupied by
another percpu item for the cpu, so it's not really wasted.  It's just
used differently.  It would be good if we have a way to better pack
small hot ones (for the same cpu) into the same cachelines but I don't
think it would be wise to interleave stuff from different cpus.  It's
not like there's only single way to save a cacheline after all.

Thanks.

-- 
tejun
