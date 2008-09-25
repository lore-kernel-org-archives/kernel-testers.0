From: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Thu, 25 Sep 2008 13:06:19 -0700 (PDT)
Message-ID: <20080925.130619.193699562.davem@davemloft.net>
References: <alpine.LNX.1.10.0809250310190.4671@pegasus.suse.cz>
	<200809250401.54818.elendil@planet.nl>
	<Pine.LNX.4.64.0809251921340.18801@twin.jikos.cz>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Pine.LNX.4.64.0809251921340.18801-1ReQVI26iDCaZKY3DrU6dA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: jkosina-AlSwsSmVLrQ@public.gmane.org
Cc: elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org, airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org, akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, jeffrey.t.kirsher-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, david.vrabel-kQvG35nSl+M@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org, mingo-X9Un+BFzKDI@public.gmane.org, jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org, jesse.brandeburg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org

From: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>
Date: Thu, 25 Sep 2008 19:24:57 +0200 (CEST)

> If being set to 0 (it's so easy to call memset(0) on a bogus pointer, 
> there are usually lots of them in the code) or to random garbage, it would 
> seem to be much more understandable, than 0xff.

Setting framebuffer bytes to 0xff is pretty common, for example
for color keys and anti-aliasing pixel values.
