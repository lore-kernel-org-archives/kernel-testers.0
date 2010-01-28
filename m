From: Yinghai Lu <yinghai@kernel.org>
Subject: Re: [Bug #15124] PCI host bridge windows ignored (works with pci=use_crs)
Date: Thu, 28 Jan 2010 10:13:26 -0800
Message-ID: <4B61D3C6.1050104@kernel.org>
References: <md-TZL3UUvL.A.FiE.xJMXLB@chimera>	<201001261348.59508.rjw@sisk.pl>	<201001261032.37053.bjorn.helgaas@hp.com>	<201001261902.13911.rjw@sisk.pl>	<20100126101752.78196900@jbarnes-piketon>	<4B5F735B.2040308@kernel.org>	<alpine.LFD.2.00.1001271748300.3570@localhost.localdomain>	<20100127192409.79af96db@jbarnes-piketon>	<20100128040226.GB8964@jgarrett.org> <20100128082432.05a97ebc@jbarnes-piketon>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755636Ab0A1SQ2@vger.kernel.org>
In-Reply-To: <20100128082432.05a97ebc@jbarnes-piketon>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jesse Barnes <jbarnes@virtuousgeek.org>
Cc: Jeff Garrett <jeff@jgarrett.org>, Linus Torvalds <torvalds@linux-foundation.org>, "Rafael J. Wysocki" <rjw@sisk.pl>, Bjorn Helgaas <bjorn.helgaas@hp.com>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Linux PCI <linux-pci@vger.kernel.org>, Myron Stowe <myron.stowe@hp.com>, Matthew Garrett <mjg59@srcf.ucam.org>, Ingo Molnar <mingo@elte.hu>

On 01/28/2010 08:24 AM, Jesse Barnes wrote:
> On Wed, 27 Jan 2010 22:02:26 -0600
> jeff@jgarrett.org (Jeff Garrett) wrote:
> 
>> On Wed, Jan 27, 2010 at 07:24:09PM -0800, Jesse Barnes wrote:
>>> On Wed, 27 Jan 2010 17:50:17 -0800 (PST)
>>> Linus Torvalds <torvalds@linux-foundation.org> wrote:
>>>> On Tue, 26 Jan 2010, Yinghai Lu wrote:
>>>>>
>>>>> [PATCH] x86/pci: don't use ioh resource if only have one ioh
>>>>
>>>> Please, no.
>>>>
>>>> This patch is too ugly to live.
>>>>
>>>> And it's totally unacceptable to probe every single possible PCI device 
>>>> for something like this.
>>>>
>>>> If we don't know enough about the hardware workings of those Intel bridges 
>>>> to know when they are active and how they decode things, then please let's 
>>>> just disable intel_bus.c entirely.
>>>>
>>>> There's no excuse for hacky tests like this.
>>>
>>> Ok, we'll just kill it entirely then.  I'll send a patch tomorrow
>>> unless Yinghai beats me to it.
>>
>> What about something like this (works for me, without pci=use_crs)?
>>
>> ---
>>     Remove intel_bus.c Intel-specific PCI/IOH logic
>>     
>>     Signed-off-by: Jeff Garrett <jeff@jgarrett.org>
> 
> Yeah, looks good.  I'll push to Linus today.
> 

please don't. will send you another patch, to keep the print out so we can cross check the _CRS.

YH
