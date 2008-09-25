From: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Thu, 25 Sep 2008 02:33:21 +0200 (CEST)
Message-ID: <alpine.LNX.1.10.0809250230000.4671@pegasus.suse.cz>
References: <20080923.150722.141587696.davem@davemloft.net> <20080923.211215.193696086.davem@davemloft.net> <alpine.LNX.1.10.0809250110070.4671@pegasus.suse.cz> <200809241726.58628.jbarnes@virtuousgeek.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200809241726.58628.jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Cc: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, jeffrey.t.kirsher-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, david.vrabel-kQvG35nSl+M@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, jesse.brandeburg-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, Karsten Keil <kkeil-l3A5Bk7waGM@public.gmane.org>

On Wed, 24 Sep 2008, Jesse Barnes wrote:

> That said, adding a check to the x86 code would be a good thing to do; 
> I'll hack up a patch tomorrow unless someone beats me to it.

The problem here is that what we desperately need first is a method to 
restore the original EEPROM contents after it gets corrupted (David Airlie 
has, sadly, apparently bricked his notebook while trying to do so). 
Without this, we can put a lot of debugging/protecting patches into the 
kernel, but we won't be able to succesfully verify anything, because 
testing wouldn't be possible.

Added Jesse and Karsten to CC, as they are working on such a tool right 
now, as far as I know.

-- 
Jiri Kosina
SUSE Labs
