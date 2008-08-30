From: "Yinghai Lu" <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: Linux 2.6.27-rc5: System boot regression caused by commit a2bd7274b47124d2fc4dfdb8c0591f545ba749dd
Date: Fri, 29 Aug 2008 22:02:33 -0700
Message-ID: <86802c440808292202v235e66bcr42f3727a3665a71e@mail.gmail.com>
References: <alpine.LFD.1.10.0808281555230.3300@nehalem.linux-foundation.org>
	 <86802c440808291711t32d3e76dsf804856b0a8f4939@mail.gmail.com>
	 <alpine.LFD.1.10.0808291733260.3300@nehalem.linux-foundation.org>
	 <alpine.LFD.1.10.0808291751480.3300@nehalem.linux-foundation.org>
	 <86802c440808291830t4547140dx9b12353649edd975@mail.gmail.com>
	 <alpine.LFD.1.10.0808291919080.3300@nehalem.linux-foundation.org>
	 <alpine.LFD.1.10.0808291954410.3300@nehalem.linux-foundation.org>
	 <86802c440808292007t3588edfnef95b723320ff023@mail.gmail.com>
	 <alpine.LFD.1.10.0808292017440.5010@nehalem.linux-foundation.org>
	 <86802c440808292141g6ffd1329p54e58ee04c26540a@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=JNJKgni2a0hj4Bxl6+zFthMJHvvFnGTVJqI1TrLzPmQ=;
        b=CDaIQh6sRpkJ33KeBz2p0hmF7e9nNvICjGXABXStd2O7/Td9vgpaoncbOsud/FP1pn
         RQVJnlXJ2FZOLWeYq0zKpcTcNgIBxDq7EqdHX3gWoqAB21ZvliCKPKthlGWzI4QQ+Z9c
         EpVGZCrmd7dU0ykBSulVvTisMz4TYiTvsBCMM=
In-Reply-To: <86802c440808292141g6ffd1329p54e58ee04c26540a-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, David Witbrodt <dawitbro-rphTv4pjVZMJGwgDXS7ZQA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Fri, Aug 29, 2008 at 9:41 PM, Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> On Fri, Aug 29, 2008 at 8:24 PM, Linus Torvalds
> <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org> wrote:
>>
>>
>> On Fri, 29 Aug 2008, Yinghai Lu wrote:
>>>
>>> we need to use insert_resource_split_to_fit instead...
>>>
>>> otherwise __request_region will not be happy.
>>
>> Are you really really sure?
>>
>> Try just removing the IORESOURCE_BUSY. As mentioned, if we expect the PCI
>> BAR's to work with the e820 resources, then BUSY really is simply not
>> right any more. Not that I think it should matter either..
>>
>> The ones that are added _early_ should be IORESOURCE_BUSY (ie the ones
>> that cover RAM), but the others we now expect to nest with PCI BARs.
>
> not all. some are MMCONF, some are for GART, and some for fixed lapic,
> and fixed ioapic, and fixed HPET.

we may not need put reserve entries from e820 into resource tree.
and only insert those sticky resources (with _BUSY) before
pci_assign_unassign and _request_region etc.

YH
