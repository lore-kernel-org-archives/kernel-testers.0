From: Jesse Barnes <jbarnes@virtuousgeek.org>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Wed, 24 Sep 2008 17:26:57 -0700
Message-ID: <200809241726.58628.jbarnes@virtuousgeek.org>
References: <20080923.150722.141587696.davem@davemloft.net> <20080923.211215.193696086.davem@davemloft.net> <alpine.LNX.1.10.0809250110070.4671@pegasus.suse.cz>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1752728AbYIYA1n@vger.kernel.org>
In-Reply-To: <alpine.LNX.1.10.0809250110070.4671@pegasus.suse.cz>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jiri Kosina <jkosina@suse.cz>
Cc: David Miller <davem@davemloft.net>, jeffrey.t.kirsher@intel.com, airlied@gmail.com, david.vrabel@csr.com, rjw@sisk.pl, linux-kernel@vger.kernel.org, kernel-testers@vger.kernel.org, chrisl@vmware.com, Ingo Molnar <mingo@elte.hu>

On Wednesday, September 24, 2008 4:15 pm Jiri Kosina wrote:
> On Tue, 23 Sep 2008, David Miller wrote:
> > I did some snooping around, and while doing so I noticed that the PCI
> > mmap code for x86 doesn't do one bit of range checking on the size, or
> > any other aspect of the request, wrt. the MMIO regions actually mapped
> > in the BARs of the PCI device.
>
> Ugh, indeed. Added Ingo and Jesse to CC.
>
> > Yikes!
> >
> > It just does a reserve_memtype() on the address range, and says "ok".
> >
> > So if, for example, the X server tries to mmap() more than an MMIO bar
> > actually maps, the kernel lets the user do this.
> >
> > It would be very interesting to add the appropriate checks to
> > pci_mmap_page_range() in arch/x86/pci/i386.c, anyone who wants to do
> > this can use the code in arch/sparc64/kernel/pci.c:
> > __pci_mmap_make_offset() as a guide, and see what happens.
>
> Absolutely. Or we can even do some dirty hackery in userspace, like
> LD_PRELOADing X server and checking mmaps() that are close to MMIO regions
> of affected devices.
>
> > If the MMIO space regions of the video cards sit right before the
> > E1000E ones on the effected systems, that would pretty much
> > convince me that this is the kind of problem we are having here.
>
> Unfortunately, looking at the lspci outputs that are in
> https://bugzilla.novell.com/show_bug.cgi?id=425480 it seems to me that the
> MMIO regions are quite far away from each other.

Moreover, we don't actually do any writing (that I know of) of the ROM image 
from the X drivers or the kernel.  In fact, in many cases X should be 
accessing the RAM copy of the ROM at 0xc0000 rather than via the ROM BAR.

That said, adding a check to the x86 code would be a good thing to do; I'll 
hack up a patch tomorrow unless someone beats me to it.

-- 
Jesse Barnes, Intel Open Source Technology Center
