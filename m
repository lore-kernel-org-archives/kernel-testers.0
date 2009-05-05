From: adam radford <aradford@gmail.com>
Subject: Re: [Bug #13001] PCI-DMA: Out of IOMMU space
Date: Mon, 4 May 2009 21:31:39 -0700
Message-ID: <b1bc6a000905042131t3656f14arc98dc4a518543a86@mail.gmail.com>
References: <egHshlwQQFE.A.8CD.mpE9JB@chimera>
	 <20090428172845R.fujita.tomonori@lab.ntt.co.jp>
	 <db2b43030904280218v61fded68rc585ce9c58ba1cce@mail.gmail.com>
	 <20090428184431Z.fujita.tomonori@lab.ntt.co.jp>
	 <db2b43030905032227u73a41ec3wa511efcef6a22169@mail.gmail.com>
	 <da824cf30905041858t2cbd0fa2x4075f387973e2700@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1752680AbZEEEbv@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=Quj/IsQ+EMkAlNUStg16sxfrUIduSJ6IfCwtOozFA5c=;
        b=IL133ZHkJg1AB3mLt9UN8jcEd+CqeS8UknEbqSYlVfPLwos3jm2iC9yhoKQQKXsaKY
         0fpBDGb8iHABv5HMag1zXprPMmfNQ2k9xbths1Cg89Av8wvFP2xOMLYc8yAxQSKSvB3/
         lIIZTdPvvl6VAKUADZMUWDQViZJCOF27yqh0Y=
In-Reply-To: <da824cf30905041858t2cbd0fa2x4075f387973e2700@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="koi8-r"
To: Grant Grundler <grundler@google.com>
Cc: =?KOI8-U?B?5MHOyczBIPbVy8/Dy8nK?= <optimusgd@gmail.com>, FUJITA Tomonori <fujita.tomonori@lab.ntt.co.jp>, rjw@sisk.pl, linux-kernel@vger.kernel.org, kernel-testers@vger.kernel.org

2009/5/4 Grant Grundler <grundler@google.com>:
> 2009/5/3 =E4=C1=CE=C9=CC=C1 =F6=D5=CB=CF=C3=CB=C9=CA <optimusgd@gmail=
=2Ecom>:
> ...
>> WARNING: at lib/dma-debug.c:607 check_unmap+0x542/0x610()
>> Hardware name: HP xw9400 Workstation
>> 3w-9xxx 0001:45:00.0: DMA-API: device driver tries to free DMA memor=
y
>> it has not allocated [device address=3D0x0000000000000000] [size=3D3=
6
>> bytes]
>
> This is definitely a driver bug. Just follow the stack trace back to
> the device driver.
>

I think this is a regression from the scsi_dma_map()/unmap() changes a =
while
back.

Can you try this patch?

Thanks,

-Adam

diff -Naur linux-2.6.30-rc4/drivers/scsi/3w-9xxx.c
linux-2.6.30-rc4.new/drivers/scsi/3w-9xxx.c
--- linux-2.6.30-rc4/drivers/scsi/3w-9xxx.c	2009-05-04 21:19:49.0000000=
00 -0700
+++ linux-2.6.30-rc4.new/drivers/scsi/3w-9xxx.c	2009-05-04
21:23:59.000000000 -0700
@@ -1978,7 +1978,8 @@
 {
 	struct scsi_cmnd *cmd =3D tw_dev->srb[request_id];

-	scsi_dma_unmap(cmd);
+	if (cmd->SCp.phase =3D=3D TW_PHASE_SGLIST)
+		scsi_dma_unmap(cmd);
 } /* End twa_unmap_scsi_data() */

 /* scsi_host_template initializer */
