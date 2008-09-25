From: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Wed, 24 Sep 2008 21:00:36 -0700 (PDT)
Message-ID: <20080924.210036.171431340.davem@davemloft.net>
References: <alpine.LNX.1.10.0809250310190.4671@pegasus.suse.cz>
	<48DAF75D.4050908@garzik.org>
	<21d7e9970809242051x17785159ya7510d92f705f3cf@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <21d7e9970809242051x17785159ya7510d92f705f3cf-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
Cc: jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org, jkosina-AlSwsSmVLrQ@public.gmane.org, akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, jeffrey.t.kirsher-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, david.vrabel-kQvG35nSl+M@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org, mingo-X9Un+BFzKDI@public.gmane.org, jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org, jesse.brandeburg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org

From: "Dave Airlie" <airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date: Thu, 25 Sep 2008 13:51:23 +1000

> I think e1000e may enable a BAR or something that causes the issue to
> break this hw., I haven't seen it broken on any
> machine where e1000e wasn't loaded yet. Again the r8169 might be the
> same issue, but it maybe because the bar was enabled.

All PCI device drivers in the kernel first do pci_enable_device()
which essentially enables all BARs.

The flash lives in BAR 1 of the E1000E, for example.
