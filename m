From: Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [patch v2] slub: add option to disable higher order debugging
 slabs
Date: Fri, 10 Jul 2009 14:47:08 -0400 (EDT)
Message-ID: <alpine.DEB.1.10.0907101444090.14152@gentwo.org>
References: <etTXaRqGgAC.A.SaE.6iASKB@chimera>  <1246374095.8014.28.camel@penberg-laptop>  <alpine.DEB.1.10.0906301114450.3879@gentwo.org>  <alpine.DEB.2.00.0906301248000.16312@chino.kir.corp.google.com>  <alpine.DEB.1.10.0906301632570.22158@gentwo.org> 
 <alpine.DEB.2.00.0906301413460.24397@chino.kir.corp.google.com>  <alpine.DEB.1.10.0906301722280.17682@gentwo.org>  <alpine.DEB.2.00.0906301445070.26290@chino.kir.corp.google.com>  <84144f020906302253n2424d4a5k3aaf124838a041df@mail.gmail.com> 
 <alpine.DEB.2.00.0907021016380.30890@chino.kir.corp.google.com>  <84144f020907030023v2d09632bt13b6c25f96c0b803@mail.gmail.com>  <alpine.DEB.2.00.0907062252500.9699@chino.kir.corp.google.com>  <alpine.DEB.2.00.0907070013400.14978@chino.kir.corp.google.com>
  <alpine.DEB.1.10.0907071150010.5124@gentwo.org>  <alpine.DEB.2.00.0907091620470.16817@chino.kir.corp.google.com> <1247208879.19026.2.camel@penberg-laptop>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1247208879.19026.2.camel@penberg-laptop>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Cc: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>, Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>

On Fri, 10 Jul 2009, Pekka Enberg wrote:

> On Thu, 2009-07-09 at 16:26 -0700, David Rientjes wrote:
> > Without DEBUG_SIZE_FLAGS, the only way to determine what flags have
> > increased the size is in calculate_sizes() and then disable them by
> > default if slub_debug=O is specified.  calculate_sizes() is used by
> > the `store', `poison', and `red_zone' callbacks, so the admin still has
> > the ability to enable these options even though slub_debug=O was used.
> >
> > So we can either mask off the size-increasing debug bits when the cache is
> > created in kmem_cache_flags() like I did, or we can move the logic to
> > calculate_sizes() with an added formal to determine whether this is from
> > kmem_cache_open() or one of the attribute callbacks.
> >
> > I think my solution is the cleanest and provides a single entity,
> > DEBUG_SIZE_FLAGS, which specifies the flags that slub_debug=O clears if
> > the minimum order increases.
>
> Yup, agreed. I applied the patch, thanks everyone!

There is a simpler solution. Call calculate sizes again if the resulting
sizes increased the order. Something like this.

Index: linux-2.6/mm/slub.c
===================================================================
--- linux-2.6.orig/mm/slub.c    2009-07-10 13:45:02.000000000 -0500
+++ linux-2.6/mm/slub.c 2009-07-10 13:46:07.000000000 -0500
@@ -2454,6 +2454,10 @@ static int kmem_cache_open(struct kmem_c
        if (!calculate_sizes(s, -1))
                goto error;

+       if (get_order(s->size) != get_order(s->objsize) && flag is set) {
+               switch off debug flags.
+               calculate_sizes(s, -1);
+       }
        /*
         * The larger the object size is, the more pages we want on the
partial
         * list to avoid pounding the page allocator excessively.
