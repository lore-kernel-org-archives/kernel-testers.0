From: FUJITA Tomonori <fujita.tomonori-Zyj7fXuS5i5L9jVzuh4AOg@public.gmane.org>
Subject: Re: [Bug #13001] PCI-DMA: Out of IOMMU space
Date: Tue, 28 Apr 2009 18:43:49 +0900
Message-ID: <20090428184431Z.fujita.tomonori@lab.ntt.co.jp>
References: <egHshlwQQFE.A.8CD.mpE9JB@chimera>
	<20090428172845R.fujita.tomonori@lab.ntt.co.jp>
	<db2b43030904280218v61fded68rc585ce9c58ba1cce@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <db2b43030904280218v61fded68rc585ce9c58ba1cce-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: optimusgd-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
Cc: fujita.tomonori-Zyj7fXuS5i5L9jVzuh4AOg@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, grundler-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org

On Tue, 28 Apr 2009 14:18:57 +0500
**UNKNOWN CHARSET** <optimusgd-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:

> No, it is regression. I can reproduce that without allowdac and any
> other unnecessary boot options.

Hmm, in the bug repport, you said that you can't reproduce the problem:

http://bugzilla.kernel.org/show_bug.cgi?id=13001#c15

I can't find your comment like, "I can reproduce that without
allowdac".

> In later discussion Grant Grundler ask
> me apply patch that show 32 bit dma devices in my system. Results I
> attached to bugreport. Looks like only one 32 bit dma device in my
> system is ata controller, sata-nv.

Hmm, looks like http://bugzilla.kernel.org/attachment.cgi?id=20895
said that pata_amd and sata_nv use 32bit dma mask.


> I can stable reproduce IOMMU out of space when I write data to sata
> drive.

Ok, let's figure out what's wrong.

First, can you test v2.6.30-rc3 with the following patch?

http://www.kernel.org/pub/linux/kernel/people/tomo/misc/gart-debug.diff


Note that please enable CONFIG_DMA_API_DEBUG, CONFIG_IOMMU_DEBUG, and
CONFIG_IOMMU_LEAK and see if you can reproduce the problem (of course,
don't use any kernel option).

When the kernel is out of IOMMU space, it prints some useful
information.
