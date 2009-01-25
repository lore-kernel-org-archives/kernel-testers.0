From: Jaswinder Singh Rajput <jaswinderlinux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: hdb: status error: error=0x40 <3>{ UncorrectableError }
Date: Mon, 26 Jan 2009 02:32:35 +0530
Message-ID: <3f9a31f40901251302s62949b8fs75c9099e4232b811@mail.gmail.com>
References: <3f9a31f40901251239k3e368feeib33661d82497725b@mail.gmail.com>
	 <497CCF9B.6000102@yahoo.fr>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=yzNtQI2wdsmsNJmzQjtphTYeNWQyweGHc2gH33ypRg4=;
        b=cjxWbbMzF2otXJMYV0nhVLtIPvSH6FsMkUGvYfnZwb53xMdH/CVyMJJ4xUYI7IFKKa
         lzm4GCfO5gSmQEM3lHyChBpJXURApoSUeNjwOUrfg4GRbll5SSJ0PALC81u0u8RU3lK9
         Z4OH+w4GU8Pn+jSHJ5h4ljZc6N1ciK6I8Wv3Q=
In-Reply-To: <497CCF9B.6000102-Qt13gs6zZMY@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: strawks <strawks-Qt13gs6zZMY@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, James Bottomley <James.Bottomley-JuX6DAaQMKPCXq6kfMZ53/egYHeGw8Jk@public.gmane.org>

On Mon, Jan 26, 2009 at 2:16 AM, strawks <strawks-Qt13gs6zZMY@public.gmane.org> wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>
> Jaswinder Singh Rajput wrote:
>> Hello all,
>>
>> I added extra IDE drive I get similar messages like below so I replace
>> it another drive but I am still getting similar error messages on
>> 2.6.29-rc2-tip:
>
> Does it work with other kernels?
>

Earlier it was working, I was trying to install another OS, during
format it fails.

>> hdb: status error: status=0x59 { DriveReady SeekComplete DataRequest
> Error }
>> hdb: status error: error=0x40 <3>{ UncorrectableError },
>> LBAsect=208845, sector=0
>> ide: failed opcode was: unknown
>> end_request: I/O error, dev hdb, sector 0
>> Buffer I/O error on device hdb, logical block 0
>> hdb: drive not ready for command
> [...]
>> How can I fix these error.
>
> What is the output of :
>
> smartctl -A -l error /dev/hdb
>

[root@jaswinder jsr]# /usr/sbin/smartctl -A -l error /dev/hdb
smartctl version 5.38 [i386-redhat-linux-gnu] Copyright (C) 2002-8 Bruce Allen
Home page is http://smartmontools.sourceforge.net/

Smartctl: Device Read Identity Failed (not an ATA/ATAPI device)

A mandatory SMART command failed: exiting. To continue, add one or
more '-T permissive' options.
[root@jaswinder jsr]#

--
JSR
