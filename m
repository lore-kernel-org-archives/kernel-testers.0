From: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
Subject: Re: [Bug #16161] [2.6.35-rc1 regression] sysfs: cannot create
 duplicate filename ... XVR-600 related?
Date: Fri, 18 Jun 2010 13:43:16 -0700
Message-ID: <20100618134316.408cf922@virtuousgeek.org>
References: <19475.45707.157935.788004@pilspetsen.it.uu.se>
	<201006122052.25204.rjw@sisk.pl>
	<20100618131049.462ca7ce@virtuousgeek.org>
	<20100618.132655.260090086.davem@davemloft.net>
	<4C1BD9CC.5060300@athenacr.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4C1BD9CC.5060300-FfUH/8kkONhWk0Htik3J/w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Brian Bloniarz <bmb-FfUH/8kkONhWk0Htik3J/w@public.gmane.org>
Cc: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, rjw-KKrjLPT3xs0@public.gmane.org, mikpe-1zs4UD6AkMk@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, achiang-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org

On Fri, 18 Jun 2010 16:40:44 -0400
Brian Bloniarz <bmb-FfUH/8kkONhWk0Htik3J/w@public.gmane.org> wrote:

> On 06/18/2010 04:26 PM, David Miller wrote:
> > From: Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>
> > Date: Fri, 18 Jun 2010 13:10:49 -0700
> > 
> >> I reverted the symlink patch that was causing the trouble.  The root
> >> cause is elsewhere though; it seems some firmwares report duplicate PCI
> >> slot numbers...
> > 
> > Instead of postulating, you can confirm or deny such a theory
> > by taking a look at the repository of sparc openfirmware tree
> > dumps maintained at:
> > 
> > 	master.kernel.org:/pub/scm/linux/kernel/git/davem/prtconfs.git
> 
> (Adding Alex Chiang to the cc list)
> 
> I was actually under the impression that it was just an 
> issue with the reverted patch, not an actual problem with
> hardware.

Yeah, I think you're right.  I reverted it at Alex's request and
assumed it was a firmware or configuration problem.  Looking at the
thread again I see that was a bad assumption.

> In the patch, 2 individual code paths were trying to
> create the same symlinks:
> pci-sysfs.c:pci_create_slot_links(struct pci_dev *dev)
> and
> slot.c:create_sysfs_files(struct pci_slot *slot).
> I think some archs managed to call those both during
> initialization, and some not.

Well that would explain it too.  I'm happy to take a fixed up patch if
there's demand.

Thanks,
-- 
Jesse Barnes, Intel Open Source Technology Center
