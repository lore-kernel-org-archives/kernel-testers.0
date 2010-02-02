From: Stefan Richter <stefanr-MtYdepGKPcBMYopoZt5u/LNAH6kLmebB@public.gmane.org>
Subject: Re: ohci1394_dma=early crash since 2.6.32 (was Re: [Bug #14487] PANIC:
 early exception 08 rip 246:10 error	ffffffff810251b5 cr2 0)
Date: Tue, 02 Feb 2010 06:45:54 +0100
Message-ID: <4B67BC12.4080709@s5r6.in-berlin.de>
References: <UgwvXSBS_tM.A.alD.1EiZLB@chimera> <de962C6zBxL.A.H1G.1HiZLB@chimera> <4B6630CA.9010207@gmail.com> <20100201125441.GB2576@bicker> <4B671606.3080405@gmail.com> <4B673233.8000300@s5r6.in-berlin.de> <4B6740B5.5070601@gmail.com> <4B675534.5070107@s5r6.in-berlin.de> <4B676917.2080506@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4B676917.2080506-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Dan Carpenter <error27-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, linux1394-devel-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Justin P. Mattock wrote:
> So(correct me if I'm wrong), I'm generating a 64 bit register
> and the kernel is looking for a 32 bit register causing the crash.

No, the class = read_pci_config(); if (class == ...) ... parts of the
code are entirely innocent as far as I can tell.  This is just the
FireWire--PCI chip detection.  It is the subsequent driver setup for the
chip that crashes somewhere.

When you modified that chip detection code earlier, you only prevented
crashes when your modifications ended up as "ignore all PCI devices,
also FireWire ones" == "do nothing at all".

Perhaps the bootup sequence of the x86(-64) platform was changed from
2.6.31 to .32 thus that some assumptions in init_ohci1394_dma about when
are what resources available are not true anymore.  According to your
screenshot in http://lkml.org/lkml/2009/10/27/335 the issue is about
memory allocation, not about PCI bus access.
-- 
Stefan Richter
-=====-==-=- --=- ---=-
http://arcgraph.de/sr/
