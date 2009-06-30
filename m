From: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #13319] Page allocation failures with b43 and p54usb
Date: Tue, 30 Jun 2009 14:15:27 -0700 (PDT)
Message-ID: <alpine.DEB.2.00.0906301413460.24397@chino.kir.corp.google.com>
References: <etTXaRqGgAC.A.SaE.6iASKB@chimera>  <5Hhc7UkUKEO.A.fNH.4kASKB@chimera> <4A48F114.1010702@lwfinger.net>  <alpine.DEB.2.00.0906291642520.17663@chino.kir.corp.google.com>  <84144f020906292355o7cf63f7ch47bd19961cf92da3@mail.gmail.com>
 <alpine.DEB.1.10.0906301030260.6124@gentwo.org> <1246374095.8014.28.camel@penberg-laptop> <alpine.DEB.1.10.0906301114450.3879@gentwo.org> <alpine.DEB.2.00.0906301248000.16312@chino.kir.corp.google.com> <alpine.DEB.1.10.0906301632570.22158@gentwo.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1246396535; bh=3HARYbZt8MdFRG02ZM4SbC8TiAI=;
	h=DomainKey-Signature:Date:From:X-X-Sender:To:cc:Subject:
	 In-Reply-To:Message-ID:References:User-Agent:MIME-Version:
	 Content-Type:X-System-Of-Record; b=Wzy4ZTrctPvqQ0LOq0xpzPwMjprLlNv
	E8JKllzcjxLtABpDQzIcKCXzJU5Okiz/DtfOBFZeDt2LOXuuvQTyBHA==
In-Reply-To: <alpine.DEB.1.10.0906301632570.22158-gkYfJU5Cukgdnm+yROfE0A@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>

On Tue, 30 Jun 2009, Christoph Lameter wrote:

> > diff --git a/mm/slub.c b/mm/slub.c
> > --- a/mm/slub.c
> > +++ b/mm/slub.c
> > @@ -142,6 +142,11 @@
> >  				SLAB_POISON | SLAB_STORE_USER)
> >
> >  /*
> > + * The maximum amount of metadata added to a slab when debugging is enabled.
> > + */
> > +#define MAX_DEBUG_SIZE (3 * sizeof(void *) + 2 * sizeof(struct track))
> > +
> > +/*
> >   * Set of flags that will prevent slab merging
> >   */
> >  #define SLUB_NEVER_MERGE (SLAB_RED_ZONE | SLAB_POISON | SLAB_STORE_USER | \
> > @@ -1561,6 +1566,21 @@ slab_out_of_memory(struct kmem_cache *s, gfp_t gfpflags, int nid)
> >  		"default order: %d, min order: %d\n", s->name, s->objsize,
> >  		s->size, oo_order(s->oo), oo_order(s->min));
> >
> > +	if (s->flags & (SLAB_POISON | SLAB_RED_ZONE | SLAB_STORE_USER)) {
> > +		int min_order;
> > +
> > +		/*
> > +		 * Debugging is enabled, which may increase oo_order(s->min), so
> > +		 * warn the user that allocation failures may be avoided if
> > +		 * debugging is enabled for this cache.
> > +		 */
> > +		min_order = get_order(s->size - MAX_DEBUG_SIZE);
> > +		if (min_order < oo_order(s->min))
> > +			printk(KERN_WARNING "  %s debugging increased min order "
> > +			       "from %d to %d, use slab_debug=-,%s to disable.",
> > +			       s->name, min_order, oo_order(s->min), s->name);
> 
> It may be easier to check the order of the initial size vs. the order of
> the size with all metadata
> 
> if (get_order(s->size) > get_order(s->objsize)
> 

Ah, right.  Then we could simply eliminate the check on s->flags to begin 
with.

This patch is supposing that `slab_debug=-,<cache>' actually disables all 
debugging for <cache> which would need to be implemented first, but I 
think this is a better alternative than requiring slab_debug=A for full 
debugging after enabling CONFIG_SLUB_DEBUG_ON.
