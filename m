From: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #13319] Page allocation failures with b43 and p54usb
Date: Tue, 30 Jun 2009 14:52:22 -0700 (PDT)
Message-ID: <alpine.DEB.2.00.0906301445070.26290@chino.kir.corp.google.com>
References: <etTXaRqGgAC.A.SaE.6iASKB@chimera>  <5Hhc7UkUKEO.A.fNH.4kASKB@chimera> <4A48F114.1010702@lwfinger.net>  <alpine.DEB.2.00.0906291642520.17663@chino.kir.corp.google.com>  <84144f020906292355o7cf63f7ch47bd19961cf92da3@mail.gmail.com>
 <alpine.DEB.1.10.0906301030260.6124@gentwo.org> <1246374095.8014.28.camel@penberg-laptop> <alpine.DEB.1.10.0906301114450.3879@gentwo.org> <alpine.DEB.2.00.0906301248000.16312@chino.kir.corp.google.com> <alpine.DEB.1.10.0906301632570.22158@gentwo.org>
 <alpine.DEB.2.00.0906301413460.24397@chino.kir.corp.google.com> <alpine.DEB.1.10.0906301722280.17682@gentwo.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1246398753; bh=tbH9nBsV1fTx74v+zI3vuaQxVb0=;
	h=DomainKey-Signature:Date:From:X-X-Sender:To:cc:Subject:
	 In-Reply-To:Message-ID:References:User-Agent:MIME-Version:
	 Content-Type:X-System-Of-Record; b=I+nMjW/9oS6uM/3noSNcDYMyxlSGLSH
	7WQe85sEQDiVcmHyN3pxAnqo6FLp2NvXBAKMdVDb3frP7xbs47kw14A==
In-Reply-To: <alpine.DEB.1.10.0906301722280.17682-gkYfJU5Cukgdnm+yROfE0A@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>

On Tue, 30 Jun 2009, Christoph Lameter wrote:

> We could add an option that disables debugging for troublesome page
> size slabs
> 
> 
> slab_debug=p
> 
> or so
> 

I definitely like that more than slab_debug=A, where we're requiring an 
added parameter for full debugging to be activated.

I'm curious whether there would ever be any use for disabling debugging on 
specific caches for reasons other than higher minimum orders for metadata, 
though, given that we already support things like slub_debug=FZ,cache, 
which should only enable free debugging and redzoning even with 
CONFIG_SLUB_DEBUG_ON enabled for cache.

I think the solution to this is really based on good software engineering 
and test practices, though, so hopefully there'll be a consensus on which 
direction to take before any time is spent in implementing and pushing it.
