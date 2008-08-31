From: "Yinghai Lu" <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #11358] net: forcedeth call restore mac addr in nv_shutdown path
Date: Sun, 31 Aug 2008 11:02:46 -0700
Message-ID: <86802c440808311102jffbaa48n4c5b46d8a9ba1d0@mail.gmail.com>
References: <q6jBvyFdWbL.A.K4C.fhbuIB@albercik>
	 <N8SeMoDzuxC.A.nFF.0ibuIB@albercik>
	 <20080831084135.GA2698@yamamaya.is-a-geek.org>
	 <20080831130904.GA4070@yamamaya.is-a-geek.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=HURkkllInPq9VlWgYQdGZNfr7Xiq5RU/vGjVIS1AaZ8=;
        b=heT1ebBhzmEN8nrlDb+i1BPqQPgJiTtjw8URtctaXlwQWx91eZrOLWqkuydRAGtpBY
         ep6ODAfbhovcpzTNczTb2jBBaWRuomS+wdZb6OQalUC5igk5+YpDnQxAEq2PEfI75Xei
         rfMLXsdXgR1OPrpp0Rr3q4F13mU83/0FY1Vho=
In-Reply-To: <20080831130904.GA4070-LEnv4NkkRI/kz0gr9c1H3IV7twrRs5iQ@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Tobias Diedrich <ranma+kernel-YxUgxmcw2FPQD6PfKP4TzA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers@vge>

On Sun, Aug 31, 2008 at 6:09 AM, Tobias Diedrich
<ranma+kernel-YxUgxmcw2FPQD6PfKP4TzA@public.gmane.org> wrote:
> Tobias Diedrich wrote:
>> I got around to try kexec and found that on 2.6.27-rc5, without
>> Yinghai Lu's patch, when I kexec while forecdeth is loaded I get the
>> following when the new kernel tries to load the module (on my Asus
>> M2N-SLI Deluxe):
>>
>> |Aug 31 10:10:42 melchior kernel: [   10.578053] forcedeth: Reverse Engineered nForce ethernet driver. Version 0.61.
>> |Aug 31 10:10:42 melchior kernel: [   10.578256] forcedeth 0000:00:08.0: BAR 0: error updating (0xfe02a000 != 0x000000)
>> |Aug 31 10:10:42 melchior kernel: [   10.580901] forcedeth 0000:00:08.0: enabling device (0000 -> 0003)
>> |Aug 31 10:10:42 melchior kernel: [   10.581405] ACPI: PCI Interrupt Link [APCH] enabled at IRQ 22
>> |Aug 31 10:10:42 melchior kernel: [   10.581509] forcedeth 0000:00:08.0: PCI INT A -> Link[APCH] -> GSI 22 (level, low) -> IRQ 22
>> |Aug 31 10:10:42 melchior kernel: [   10.581699] forcedeth 0000:00:08.0: setting latency timer to 64
>> |Aug 31 10:10:42 melchior kernel: [   10.581748] forcedeth 0000:00:08.0: Invalid Mac address detected: ff:ff:ff:ff:ff:ff
>> |Aug 31 10:10:42 melchior kernel: [   10.581936] forcedeth 0000:00:08.0: Please complain to your hardware vendor. Switching to a random MAC.
>> |Aug 31 10:10:42 melchior kernel: [   15.981960] forcedeth 0000:00:08.0: open: Could not find a valid PHY.
>> |Aug 31 10:10:42 melchior kernel: [   15.982131] forcedeth 0000:00:08.0: PCI INT A disabled
>> |Aug 31 10:10:42 melchior kernel: [   15.982283] forcedeth: probe of 0000:00:08.0 failed with error -12
>> |Aug 31 10:10:42 melchior kernel: [   16.017545] forcedeth 0000:00:09.0: BAR 0: error updating (0xfe027000 != 0x000000)
>> |Aug 31 10:10:42 melchior kernel: [   16.017766] forcedeth 0000:00:09.0: enabling device (0000 -> 0003)
>> |Aug 31 10:10:42 melchior kernel: [   16.018720] ACPI: PCI Interrupt Link [AMC1] enabled at IRQ 21
>> |Aug 31 10:10:42 melchior kernel: [   16.018839] forcedeth 0000:00:09.0: PCI INT A -> Link[AMC1] -> GSI 21 (level, low) -> IRQ 21
>> |Aug 31 10:10:42 melchior kernel: [   16.019050] forcedeth 0000:00:09.0: setting latency timer to 64
>> |Aug 31 10:10:42 melchior kernel: [   16.019129] forcedeth 0000:00:09.0: Invalid Mac address detected: ff:ff:ff:ff:ff:ff
>> |Aug 31 10:10:42 melchior kernel: [   16.019339] forcedeth 0000:00:09.0: Please complain to your hardware vendor. Switching to a random MAC.
>> |Aug 31 10:10:42 melchior kernel: [   21.399400] forcedeth 0000:00:09.0: open: Could not find a valid PHY.
>> |Aug 31 10:10:42 melchior kernel: [   21.399572] forcedeth 0000:00:09.0: PCI INT A disabled
>> |Aug 31 10:10:42 melchior kernel: [   21.399723] forcedeth: probe of 0000:00:09.0 failed with error -12
>>
>> If I rmmod forcedeth before kexec, it loads fine later.
> [...]
>> Maybe also calling nv_restore_phy() and/or pci_release_regions() in
>> the shutdown hook would help.
>>
>> TODO:
>> Try with the patch, maybe try nv_restore_phy, test if WOL is
>> affected by the patch.
>
> I just tried with the patch and both options above in the shutdown
> path and the kexec'd kernel still had the same problems as above.
>
> Interestingly the message comes from drivers/pci/setup-res.c, where
> it updates the BAR register and reads it back to make sure it was
> updated and somehow reads back zeroes?
>
> I wonder what's going on there, that should never happen AFAIK...
> Maybe the pci device was not properly reenabled, but OTOH when I
> just rmmod before kexec it seems to work and nv_remove also calls
> pci_disable_device()...

in addition to this patch, you may need another patch from Rafael...,
that one fix the MSI...etc,

YH
