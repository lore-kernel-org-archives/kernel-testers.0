From: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Thu, 25 Sep 2008 22:35:58 +0200 (CEST)
Message-ID: <alpine.LNX.1.10.0809252234400.3389@pegasus.suse.cz>
References: <20080923.150722.141587696.davem@davemloft.net> <200809251156.10648.jbarnes@virtuousgeek.org> <alpine.LNX.1.10.0809252218470.3389@pegasus.suse.cz> <200809251236.12287.jbarnes@virtuousgeek.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200809251236.12287.jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Cc: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org, jeffrey.t.kirsher-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, david.vrabel-kQvG35nSl+M@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, jesse.brandeburg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org

On Thu, 25 Sep 2008, Jesse Barnes wrote:

> However, the "Factory" log at #425480 *does* indicate that a GEM aware 
> 2D driver was loaded (the "[drm:i915_getparam] *ERROR* Unknown parameter 
> 5" message indicates as much), but the kernel was definitely not GEM 
> aware otherwise the call would have succeeded.  So that rules out GEM 
> proper, but it could still be a bug in one of the non-GEM paths in the 
> experimental xf86-video-intel bits the various distros seem to be 
> picking up.

That was exactly the point I was trying to make, that these error paths 
will probably also need auditing, once we rule out the possibility of 
NVRAM being overwritten from kernelspace.

Thanks,

-- 
Jiri Kosina
SUSE Labs
