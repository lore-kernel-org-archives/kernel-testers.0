From: David Rientjes <rientjes@google.com>
Subject: Re: [Bug #13319] Page allocation failures with b43 and p54usb
Date: Mon, 29 Jun 2009 22:47:03 -0700 (PDT)
Message-ID: <alpine.DEB.2.00.0906292238560.7434@chino.kir.corp.google.com>
References: <etTXaRqGgAC.A.SaE.6iASKB@chimera> <5Hhc7UkUKEO.A.fNH.4kASKB@chimera> <4A48F114.1010702@lwfinger.net> <alpine.DEB.2.00.0906291642520.17663@chino.kir.corp.google.com> <4A49733D.9030602@lwfinger.net>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1753580AbZF3FrV@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1246340832; bh=eZ7kc71YsrWZTtXbFNeIE8kGGFA=;
	h=DomainKey-Signature:Date:From:X-X-Sender:To:cc:Subject:
	 In-Reply-To:Message-ID:References:User-Agent:MIME-Version:
	 Content-Type:X-System-Of-Record; b=YhEs52ekGQXs6OM1cCjj/waKMQJ3FjC
	NK6mGlFp4WAvurTxTyX08iqjl1iEPE0BqBA7MovYCqcE+cAaltdCYEg==
In-Reply-To: <4A49733D.9030602@lwfinger.net>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Larry Finger <Larry.Finger@lwfinger.net>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Johannes Berg <johannes@sipsolutions.net>, Pekka Enberg <penberg@cs.helsinki.fi>, Christoph Lameter <cl@linux-foundation.org>

On Mon, 29 Jun 2009, Larry Finger wrote:

> > I'd disagree with disabling slub debugging by default for caches where 
> > oo_order(s->min) increases as the result of using it.  This particular 
> > page allocation failure is happening for, presumably, kmalloc-4096, and 
> > the system has 4K pages.  Disabling debugging for that cache (and any of 
> > its aliases) implicitly will lead to errors going undiagnosed as a result.
> 
> If the current behavior is not changed, I will be forced to disable
> SLUB debugging, which will explicitly lead to errors that are
> undiagnosed.

You're buying debugging support at the cost of increased memory 
consumption when you enable CONFIG_SLUB_DEBUG_ON and that's causing the 
page allocation failures because of fragmentation.  To reduce the minimum 
order required for caches such as kmalloc-4096, you'd have to disable 
debugging for that particular cache.  It's my opinion that such a 
configuration should not be the default, however.

You could argue adding `slub_debug=-,kmalloc-4096' support from the 
command line, but CONFIG_SLUB_DEBUG_ON should not change its well-defined 
purpose of enabling debugging on all slab caches.  Otherwise the rest of 
us would be forced to add `slub_debug=,kmalloc-4096' for consistent 
behavior with older kernels.
