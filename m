From: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>
Subject: Re: [2.6.28-rc1] sd I/O errors
Date: Fri, 24 Oct 2008 17:24:11 +0100
Message-ID: <4901F6AB.1090601@tuffmail.co.uk>
References: <4901E9B0.5080401@r000n.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding:sender;
        bh=u/W0K5nLCwYOlPRiCZSepJ/ZoHwAWcl+67RCnVLV644=;
        b=aAieJFMI88sv1kDKTAqVzub0+HCMG9K3VHr8ETc6SmAGBh/gkgZC+92LmSLu9Syo97
         FIOLm8N65+ShmO6xcOgN6pFk46mgZr7oCVXamV9Oi3Q447a8PtNKoGYlMtnBevupmW6b
         2D+Rbk1UjKH66bFFhZPRdJSkjXaMEqR+rqOCU=
In-Reply-To: <4901E9B0.5080401-ioAbOcnQCpJeoWH0uzbU5w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: lists-ioAbOcnQCpJeoWH0uzbU5w@public.gmane.org
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Roman Mindalev wrote:
> Hi.
> I'm got strange errors on startup with HDD and new kernel:
> [4.528333] sd 0:0:0:0 [sda] Write protect: off
> [4.528609] sd 0:0:0:0 [sda] Write cache: enabled, read cache: enabled,
> doesn't support DPO or FUA
> [4.528788] sda: <3>sd 0:0:0:0 timing out command, waited 180 s
> [184.530108] sd 0:0:0:0 [sda] Result: hostbyte=0x00 driverbyte=0x00
> [184.530249] end_request: I/O error, dev sda, sector 0
> [184.530354] Buffer I/O error on device sda, logical block 0
> [364.533812] unable to read partition table
> [364.535118] sd 0:0:0:0: [sda] Attached SCSI disk
> [364.536862] sd 0:0:0:0: Attached SCSI generic sg0 type0
> [386.543348] SCSI 1:0:0:0 timing out command, waited 22s
> And similar picture with sdb.
> sda is 80Gb IDE hard drive, sdb - 320Gb SATA, motherboard with Intel
> ICH5 chipset
>
> Compiled on base of config from 2.6.27, but it working nice

I guess this is using the ata_piix driver.  It's almost certainly the
same issue as:

[Regression] 2.6.28-rc1 (2fca5c): libata: kernel cant boot

(search for it).  A patch was posted just after rc1 was released :).

Alan
