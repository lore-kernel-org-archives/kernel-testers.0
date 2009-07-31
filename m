From: Stephan von Krawczynski <skraw-DcQCyzbjH0jQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #13648] nfsd: page allocation failure
Date: Fri, 31 Jul 2009 13:48:43 +0200
Message-ID: <20090731134843.6ea9d3dd.skraw@ithnet.com>
References: <DizPU9GBfHF.A.kgF.iWObKB@chimera>
	<H5-1lZIIeYK.A.HXG.DXObKB@chimera>
	<20090727130420.1514cf5c.skraw@ithnet.com>
	<alpine.DEB.2.00.0907301423250.18531@chino.kir.corp.google.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.DEB.2.00.0907301423250.18531-X6Q0R45D7oAcqpCFd4KODRPsWskHk0ljAL8bYrjMMd8@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Justin Piszcz <jpiszcz-BP4nVm5VUdNhbmWW9KSYcQ@public.gmane.org>, Jeff Kirsher <jeffrey.t.kirsher-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Jesse Brandeburg <jesse.brandeburg-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, "David S. Miller" <davem-fT/PcQaiUtLby3iVrkZq2A@public.gmane.org>

On Thu, 30 Jul 2009 14:30:42 -0700 (PDT)
David Rientjes <rientjes-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org> wrote:

> On Mon, 27 Jul 2009, Stephan von Krawczynski wrote:
> 
> > This is no regression between 2.6.29 and 2.6.30.
> > In fact we could reproduce the problem with kernel versions:
> > 
> > 2.6.27.26 < X <= 2.6.30.3
> > 
> > (Meaning 2.6.27.26 is the last one _not_ showing the problem).
> > 
> 
> And 2.6.28.10 is showing the exact same problem as initially reported, 
> right?

Yes, that is correct.
 
> I noticed your /var/log/messages is showing you're using slub as opposed 
> to slab (which Justin was using, and causing order-0 allocations errors).  
> SLUB uses order-1 allocations for this cache growth and it's failing 
> because of memory fragmentation, not because you're truly oom.

Originally I used slab, and as someone wanted me to test slub I tried. The
results looked pretty much the same to me.
 
> The only thing that is immediately apparent that changed in this path over 
> these kernel versions (there were significant changes to e1000e) is the 
> CRC stripping.  If it's loaded as a module, perhaps you could try
> 
> 	modprobe e1000e CrcStripping=0,0
> 
> (assuming you have two adapters).

I will try that.
 
> I've cc'd some relevant e1000e driver people in the hopes they'll be able 
> to diagnose this problem.  Memory fragmentation as the result of page 
> group changes wouldn't affect order-0 allocations such as this on slab, so 
> it's doubtful the VM regressed if you can reproduce the problem with 
> CONFIG_SLAB.

I can, as said before, the problem first showed up with slab.


-- 
Regards,
Stephan
