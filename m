From: Yinghai Lu <yinghai@kernel.org>
Subject: Re: [Bug #15124] PCI host bridge windows ignored (works with pci=use_crs)
Date: Wed, 27 Jan 2010 17:32:54 -0800
Message-ID: <4B60E946.4040903@kernel.org>
References: <md-TZL3UUvL.A.FiE.xJMXLB@chimera>	<201001270945.17113.bjorn.helgaas@hp.com>	<20100127085337.6ff06f6e@jbarnes-piketon>	<201001271345.54454.bjorn.helgaas@hp.com>	<alpine.LFD.2.00.1001271247450.3570@localhost.localdomain>	<20100127125905.17db320f@jbarnes-piketon> <20100127130210.6fe94255@jbarnes-piketon>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-pci-owner@vger.kernel.org>
In-Reply-To: <20100127130210.6fe94255@jbarnes-piketon>
Sender: linux-pci-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jesse Barnes <jbarnes@virtuousgeek.org>, Linus Torvalds <torvalds@linux-foundation.org>, Bjorn Helgaas <bjorn.helgaas@hp.com>
Cc: Jeff Garrett <jeff@jgarrett.org>, "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Linux PCI <linux-pci@vger.kernel.org>, Myron Stowe <myron.stowe@hp.com>, Matthew Garrett <mjg59@srcf.ucam.org>, Ingo Molnar <mingo@elte.hu>

On 01/27/2010 01:02 PM, Jesse Barnes wrote:
> On Wed, 27 Jan 2010 12:59:05 -0800
> Jesse Barnes <jbarnes@virtuousgeek.org> wrote:
> 
>> On Wed, 27 Jan 2010 12:50:12 -0800 (PST)
>> Linus Torvalds <torvalds@linux-foundation.org> wrote:
>>
>>>
>>>
>>> On Wed, 27 Jan 2010, Bjorn Helgaas wrote:
>>>>
>>>> Without intel_bus.c, we essentially assume config 1 all the time.
>>>> If we keep intel_bus.c and this patch for .33, things should work
>>>> for configs 1 and 4.  Adding support for config 4 is good.
>>>
>>> Quite frankly, is there any major downside to just disabling/removing 
>>> intel_bus.c for 2.6.33? If we're not planning on having it in the long run 
>>> anyway - or even if we are, but we can't be really happy about the state 
>>> of it as it would be in 2.6.33, not using it at all seems to be the 
>>> smaller headache.
>>>
>>> The machines that it helps are also the machines where you can fix things 
>>> up with 'use_csr', no? And they are pretty rare, and they didn't use to 
>>> work without that use_csr in 2.6.32 either, so it's not even a regression.
>>>
>>> Am I missing something?
>>
>> No that's the plan.  intel_bus.c was a good effort, but it's just too
>> different from what Windows does, and it'll always be behind.  We'll
>> disable it for 2.6.33 and try again to move to _CRS in 2.6.34 (but
>> fixing the problem with large numbers of _CRS resources this time).
> 
> Should say "disable it for 2.6.33 for all but multi-IOH configs", which
> seem to be fairly rare anyway, and were what intel_bus.c was designed
> to accommodate.  On the one machine that motivated it, use_crs was
> broken (though it likely isn't now), so it seems the safest route.

will try to produce one patch to handle subtract decoding for legacy IOH aka the one with ESI.

the structure could be something like amd_bus.c, need to do it early, but it need after pci_arch_init to get mmconf.

YH
