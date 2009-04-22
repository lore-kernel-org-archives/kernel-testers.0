From: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: 2.6.30-rc1: ioatdma: DMA-API: device driver frees DMA memory with 
	wrong function
Date: Wed, 22 Apr 2009 19:48:53 +0400
Message-ID: <a4423d670904220848g3725e6a3ya113d9051e2fc734@mail.gmail.com>
References: <a4423d670904090536j71be609csf2c32be3ed9cfe1e@mail.gmail.com>
	 <a4423d670904150539w1a4fe05ake75ce2aea4538eab@mail.gmail.com>
	 <e9c3a7c20904151027xdf617fbh64fcb5618e195a71@mail.gmail.com>
	 <129600E5E5FB004392DDC3FB599660D792A39C27@irsmsx504.ger.corp.intel.com>
	 <a4423d670904170501l7cf935a6mf8dbe69e166b8099@mail.gmail.com>
	 <129600E5E5FB004392DDC3FB599660D79A252C69@irsmsx504.ger.corp.intel.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=T1IEveulYT8CKZNeGnh1MtrRmH+q9ZpwzahQaYFGhgM=;
        b=v/RT2KAKiGpoVKNqoyzH0g5g1g1EL7kLscS+otIL3lxraoICuwB9Kyql15YFvaZ4/Y
         ZRKVTb3Smwdp8cAezWpbtfKrTHwzOUi7Che3rJh6umzaYoH6N8IY8AWr5bMX7rDwgxAr
         RTLppw0C7xqPskv6yFAJsMZ3WspagKHPcO7/k=
In-Reply-To: <129600E5E5FB004392DDC3FB599660D79A252C69-IGOiFh9zz4yvNW/NfzhIbrfspsVTdybXVpNB7YpNyf8@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: "Sosnowski, Maciej" <maciej.sosnowski-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Cc: "Williams, Dan J" <dan.j.williams-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, LKML <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

2009/4/22 Sosnowski, Maciej <maciej.sosnowski-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>:
> Alexander Beregalov wrote:
>> 2009/4/17 Sosnowski, Maciej <maciej.sosnowski-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>:
>>> Dan Williams wrote:
>>>> On Wed, Apr 15, 2009 at 5:39 AM, Alexander Beregalov
>>>> <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:
>>>>> 2009/4/9 Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>:
>>>>>> ioatdma 0000:00:08.0: PCI INT A -> GSI 16 (level, low) -> IRQ 16
>>>>>> ioatdma 0000:00:08.0: setting latency timer to 64
>>>>>> ioatdma 0000:00:08.0: Intel(R) I/OAT DMA Engine found, 4 channel=
s,
>>>>>> device version 0x12, driver version 3.64
>>>>>> =C2=A0alloc irq_desc for 33 on cpu 0 node 0
>>>>>> =C2=A0alloc kstat_irqs on cpu 0 node 0
>>>>>> ioatdma 0000:00:08.0: irq 33 for MSI/MSI-X
>>>>>> ------------[ cut here ]------------
>>>>>> WARNING: at lib/dma-debug.c:565 check_unmap+0x2f6/0x6a0()
>>>>>> Hardware name: PowerEdge 1950
>>>>>> ioatdma 0000:00:08.0: DMA-API: device driver frees DMA memory wi=
th
>>>>>> wrong function [device address=3D0x000000007f76f800] [size=3D200=
0 bytes] [map
>>>>>> ped as single] [unmapped as page]
>>>>>
>>>>> The problem still persists.
>>>>
>>>> Thanks for the report Alexander. =C2=A0Maciej and I are looking in=
to a fix.
>>>>
>>>> Regards,
>>>> Dan
>>>
>>> Hi Alexander,
>>>
>>> Could you check if the following patch helps?
>>
>> Hi Maciej.
>>
>> No, unfortunately it does not help. The same warning message.
>
> Ok, I have missed to cover self_test case.
> How about this one instead?
>

It works! Thanks.

Reported-by: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Tested-by: Alexander Beregalov <a.beregalov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
