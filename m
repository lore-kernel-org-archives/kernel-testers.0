From: Alex Chiang <achiang-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org>
Subject: Re: [Bug #16161] [2.6.35-rc1 regression] sysfs: cannot create
 duplicate filename ... XVR-600 related?
Date: Sun, 20 Jun 2010 22:58:33 -0600
Message-ID: <20100621045832.GA2274@canonical.com>
References: <20100618131049.462ca7ce@virtuousgeek.org>
 <20100618.132655.260090086.davem@davemloft.net>
 <4C1BD9CC.5060300@athenacr.com>
 <20100618.140110.246534188.davem@davemloft.net>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20100618.140110.246534188.davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Cc: bmb-FfUH/8kkONhWk0Htik3J/w@public.gmane.org, jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, mikpe-1zs4UD6AkMk@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org

* David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>:
> From: Brian Bloniarz <bmb-FfUH/8kkONhWk0Htik3J/w@public.gmane.org>
> Date: Fri, 18 Jun 2010 16:40:44 -0400
> 
> > In the patch, 2 individual code paths were trying to
> > create the same symlinks:
> > pci-sysfs.c:pci_create_slot_links(struct pci_dev *dev)
> > and
> > slot.c:create_sysfs_files(struct pci_slot *slot).
> > I think some archs managed to call those both during
> > initialization, and some not.
> 
> Right, and if I recall correctly when adding sparc64 support for
> the sysfs slot stuff if you wanted to create the slots in a
> non-hotplug situation (which all of the sparc64 cases are) you
> had to defer the sysfs node creation to later in the boot than
> when the PCI buses are actually probed and populated.

Yeah, we call pci_create_sysfs_dev_files() from pci_sysfs_init()
and from pci_bus_add_device().

I haven't figured out why it is that creating other sysfs files,
e.g. rom files, capabilities, etc. don't also result in duplicate
entries while the slots do.

Clearly my expectation was incorrect for the cases when
pci_create_sysfs_dev_files() gets called on the different
architectures.

Anyhow, thanks for the revert Jesse. I wish I had more
time/energy to dig into this right now, but I really don't.
Sorry.

/ac
