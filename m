From: "H. Peter Anvin" <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Thu, 25 Sep 2008 11:46:42 -0700
Message-ID: <48DBDC92.80605@zytor.com>
References: <20080923.150722.141587696.davem@davemloft.net> <9929d2390809231512w160d221axa2923a6b293a041@mail.gmail.com> <alpine.LNX.1.10.0809240014390.4671@pegasus.suse.cz> <20080923.211215.193696086.davem@davemloft.net> <alpine.LNX.1.10.0809250110070.4671@pegasus.suse.cz> <21d7e9970809241722w7c3bb6a5w1af5801b7380169d@mail.gmail.com> <21d7e9970809241722w7c3bb6a5w1af5801b7380169d@mail.gmail.com> <alpine.LNX.1.10.0809250310190.4671@pegasus.suse.cz> <200809250401.54818.elendil@planet.nl> <Pine.LNX.4.64.0809251921340.18801@twin.jikos.cz>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Pine.LNX.4.64.0809251921340.18801-1ReQVI26iDCaZKY3DrU6dA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>
Cc: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, jeffrey.t.kirsher-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, david.vrabel-kQvG35nSl+M@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org, jesse.brandeburg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org

Jiri Kosina wrote:
> 
> Yes, I think that xorg/xorg i915 driver/libdrm/GEM/whatever are the 
> biggest suspect currently, according to the data that has been gathered so 
> far.
> 
> Still, what confuses me a little bit -- the EEPROM of the card is set to 
> all 0xff, once the corruption happens. Isn't that a quite a coincidence, 
> that bytes representing "nothing" in this context are used?
> 

Typical card EEPROMs are serial - either I2C or SPI.  I believe the 
Intel cards use SPI EEPROMs, but I'm not sure.

[Disclaimer: I don't actually know SPI all that well; I know I2C better. 
  However, I'm pretty sure the following argument does apply to both.]

Consider a corruption which turns a read command into a write command -- 
often just a single bit difference.  Now, the EEPROM will expect data in 
to write, but nothing will be driving the data line, so it will 
typically be a 1.  As the host tries to read, it will therefore fill the 
EEPROM with all ones.

	-hpa
