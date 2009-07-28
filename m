From: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Subject: Re: [patch] slub: use size and objsize orders to disable debug flags
Date: Tue, 28 Jul 2009 10:53:43 +0300
Message-ID: <4A6EAE87.9020006@cs.helsinki.fi>
References: <DizPU9GBfHF.A.kgF.iWObKB@chimera> <H5-1lZIIeYK.A.Pi.BZObKB@chimera> <4A6CF220.7080605@lwfinger.net> <alpine.DEB.2.00.0907261722140.21259@chino.kir.corp.google.com> <84144f020907270008h2a985278of68e70ff1ee9265c@mail.gmail.com> <alpine.DEB.2.00.0907270227420.15760@chino.kir.corp.google.com> <alpine.DEB.1.10.0907271320130.13513@gentwo.org> <alpine.DEB.2.00.0907271113460.8408@chino.kir.corp.google.com> <alpine.DEB.1.10.0907271740090.27697@gentwo.org> <alpine.DEB.2.00.0907271533070.23587@chino.kir.corp.google.com> <alpine.DEB.2.00.0907271830010.7634@chino.kir.corp.google.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.DEB.2.00.0907271830010.7634-X6Q0R45D7oAcqpCFd4KODRPsWskHk0ljAL8bYrjMMd8@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Cc: Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>

David Rientjes wrote:
> This patch moves the masking of debugging flags which increase a cache's
> min order due to metadata when `slub_debug=O' is used from
> kmem_cache_flags() to kmem_cache_open().
> 
> Instead of defining the maximum metadata size increase in a preprocessor
> macro, this approach uses the cache's ->size and ->objsize members to
> determine if the min order increased due to debugging options.  If so,
> the flags specified in the more appropriately named DEBUG_METADATA_FLAGS
> are masked off.
> 
> This approach was suggested by Christoph Lameter
> <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>.
> 
> Cc: Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
> Signed-off-by: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>

Applied, thanks!
