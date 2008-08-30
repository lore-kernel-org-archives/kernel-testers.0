From: "Yinghai Lu" <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: Linux 2.6.27-rc5: System boot regression caused by commit a2bd7274b47124d2fc4dfdb8c0591f545ba749dd
Date: Sat, 30 Aug 2008 16:39:19 -0700
Message-ID: <86802c440808301639j137ebef1r1ecadeebd351fc03@mail.gmail.com>
References: <alpine.LFD.1.10.0808281555230.3300@nehalem.linux-foundation.org>
	 <alpine.LFD.1.10.0808301012060.3290@nehalem.linux-foundation.org>
	 <86802c440808301107n4561e815ldf53183c92a7bc93@mail.gmail.com>
	 <alpine.LFD.1.10.0808301141590.3290@nehalem.linux-foundation.org>
	 <86802c440808301210u6db1b4e7p4036bdc95db1a601@mail.gmail.com>
	 <alpine.LFD.1.10.0808301214310.3290@nehalem.linux-foundation.org>
	 <86802c440808301314t525d1b75r9afcc73857cf5c79@mail.gmail.com>
	 <alpine.LFD.1.10.0808301539391.3290@nehalem.linux-foundation.org>
	 <86802c440808301550s627dfcb0h7ff8971c8248703a@mail.gmail.com>
	 <alpine.LFD.1.10.0808301615450.3290@nehalem.linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=XmQdzKySsyk/p02DBivhAUFyT5WyQdx2YPbFhf6gJ4U=;
        b=ha/Kd3YHIb4RxAQA67eebyQvsyQ1dNgkX3MBIJa96c+/fJon0HnHG9O6lC/Iye6N6p
         vpk6w0xEc7ZZ7TQL3vdE0uphWp0+sqXQm3Hp4IGmxejiVL3AgGqWMDuKckaQH43f7jWj
         HqUUXMqUJfyGScseE7Z8HeeyaBq4Y5pTmFNf8=
In-Reply-To: <alpine.LFD.1.10.0808301615450.3290-nfNrOhbfy2R17+2ddN/4kux8cNe9sq/dYPYVAmT7z5s@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Jordan Crouse <jordan.crouse-5C7GfCeVMHo@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, David Witbrodt <dawitbro-rphTv4pjVZMJGwgDXS7ZQA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Sat, Aug 30, 2008 at 4:28 PM, Linus Torvalds
<torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org> wrote:
>
>
> On Sat, 30 Aug 2008, Yinghai Lu wrote:
>>
>> wait, THAT BAR is 64BIT capable, So kernel should assign 64bit range to it...
>> it request_resource fails...
>
> I don't think we've ever done new allocations in 64 bits. Although looking
> for it, I have to admit that I don't see what would limit us right now.
> There used to be some paths that weren't 64-bit clean, but I think we
> fixed all of those.

would be some corner case...

didn't see anything there.

calling  pcibios_assign_resources+0x0/0x90
request_resource: root: (PCI Bus 0000:01) [fe700000, fe7fffff], new:
(0000:01:00.0) [fe7c0000, fe7dffff] conflict 0
request_resource: root: (PCI Bus 0000:03) [fe900000, fe9fffff], new:
(0000:03:00.0) [fe9c0000, fe9dffff] conflict 0
pci 0000:00:02.0: PCI bridge, secondary bus 0000:01
pci 0000:00:02.0:   IO window: 0x9000-0x9fff
pci 0000:00:02.0:   MEM window: 0xfe700000-0xfe7fffff
pci 0000:00:02.0:   PREFETCH window: 0x000000d8000000-0x000000dfffffff
pci 0000:00:04.0: PCI bridge, secondary bus 0000:02
pci 0000:00:04.0:   IO window: 0xa000-0xbfff
pci 0000:00:04.0:   MEM window: 0xfe800000-0xfe8fffff
pci 0000:00:04.0:   PREFETCH window: disabled
pci 0000:00:06.0: PCI bridge, secondary bus 0000:03
pci 0000:00:06.0:   IO window: 0xc000-0xcfff
pci 0000:00:06.0:   MEM window: 0xfe900000-0xfe9fffff
pci 0000:00:06.0:   PREFETCH window: disabled
pci 0000:00:07.0: PCI bridge, secondary bus 0000:04
pci 0000:00:07.0:   IO window: 0xd000-0xefff
pci 0000:00:07.0:   MEM window: 0xfea00000-0xfeafffff
pci 0000:00:07.0:   PREFETCH window: disabled
pci 0000:00:14.4: PCI bridge, secondary bus 0000:05
pci 0000:00:14.4:   IO window: disabled
pci 0000:00:14.4:   MEM window: 0xfeb00000-0xfebfffff
pci 0000:00:14.4:   PREFETCH window: disabled
pci 0000:00:02.0: setting latency timer to 64
pci 0000:00:04.0: setting latency timer to 64
pci 0000:00:06.0: setting latency timer to 64
pci 0000:00:07.0: setting latency timer to 64

YH
