From: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Subject: Re: [patch v2] slub: add option to disable higher order debugging
 slabs
Date: Fri, 10 Jul 2009 09:54:39 +0300
Message-ID: <1247208879.19026.2.camel@penberg-laptop>
References: <etTXaRqGgAC.A.SaE.6iASKB@chimera>
	 <1246374095.8014.28.camel@penberg-laptop>
	 <alpine.DEB.1.10.0906301114450.3879@gentwo.org>
	 <alpine.DEB.2.00.0906301248000.16312@chino.kir.corp.google.com>
	 <alpine.DEB.1.10.0906301632570.22158@gentwo.org>
	 <alpine.DEB.2.00.0906301413460.24397@chino.kir.corp.google.com>
	 <alpine.DEB.1.10.0906301722280.17682@gentwo.org>
	 <alpine.DEB.2.00.0906301445070.26290@chino.kir.corp.google.com>
	 <84144f020906302253n2424d4a5k3aaf124838a041df@mail.gmail.com>
	 <alpine.DEB.2.00.0907021016380.30890@chino.kir.corp.google.com>
	 <84144f020907030023v2d09632bt13b6c25f96c0b803@mail.gmail.com>
	 <alpine.DEB.2.00.0907062252500.9699@chino.kir.corp.google.com>
	 <alpine.DEB.2.00.0907070013400.14978@chino.kir.corp.google.com>
	 <alpine.DEB.1.10.0907071150010.5124@gentwo.org>
	 <alpine.DEB.2.00.0907091620470.16817@chino.kir.corp.google.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.DEB.2.00.0907091620470.16817-X6Q0R45D7oAcqpCFd4KODRPsWskHk0ljAL8bYrjMMd8@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Cc: Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>

On Tue, 7 Jul 2009, Christoph Lameter wrote:
> > > + * Debugging flags that require metadata to be stored in the slab, up to
> > > + * DEBUG_SIZE in size.
> > > + */
> > > +#define DEBUG_SIZE_FLAGS (SLAB_RED_ZONE | SLAB_POISON | SLAB_STORE_USER)
> > > +#define DEBUG_SIZE (3 * sizeof(void *) + 2 * sizeof(struct track))
> > 
> > There is no need for DEBUG_SIZE since slub keeps both the size of the
> > object kmem_cache->objsize and the size with the metadata kmem_cache->size
> > 
> > If the order of both is different then the order would increase.

On Thu, 2009-07-09 at 16:26 -0700, David Rientjes wrote:
> Without DEBUG_SIZE_FLAGS, the only way to determine what flags have 
> increased the size is in calculate_sizes() and then disable them by 
> default if slub_debug=O is specified.  calculate_sizes() is used by 
> the `store', `poison', and `red_zone' callbacks, so the admin still has 
> the ability to enable these options even though slub_debug=O was used.
> 
> So we can either mask off the size-increasing debug bits when the cache is 
> created in kmem_cache_flags() like I did, or we can move the logic to 
> calculate_sizes() with an added formal to determine whether this is from 
> kmem_cache_open() or one of the attribute callbacks.
> 
> I think my solution is the cleanest and provides a single entity, 
> DEBUG_SIZE_FLAGS, which specifies the flags that slub_debug=O clears if 
> the minimum order increases.

Yup, agreed. I applied the patch, thanks everyone!

			Pekka
