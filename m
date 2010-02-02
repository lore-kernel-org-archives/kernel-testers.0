From: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: ohci1394_dma=early crash since 2.6.32 (was Re: [Bug #14487] PANIC:
 early exception 08 rip 246:10 error	ffffffff810251b5 cr2 0)
Date: Mon, 01 Feb 2010 22:23:14 -0800
Message-ID: <4B67C4D2.5050205@gmail.com>
References: <UgwvXSBS_tM.A.alD.1EiZLB@chimera> <de962C6zBxL.A.H1G.1HiZLB@chimera> <4B6630CA.9010207@gmail.com> <20100201125441.GB2576@bicker> <4B671606.3080405@gmail.com> <4B673233.8000300@s5r6.in-berlin.de> <4B6740B5.5070601@gmail.com> <4B675534.5070107@s5r6.in-berlin.de> <4B676917.2080506@gmail.com> <4B67BC12.4080709@s5r6.in-berlin.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=cTyxq4IJxESOuJBh5scd9TjyFOvHgy5cm552txMAH9A=;
        b=w+rhCSd3A0sgy7B1Tflb4Wwq0zoR2t7dBxTZdfRKy7PKfvVbcmWEV8HLZyD/9ocV3P
         LfXDh049xBJ5k2QNhp1DDpszX4x2GKBOvmtmOujNHYPXM8gcu2b5QMzstyXt2cmpsU88
         sZQkuUgp5Y8hD8xdfXgnT1p+AZ53a142sjoJk=
In-Reply-To: <4B67BC12.4080709-MtYdepGKPcBMYopoZt5u/LNAH6kLmebB@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Stefan Richter <stefanr-MtYdepGKPcBMYopoZt5u/LNAH6kLmebB@public.gmane.org>
Cc: Dan Carpenter <error27-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, linux1394-devel-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On 02/01/10 21:45, Stefan Richter wrote:
> Justin P. Mattock wrote:
>> So(correct me if I'm wrong), I'm generating a 64 bit register
>> and the kernel is looking for a 32 bit register causing the crash.
>
> No, the class = read_pci_config(); if (class == ...) ... parts of the
> code are entirely innocent as far as I can tell.  This is just the
> FireWire--PCI chip detection.  It is the subsequent driver setup for the
> chip that crashes somewhere.
>
> When you modified that chip detection code earlier, you only prevented
> crashes when your modifications ended up as "ignore all PCI devices,
> also FireWire ones" == "do nothing at all".
>
> Perhaps the bootup sequence of the x86(-64) platform was changed from
> 2.6.31 to .32 thus that some assumptions in init_ohci1394_dma about when
> are what resources available are not true anymore.  According to your
> screenshot in http://lkml.org/lkml/2009/10/27/335 the issue is about
> memory allocation, not about PCI bus access.


Alright.. I'll keep focus on that
and see if I can figure this out.

As for anything changed in the kernel
(2.6.31 - present), tough to say
from what I remember I had created a new fresh
lfs system using these CFLAGS:

CFLAGS="-mtune=core2 -march=core2 -O2 -pipe -fomit-frame-pointer" 
CXXFLAGS="${CFLAGS}" MAKEOPTS="{-j3}"
(without -m option gcc defaults(I think)to -m32).

which booted with ohci1394_dma=early just fine.

then decided to build another lfs system with the same CFLAGS except
added -m64 (pure64) to the build process.
(then this showed up).

What I can try is do a git revert to 2.6.29/27 to see if this thing
fires off(before going any further). if the system boots then do a bisect.

Justin P. Mattock
