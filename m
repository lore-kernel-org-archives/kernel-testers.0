From: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: ohci1394_dma=early crash since 2.6.32 (was Re: [Bug #14487] PANIC:
 early exception 08 rip 246:10 error	ffffffff810251b5 cr2 0)
Date: Mon, 01 Feb 2010 12:59:33 -0800
Message-ID: <4B6740B5.5070601@gmail.com>
References: <UgwvXSBS_tM.A.alD.1EiZLB@chimera> <de962C6zBxL.A.H1G.1HiZLB@chimera> <4B6630CA.9010207@gmail.com> <20100201125441.GB2576@bicker> <4B671606.3080405@gmail.com> <4B673233.8000300@s5r6.in-berlin.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=EDvJ5jVHl8OdAXQUA/lkruIzuUJU7ND/evYJvNkEj2Q=;
        b=SGS1HMaiUfD70qeNN692bn+XbzLZ8wBpZqBErBIZ7KzXlv6YKd/F1mr2Yn+815+dSY
         oAugjORh7sYJH/2zSmHwyscyewVVatkZpdRmz+i1WCHiaP0BKpipGD2JIPxYsAhVncD1
         166vSxHTLfSqoJw3ckVxdNevaDQyc3MqOaGp0=
In-Reply-To: <4B673233.8000300-MtYdepGKPcBMYopoZt5u/LNAH6kLmebB@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Stefan Richter <stefanr-MtYdepGKPcBMYopoZt5u/LNAH6kLmebB@public.gmane.org>
Cc: Dan Carpenter <error27-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, linux1394-devel-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On 02/01/10 11:57, Stefan Richter wrote:
> Justin P. Mattock wrote:
>> On 02/01/10 04:54, Dan Carpenter wrote:
>>> On Sun, Jan 31, 2010 at 05:39:22PM -0800, Justin P. Mattock wrote:
>>>> On 01/31/10 16:43, Rafael J. Wysocki wrote:
>>>>> This message has been generated automatically as a part of a report
>>>>> of regressions introduced between 2.6.31 and 2.6.32.
>>>>>
>>>>> The following bug entry is on the current list of known regressions
>>>>> introduced between 2.6.31 and 2.6.32.  Please verify if it still should
>>>>> be listed and let me know (either way).
>>>>>
>>>>>
>>>>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14487
>>>>> Subject	: PANIC: early exception 08 rip 246:10 error ffffffff810251b5 cr2 0
>>>>> Submitter	: Justin P. Mattock<justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
>>>>> Date	: 2009-10-23 16:45 (101 days old)
>>>>> References	: http://lkml.org/lkml/2009/10/23/252
> [...]
>>>> yeah still hitting this.
> [...]
>>> I've added the linux1394-devel people to the CC list.
>
> Thanks.  Alas the original author is MIA, and the bug seems to be tied
> to the early platform setup code (rather than OHCI 1394 device specific
> code) about which I for one am clueless.
>
> The listed MAINTAINERS contact of init_ohci1394_dma.c is linux1394-devel
> and me, but a good deal of this driver is very x86 platform specific.
> (There was some interest in making useful for other architectures, but
> this would merely mean that the respective architecture people need to
> keep an eye on their parts of this driver.)
>
>>> Justin has found an issue that when he boots with:  ohci1394_dma=early
>>> his computer
>>> crashes.
>>>
>>> He can get it to boot by modifying drivers/ieee1394/init_ohci1394_dma.c:
> [...]
>
> This modification and some others in the LKML thread from October simply
> cause init_ohci1394_controller() to be skipped for all devices.
>
> init_ohci1394_controller() is simple enough:
>
> static inline void __init init_ohci1394_controller(int num, int slot,
> int func)
> {
> 	unsigned long ohci_base;
> 	struct ti_ohci ohci;
>
> 	printk(KERN_INFO "init_ohci1394_dma: initializing OHCI-1394"
> 			 " at %02x:%02x.%x\n", num, slot, func);
>
> 	ohci_base = read_pci_config(num, slot, func,
> 		PCI_BASE_ADDRESS_0+(0<<2))&  PCI_BASE_ADDRESS_MEM_MASK;
>
> 	set_fixmap_nocache(FIX_OHCI1394_BASE, ohci_base);
>
> 	ohci.registers = (void *)fix_to_virt(FIX_OHCI1394_BASE);
>
> 	init_ohci1394_reset_and_init_dma(&ohci);
> }
>
> Justin, you already established that read_pci_config is not the point
> where it crashes, right?
>
> set_fixmap_nocache() and fix_to_virt() frighten me because I don't know
> what they do. :-)
>
> The rest, init_ohci1394_reset_and_init_dma(), is something which I can
> easily follow.  There is just a bunch of register reads and writes with
> occasional mdelays.  This /could/ be a cause of the crash too if the
> controller is inspired to do something dangerous in there --- meaning,
> if the OHCI 1394 controller starts to write something per DMA into
> memory.  However, we do not switch on any DMA context except for the
> so-called physical DMA unit which only springs into action if a remote
> FireWire-attached console instructs it to do so.
>
> I am noticing one point where init_ohci1394_dma.c violates the OHCI 1394
> specification:  OHCI1394_HCControl_linkEnable is witched on while the
> OHCI1394_ConfigROMmap register is still invalid.  This register needs to
> contain a physical address of a 1kB sized, 1kB aligned memory region
> which allows DMA_TO_DEVICE.  So, since this is a read-only DMA, I am
> tempted to say that this potential issue should not be a cause for a
> kernel crash.
>
> (Sinde note, the OHCI 1394 spec is freely available, see
> http://ieee1394.wiki.kernel.org/index.php/Specifications#OHCI_Release_1.1.2C_January_6.2C_2000
> )
>
>
> Justin Mattock wrote on 2009-10-27 in http://lkml.org/lkml/2009/10/27/335:
>> o.k. you should be able to view
>> this:(let me know if you can't and I can
>> manually write out, and in time find a public
>> photo sharing suite to make things easier).
>>
>> http://www.flickr.com/photos/44066293@N08/4050317695
>>
>> When this happens I see lots of messages from the print
>> during boot, then this happens.
>
> (Now that a bugzilla.kernel.org ticket exists for this you can also use
> bugzilla.kernel.org to publish screenshots if you have an account there.)
>
> This screenshot looks like ___alloc_bootmem_node is the issue here, or
> am I mistaken of what the order of functions in the backtrace means?


cool, thanks for the assistance and info on this.
(I'll have to read through the specification for ohci1394);

as for __alloc_bootmem_node I have not looked into that yet.
(I can read up on this today).

what I was looking at was:
set_fixmap_nocache(FIX_OHCI1394_BASE, ohci_base);

which led me to arch/x86/include/asm/fixmap.h
leading me to believe I was hitting something with
FIXADDR_TOP because the system is a pure64.
(reading through fixmap.h there is mention that
vsyscall only covers 32bit making me think this might
be it).

and also:

init_ohci1394_reset_and_init_dma(&ohci);
(on the bugreport I have a temporary patch
which gets me up and running to do early debugging,
there you will see  both calls are commented out

(as for yesterdays 0xffffffffffffffff(just experimenting)Google gives me 
no info on the differences between 8f's to 16f's, I was under the 
impression that it's x86_32 and x86_64 for the pci address).

as for the bugzilla.kernel.org I'll have to setup an
account there(flickr is nice, but having a bugreport
photo and pics of my vacation isn't);

In general I'm thinking this has todo with the arch(but could be wrong),
because one lfs system I built was x86_32,which worked fine, and then
the next is a pure64 which triggers this.

Thanks for the info/help.

Justin P. Mattock












