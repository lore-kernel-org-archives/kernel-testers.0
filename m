From: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Subject: Re: [Bug #13319] Page allocation failures with b43 and p54usb
Date: Wed, 10 Jun 2009 19:16:44 +0300
Message-ID: <1244650604.23799.35.camel@penberg-laptop>
References: <bCxQpon4SCJ.A.RrF.yY7KKB@chimera>
	 <D9VoutSOyXP.A.hvH.Ha7KKB@chimera> <4A2BBC30.2030300@lwfinger.net>
	 <84144f020906070640rf5ab14nbf66d3ca7c97675f@mail.gmail.com>
	 <4A2BCC6F.8090004@redhat.com>
	 <84144f020906070732l31786156r5d9753a0cabfde79@mail.gmail.com>
	 <20090608101739.GA15377@csn.ul.ie>
	 <84144f020906080352k57f12ff9pbd696da5f332ac1a@mail.gmail.com>
	 <20090608110303.GD15377@csn.ul.ie>
	 <Pine.LNX.4.64.0906081657001.7036@melkki.cs.Helsinki.FI>
	 <20090608141212.GE15070@csn.ul.ie> <1244531201.5024.3.camel@penberg-laptop>
	 <alpine.DEB.2.00.0906090046000.28701@chino.kir.corp.google.com>
	 <1244534315.5024.34.camel@penberg-laptop>
	 <alpine.DEB.2.00.0906090105270.28701@chino.kir.corp.google.com>
	 <1244536124.5024.41.camel@penberg-laptop>  <4A2FC62C.6030407@lwfinger.net>
	 <1244648659.23799.26.camel@penberg-laptop>
	 <1244648968.23799.27.camel@penberg-laptop>
	 <1244649174.6165.0.camel@johannes.local>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1244649174.6165.0.camel-YfaajirXv2244ywRPIzf9A@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
Cc: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>, David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>, Rik van Riel <riel-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, KOSAKI Motohiro <kosaki.motohiro-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, KAMEZAWA Hiroyuki <kamezawa.hiroyu-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, npiggin-l3A5Bk7waGM@public.gmane.org, yanmin.zhang-VuQAYsv1563Yd54FQh9/CA@public.gmane.org

On Wed, 2009-06-10 at 18:49 +0300, Pekka Enberg wrote:
> > On Wed, 2009-06-10 at 18:44 +0300, Pekka Enberg wrote:
> > 
> > > Aha, SLUB thinks the minimum order for 4096 is 1. I guess you have
> > > CONFIG_SLUB_DEBUG enabled? If yes, something like to following should
> > > help. Christoph, are you okay with this patch?

On Wed, 2009-06-10 at 17:52 +0200, Johannes Berg wrote:
> > +	if ((size + MAX_DEBUG_SIZE) >= PAGE_SIZE)
> 
> && size <= PAGE_SIZE
> 
> ? Or is this a path that only happens for small allocations?
> 
> > +		s->flags &= ~(SLAB_POISON|SLAB_RED_ZONE|SLAB_STORE_USER);
> > +
> >  	if (!calculate_sizes(s, -1))
> >  		goto error;

Although something like this would probably be even nicer.

			Pekka

diff --git a/mm/slub.c b/mm/slub.c
index 65ffda5..a4206ef 100644
--- a/mm/slub.c
+++ b/mm/slub.c
@@ -2334,6 +2334,16 @@ static int calculate_sizes(struct kmem_cache *s, int forced_order)
 
 }
 
+#define MAX_DEBUG_SIZE (3 * sizeof(void *) + 2 * sizeof(struct track))
+
+static bool must_disable_debug(size_t size)
+{
+	/*
+	 * Disable debugging if it increases the minimum page order.
+	 */
+	return get_order(size + MAX_DEBUG_SIZE) > get_order(size);
+}
+
 static int kmem_cache_open(struct kmem_cache *s, gfp_t gfpflags,
 		const char *name, size_t size,
 		size_t align, unsigned long flags,
@@ -2346,6 +2356,9 @@ static int kmem_cache_open(struct kmem_cache *s, gfp_t gfpflags,
 	s->align = align;
 	s->flags = kmem_cache_flags(size, flags, name, ctor);
 
+	if (must_disable_debug(size))
+		s->flags &= ~(SLAB_POISON|SLAB_RED_ZONE|SLAB_STORE_USER);
+
 	if (!calculate_sizes(s, -1))
 		goto error;
 

