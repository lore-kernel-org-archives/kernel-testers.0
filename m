From: Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Wed, 24 Sep 2008 22:28:45 -0400
Message-ID: <48DAF75D.4050908@garzik.org>
References: <20080923.150722.141587696.davem@davemloft.net>  <9929d2390809231512w160d221axa2923a6b293a041@mail.gmail.com>  <alpine.LNX.1.10.0809240014390.4671@pegasus.suse.cz>  <20080923.211215.193696086.davem@davemloft.net>  <alpine.LNX.1.10.0809250110070.4671@pegasus.suse.cz> <21d7e9970809241722w7c3bb6a5w1af5801b7380169d@mail.gmail.com> <alpine.LNX.1.10.0809250310190.4671@pegasus.suse.cz>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LNX.1.10.0809250310190.4671-JCEl3tv+2Z8CVLCxKZUutA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>
Cc: Dave Airlie <airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, jeffrey.t.kirsher-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, david.vrabel-kQvG35nSl+M@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org, jesse.brandeburg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org

Jiri Kosina wrote:
> On Thu, 25 Sep 2008, Dave Airlie wrote:
> 
>> Well I'm out of the race, my attempts to re-write my eeprom using an 
>> eeprom from an equivalent laptop have totally failed and my BIOS won't 
>> boot anymore - so my laptop is == a brick.
> 
> Uh oh. Shouldn't we put something like the patch below in Linus' tree 
> unless we get this sorted out? Otherwise more and more people who use -rc 
> kernels will run into this, and will get their hardware [hopefully 
> temporarily, but not all users are able to re-flash their network card 
> EEPROMs, right] bricked.
> 
> I know that it is quite aggressive and is going to disable wired 
> networking on a lot of systems that have been functioning properly, 
> therefore RFC ...
> 
> 
> 
> From: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>
> Subject: [PATCH] [RFC] E1000E: temporarily disable e1000e driver
> 
> E1000E: temporarily disable e1000e driver

That seems a bit drastic, particularly when the debugging was beginning 
to point to another culprit.

We have equal case at this point to disable r8169 and i915_drm, no?

	Jeff



