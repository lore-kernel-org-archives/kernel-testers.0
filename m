From: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Thu, 25 Sep 2008 19:24:57 +0200 (CEST)
Message-ID: <Pine.LNX.4.64.0809251921340.18801@twin.jikos.cz>
References: <20080923.150722.141587696.davem@davemloft.net>
 <9929d2390809231512w160d221axa2923a6b293a041@mail.gmail.com>
 <alpine.LNX.1.10.0809240014390.4671@pegasus.suse.cz>
 <20080923.211215.193696086.davem@davemloft.net> <alpine.LNX.1.10.0809250110070.4671@pegasus.suse.cz>
 <21d7e9970809241722w7c3bb6a5w1af5801b7380169d@mail.gmail.com>
 <21d7e9970809241722w7c3bb6a5w1af5801b7380169d@mail.gmail.com>
 <alpine.LNX.1.10.0809250310190.4671@pegasus.suse.cz> <200809250401.54818.elendil@planet.nl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200809250401.54818.elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Cc: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>, airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, jeffrey.t.kirsher-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, david.vrabel-kQvG35nSl+M@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org, jesse.brandeburg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org

On Thu, 25 Sep 2008, Frans Pop wrote:

> Extra datapoint. As far as I've seen this problem has not yet been 
> reported by any people running Debian. This could point to X.Org as 
> Debian currently has 7.3 while I think the reports so far have been with 
> 7.4.

Yes, I think that xorg/xorg i915 driver/libdrm/GEM/whatever are the 
biggest suspect currently, according to the data that has been gathered so 
far.

Still, what confuses me a little bit -- the EEPROM of the card is set to 
all 0xff, once the corruption happens. Isn't that a quite a coincidence, 
that bytes representing "nothing" in this context are used?

If being set to 0 (it's so easy to call memset(0) on a bogus pointer, 
there are usually lots of them in the code) or to random garbage, it would 
seem to be much more understandable, than 0xff.

-- 
Jiri Kosina
SUSE Labs
