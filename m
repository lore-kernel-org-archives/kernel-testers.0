From: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Subject: Re: [Bug #16161] [2.6.35-rc1 regression] sysfs: cannot create
 duplicate filename ... XVR-600 related?
Date: Fri, 18 Jun 2010 14:01:10 -0700 (PDT)
Message-ID: <20100618.140110.246534188.davem@davemloft.net>
References: <20100618131049.462ca7ce@virtuousgeek.org>
	<20100618.132655.260090086.davem@davemloft.net>
	<4C1BD9CC.5060300@athenacr.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4C1BD9CC.5060300-FfUH/8kkONhWk0Htik3J/w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: bmb-FfUH/8kkONhWk0Htik3J/w@public.gmane.org
Cc: jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, mikpe-1zs4UD6AkMk@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, achiang-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org

From: Brian Bloniarz <bmb-FfUH/8kkONhWk0Htik3J/w@public.gmane.org>
Date: Fri, 18 Jun 2010 16:40:44 -0400

> In the patch, 2 individual code paths were trying to
> create the same symlinks:
> pci-sysfs.c:pci_create_slot_links(struct pci_dev *dev)
> and
> slot.c:create_sysfs_files(struct pci_slot *slot).
> I think some archs managed to call those both during
> initialization, and some not.

Right, and if I recall correctly when adding sparc64 support for
the sysfs slot stuff if you wanted to create the slots in a
non-hotplug situation (which all of the sparc64 cases are) you
had to defer the sysfs node creation to later in the boot than
when the PCI buses are actually probed and populated.
