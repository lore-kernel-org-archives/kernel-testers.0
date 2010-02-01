From: Stefan Richter <stefanr-MtYdepGKPcBMYopoZt5u/LNAH6kLmebB@public.gmane.org>
Subject: Re: ohci1394_dma=early crash since 2.6.32 (was Re: [Bug #14487] PANIC:
 early exception 08 rip 246:10 error	ffffffff810251b5 cr2 0)
Date: Mon, 01 Feb 2010 23:27:00 +0100
Message-ID: <4B675534.5070107@s5r6.in-berlin.de>
References: <UgwvXSBS_tM.A.alD.1EiZLB@chimera> <de962C6zBxL.A.H1G.1HiZLB@chimera> <4B6630CA.9010207@gmail.com> <20100201125441.GB2576@bicker> <4B671606.3080405@gmail.com> <4B673233.8000300@s5r6.in-berlin.de> <4B6740B5.5070601@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4B6740B5.5070601-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Dan Carpenter <error27-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, linux1394-devel-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Justin P. Mattock wrote:
> (as for yesterdays 0xffffffffffffffff(just experimenting)Google gives me
> no info on the differences between 8f's to 16f's, I was under the
> impression that it's x86_32 and x86_64 for the pci address).

As Dan noted,
	(class == 0xffffffff || 0xffffffffffffffff)
is always true because it is logically the same as
	(class == whatever) || true

If you really meant
	class == 0xffffffff || class == 0xffffffffffffffff
then the latter half will never become true because class is declared as
u32 and got its value from read_pci_config() which also returns u32.

BTW, whether a PCI device is capable of accessing 32 bit bus addresses
or also 64 bit bus addresses depends on the device, not on the CPU.
Originally, PCI only had a 32 bit addressing model.  OHCI 1394 1.0/1.1
implementations only deal with 32 bit local bus addresses.

The 'class' however is not an address but merely a register value with
24 bits width.  (Defined in the PCI Local Bus spec which is not freely
available, cited in OHCI 1394 annex A.3.)  This register is read as a 32
bits wide register from which the excess byte is later discarded.  If
all bits read are 1, the bus:slot:function is not actually populated.
-- 
Stefan Richter
-=====-==-=- --=- ----=
http://arcgraph.de/sr/
