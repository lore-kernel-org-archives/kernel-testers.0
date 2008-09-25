From: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Thu, 25 Sep 2008 14:24:29 +0200 (CEST)
Message-ID: <alpine.LNX.1.10.0809251423290.4671@pegasus.suse.cz>
References: <21d7e9970809221826i76081719pdd749237580fc68e@mail.gmail.com>  <20080922.185902.80812984.davem@davemloft.net>  <alpine.LNX.1.10.0809231229460.4671@pegasus.suse.cz>  <20080923.140519.268233735.davem@davemloft.net>
 <21d7e9970809231409r3fdd640h53a72a808266d220@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <21d7e9970809231409r3fdd640h53a72a808266d220-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Dave Airlie <airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, david.vrabel-kQvG35nSl+M@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org

On Wed, 24 Sep 2008, Dave Airlie wrote:

> > My current suspicion in all of this is either the GEM kernel patches
> > or recent X server.
> I don't think OpenSUSE was shipping any of the GEM bits.

Actually there is no way of not shipping GEM when shipping xorg 7.4, isn't 
it?

So definitely GEM could be potential cause here, I think.

-- 
Jiri Kosina
SUSE Labs
