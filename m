From: "Yinghai Lu" <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: Linux 2.6.27-rc5: System boot regression caused by commit a2bd7274b47124d2fc4dfdb8c0591f545ba749dd
Date: Sat, 30 Aug 2008 17:50:16 -0700
Message-ID: <86802c440808301750w6655bbek557e6a23b8036654@mail.gmail.com>
References: <alpine.LFD.1.10.0808281555230.3300@nehalem.linux-foundation.org>
	 <alpine.LFD.1.10.0808301141590.3290@nehalem.linux-foundation.org>
	 <86802c440808301210u6db1b4e7p4036bdc95db1a601@mail.gmail.com>
	 <alpine.LFD.1.10.0808301214310.3290@nehalem.linux-foundation.org>
	 <86802c440808301314t525d1b75r9afcc73857cf5c79@mail.gmail.com>
	 <alpine.LFD.1.10.0808301539391.3290@nehalem.linux-foundation.org>
	 <86802c440808301550s627dfcb0h7ff8971c8248703a@mail.gmail.com>
	 <alpine.LFD.1.10.0808301615450.3290@nehalem.linux-foundation.org>
	 <86802c440808301639j137ebef1r1ecadeebd351fc03@mail.gmail.com>
	 <86802c440808301727k3e86c816j323eca0fb5e3f4fc@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=RgbwCk5C4XhOxduQSIKiC1s5TxpSt6hb5Urw64npkvE=;
        b=eO+yAndtQOTXC4K3WIDl5mkNYvEgf+zL5ZTmY0yXMI3Nici4abM3hXS+ngCJq3E2M9
         F3yM2/Rv3mnf71Sj0nwiOQKxj7sM+n9e+NDgEy3kvfKGNxCiRen9ZS371wEbr0iiv0Se
         RKMXhFnl+cU8AuCz2FoxeNSFOum1MxuyCsbGE=
In-Reply-To: <86802c440808301727k3e86c816j323eca0fb5e3f4fc-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Ivan Kokshaysky <ink-biIs/Y0ymYJMZLIVYojuPNP0rXTJTi09@public.gmane.org>
Cc: Jordan Crouse <jordan.crouse-5C7GfCeVMHo@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, David Witbrodt <dawitbro-rphTv4pjVZMJGwgDXS7ZQA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Sat, Aug 30, 2008 at 5:27 PM, Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
> On Sat, Aug 30, 2008 at 4:39 PM, Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
>> On Sat, Aug 30, 2008 at 4:28 PM, Linus Torvalds
>> <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org> wrote:
>>>
>>>
>>> On Sat, 30 Aug 2008, Yinghai Lu wrote:
>>>>
>>>> wait, THAT BAR is 64BIT capable, So kernel should assign 64bit range to it...
>>>> it request_resource fails...
>>>
>>> I don't think we've ever done new allocations in 64 bits. Although looking
>>> for it, I have to admit that I don't see what would limit us right now.
>>> There used to be some paths that weren't 64-bit clean, but I think we
>>> fixed all of those.
>>
>> would be some corner case...
>>
>
> pci_assign_unassigned_resources==>pci_bus_assign_resources==>pbus_assign_resources_sorted(struct
>
> static void pbus_assign_resources_sorted(struct pci_bus *bus)
> {
>        struct pci_dev *dev;
>        struct resource *res;
>        struct resource_list head, *list, *tmp;
>        int idx;
>
>        head.next = NULL;
>        list_for_each_entry(dev, &bus->devices, bus_list) {
>                u16 class = dev->class >> 8;
>
>                /* Don't touch classless devices or host bridges or ioapics.  */
>                if (class == PCI_CLASS_NOT_DEFINED ||
>                    class == PCI_CLASS_BRIDGE_HOST)
>                        continue;
>
>
> it skips the host bridge...

what's story for not touching host bridges?

YH
