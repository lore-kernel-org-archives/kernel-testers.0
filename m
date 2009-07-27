From: Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #13319] Page allocation failures with b43 and p54usb
Date: Mon, 27 Jul 2009 17:43:40 -0400 (EDT)
Message-ID: <alpine.DEB.1.10.0907271740090.27697@gentwo.org>
References: <DizPU9GBfHF.A.kgF.iWObKB@chimera> <H5-1lZIIeYK.A.Pi.BZObKB@chimera> <4A6CF220.7080605@lwfinger.net> <alpine.DEB.2.00.0907261722140.21259@chino.kir.corp.google.com> <84144f020907270008h2a985278of68e70ff1ee9265c@mail.gmail.com>
 <alpine.DEB.2.00.0907270227420.15760@chino.kir.corp.google.com> <alpine.DEB.1.10.0907271320130.13513@gentwo.org> <alpine.DEB.2.00.0907271113460.8408@chino.kir.corp.google.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.DEB.2.00.0907271113460.8408-X6Q0R45D7oAcqpCFd4KODRPsWskHk0ljAL8bYrjMMd8@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Cc: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>

On Mon, 27 Jul 2009, David Rientjes wrote:

> My patch is already in Pekka's slab-2.6.git tree at
> http://git.kernel.org/?p=linux/kernel/git/penberg/slab-2.6.git;a=commit;h=fa5ec8a1f66f3c2a3af723abcf8085509c9ee682
>
> You had proposed http://marc.info/?l=linux-kernel&m=124725166205814, which
> moves the mask to kmem_cache_open() and calls calculate_sizes() twice.
> That eliminates DEBUG_FLAGS_SIZE, but I don't see that define as being
> troublesome since we must define DEBUG_FLAGS to specify what options add
> metdata anyway.

My prosal was to use the size and objsize parameters. You would only have
to call calculate_sizes() twice when the comparison of the order of size
and objsize would be different.

Doing so would simplify additing future flags. If you do your own
calculations (like in the patch) then you have to replicate the size
calculation from calculate_sizes() somehow. Is the duplicate calculation
really accurate regarding alignment and other special casing?


