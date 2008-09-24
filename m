From: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Wed, 24 Sep 2008 12:52:15 -0700 (PDT)
Message-ID: <20080924.125215.46439097.davem@davemloft.net>
References: <21d7e9970809232245x6a91c6e2l552ff039d07e2017@mail.gmail.com>
	<20080924.003638.71148740.davem@davemloft.net>
	<20080924191022.GC2591@phobos.i.cabal.ca>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080924191022.GC2591-EK4dZfYtfFRW/gs8oUvUg/d9D2ou9A/h@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: kyle-pfcGkIkfWfAsA/PxXw9srA@public.gmane.org
Cc: airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, jkosina-AlSwsSmVLrQ@public.gmane.org, jeffrey.t.kirsher-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, david.vrabel-kQvG35nSl+M@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org

From: Kyle McMartin <kyle-pfcGkIkfWfAsA/PxXw9srA@public.gmane.org>
Date: Wed, 24 Sep 2008 15:10:22 -0400

> I've been working on a patch to detect (using a timer and checking at
>  up/down) whether or not the flash has been corrupted, and, if it is
> rewrite it with the saved good copy (which obviously only helps if
> it's the same boot.)

Looks interesting, I hope someone runs with it :-)

If the flash is seen as corrupt, we should print the current process
that is running at the time, and perhaps a pt_regs dump, as these
might provide the most important clues to diagnosing this.
