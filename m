From: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Wed, 24 Sep 2008 00:19:00 +0200 (CEST)
Message-ID: <alpine.LNX.1.10.0809240014390.4671@pegasus.suse.cz>
References: <alpine.LNX.1.10.0809231229460.4671@pegasus.suse.cz>  <20080923.140519.268233735.davem@davemloft.net>  <21d7e9970809231409r3fdd640h53a72a808266d220@mail.gmail.com>  <20080923.150722.141587696.davem@davemloft.net>
 <9929d2390809231512w160d221axa2923a6b293a041@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <9929d2390809231512w160d221axa2923a6b293a041-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jeff Kirsher <jeffrey.t.kirsher-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Cc: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, david.vrabel-kQvG35nSl+M@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org

On Tue, 23 Sep 2008, Jeff Kirsher wrote:

> >> I don't think OpenSUSE was shipping any of the GEM bits.
> > Good data point, can someone confirm this?  Also, what X server version
> > is the effected OpenSUSE shipping?
> OpenSuSE 11 ships x server version 7.3.

Opensuse 11 is fine.

The problem can be reproduced [not only] on opensuse 11.1 beta1, which has

	xorg-x11-7.4-1.6.x86_64.rpm

-- 
Jiri Kosina
