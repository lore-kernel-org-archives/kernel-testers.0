From: David Rientjes <rientjes@google.com>
Subject: Re: [Bug #13648] nfsd: page allocation failure
Date: Thu, 30 Jul 2009 14:30:42 -0700 (PDT)
Message-ID: <alpine.DEB.2.00.0907301423250.18531@chino.kir.corp.google.com>
References: <DizPU9GBfHF.A.kgF.iWObKB@chimera> <H5-1lZIIeYK.A.HXG.DXObKB@chimera> <20090727130420.1514cf5c.skraw@ithnet.com>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1753089AbZG3Vax@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=google.com; s=beta;
	t=1248989450; bh=lCh61RIqpgKtxFks2JsR5IIjHSw=;
	h=DomainKey-Signature:Date:From:X-X-Sender:To:cc:Subject:
	 In-Reply-To:Message-ID:References:User-Agent:MIME-Version:
	 Content-Type:X-System-Of-Record; b=jNTTeNmKr6UxiII2jCzK/BYnnDZJfIg
	L/jWBgJTv9dOf0rSiOGG14wrmczG5W4fAMZqykIz4D57m2FpaQejIMg==
In-Reply-To: <20090727130420.1514cf5c.skraw@ithnet.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Stephan von Krawczynski <skraw@ithnet.com>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Justin Piszcz <jpiszcz@lucidpixels.com>, Jeff Kirsher <jeffrey.t.kirsher@intel.com>, Jesse Brandeburg <jesse.brandeburg@intel.com>, "David S. Miller" <davem@davemloft.com>

On Mon, 27 Jul 2009, Stephan von Krawczynski wrote:

> This is no regression between 2.6.29 and 2.6.30.
> In fact we could reproduce the problem with kernel versions:
> 
> 2.6.27.26 < X <= 2.6.30.3
> 
> (Meaning 2.6.27.26 is the last one _not_ showing the problem).
> 

And 2.6.28.10 is showing the exact same problem as initially reported, 
right?

I noticed your /var/log/messages is showing you're using slub as opposed 
to slab (which Justin was using, and causing order-0 allocations errors).  
SLUB uses order-1 allocations for this cache growth and it's failing 
because of memory fragmentation, not because you're truly oom.

The only thing that is immediately apparent that changed in this path over 
these kernel versions (there were significant changes to e1000e) is the 
CRC stripping.  If it's loaded as a module, perhaps you could try

	modprobe e1000e CrcStripping=0,0

(assuming you have two adapters).

I've cc'd some relevant e1000e driver people in the hopes they'll be able 
to diagnose this problem.  Memory fragmentation as the result of page 
group changes wouldn't affect order-0 allocations such as this on slab, so 
it's doubtful the VM regressed if you can reproduce the problem with 
CONFIG_SLAB.
