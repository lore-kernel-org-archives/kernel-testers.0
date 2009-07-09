From: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Subject: Re: [patch v2] slub: add option to disable higher order debugging
 slabs
Date: Thu, 9 Jul 2009 16:26:36 -0700 (PDT)
Message-ID: <alpine.DEB.2.00.0907091620470.16817@chino.kir.corp.google.com>
References: <etTXaRqGgAC.A.SaE.6iASKB@chimera> <1246374095.8014.28.camel@penberg-laptop> <alpine.DEB.1.10.0906301114450.3879@gentwo.org> <alpine.DEB.2.00.0906301248000.16312@chino.kir.corp.google.com> <alpine.DEB.1.10.0906301632570.22158@gentwo.org>
 <alpine.DEB.2.00.0906301413460.24397@chino.kir.corp.google.com> <alpine.DEB.1.10.0906301722280.17682@gentwo.org> <alpine.DEB.2.00.0906301445070.26290@chino.kir.corp.google.com> <84144f020906302253n2424d4a5k3aaf124838a041df@mail.gmail.com>
 <alpine.DEB.2.00.0907021016380.30890@chino.kir.corp.google.com> <84144f020907030023v2d09632bt13b6c25f96c0b803@mail.gmail.com> <alpine.DEB.2.00.0907062252500.9699@chino.kir.corp.google.com> <alpine.DEB.2.00.0907070013400.14978@chino.kir.corp.google.com>
 <alpine.DEB.1.10.0907071150010.5124@gentwo.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1247182003; bh=gW6vHOvY5NYtG5gUGqQ1ogBiXW4=;
	h=DomainKey-Signature:Date:From:X-X-Sender:To:cc:Subject:
	 In-Reply-To:Message-ID:References:User-Agent:MIME-Version:
	 Content-Type:X-System-Of-Record; b=UQvKgFFdenSi+08/HJcskgta772PIAy
	/egotDJUx185ekmRM01IMiImap1UuzJ64aqM+SG2H8DarR2kXAOCwIQ==
In-Reply-To: <alpine.DEB.1.10.0907071150010.5124-gkYfJU5Cukgdnm+yROfE0A@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>

On Tue, 7 Jul 2009, Christoph Lameter wrote:

> > + * Debugging flags that require metadata to be stored in the slab, up to
> > + * DEBUG_SIZE in size.
> > + */
> > +#define DEBUG_SIZE_FLAGS (SLAB_RED_ZONE | SLAB_POISON | SLAB_STORE_USER)
> > +#define DEBUG_SIZE (3 * sizeof(void *) + 2 * sizeof(struct track))
> 
> There is no need for DEBUG_SIZE since slub keeps both the size of the
> object kmem_cache->objsize and the size with the metadata kmem_cache->size
> 
> If the order of both is different then the order would increase.
> 

Without DEBUG_SIZE_FLAGS, the only way to determine what flags have 
increased the size is in calculate_sizes() and then disable them by 
default if slub_debug=O is specified.  calculate_sizes() is used by 
the `store', `poison', and `red_zone' callbacks, so the admin still has 
the ability to enable these options even though slub_debug=O was used.

So we can either mask off the size-increasing debug bits when the cache is 
created in kmem_cache_flags() like I did, or we can move the logic to 
calculate_sizes() with an added formal to determine whether this is from 
kmem_cache_open() or one of the attribute callbacks.

I think my solution is the cleanest and provides a single entity, 
DEBUG_SIZE_FLAGS, which specifies the flags that slub_debug=O clears if 
the minimum order increases.
