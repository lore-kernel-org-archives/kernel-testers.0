From: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Wed, 24 Sep 2008 00:36:38 -0700 (PDT)
Message-ID: <20080924.003638.71148740.davem@davemloft.net>
References: <alpine.LNX.1.10.0809240014390.4671@pegasus.suse.cz>
	<20080923.211215.193696086.davem@davemloft.net>
	<21d7e9970809232245x6a91c6e2l552ff039d07e2017@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <21d7e9970809232245x6a91c6e2l552ff039d07e2017-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
Cc: jkosina-AlSwsSmVLrQ@public.gmane.org, jeffrey.t.kirsher-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, david.vrabel-kQvG35nSl+M@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org

From: "Dave Airlie" <airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date: Wed, 24 Sep 2008 15:45:46 +1000

> I'm still dubious about this, wouldn't we see other wierdass side
> effects if X was trashing the BARs on other devices?

Sure.  My theory is that it's a recent xorg change causing this,
so I've been going through GIT history for xserver, libpciaccess,
and the intel driver for the past year looking for clues.

If there is usually a gap after the video device, there would just
be no response from the PCI bus, and the way that's handled is
chipset specific.  At least a while back, most x86 systems would
silently ignore writes and return all 1's in such a case, but
they may be generating bus error events these days.  I simply don't
know.

> I think tglx is on the right path, same problem as e1000, code is
> stupid, it can reenter the nvram read/write code from irq
> context, and pwn itself.

The e1000e side here is reproducable way too easily for it to be the
same case, as far as I see it.

The e1000 driver has probably had this problem for years and we've
only recently had some concrete cases of it triggering.

Also, what utility are you running on your system that is even
accessing the NVRAM on the e1000e card?  Knowing that might help
us understand why this problem has appeared now.  Maybe there is
some diagnostic or monitoring tool that is now becoming prevalent
in these distributions where it triggers.

This problem started happening seemingly "all of a sudden", even to
people who have been keeping sort-of recent with their kernels, such
as yourself.

Yet we can't get any sense yet what range of kernel versions are in
use when the problem triggers.

I'm about to leave for a week or so in Paris for the netfilter
workshop, so I hope that someone other than myself will do some data
mining like I have instead of (merely) tossing theories around and
finger pointing.
