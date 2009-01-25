From: strawks <strawks@yahoo.fr>
Subject: Re: hdb: status error: error=0x40 <3>{ UncorrectableError }
Date: Sun, 25 Jan 2009 21:46:19 +0100
Message-ID: <497CCF9B.6000102@yahoo.fr>
References: <3f9a31f40901251239k3e368feeib33661d82497725b@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1751546AbZAYUqq@vger.kernel.org>
In-Reply-To: <3f9a31f40901251239k3e368feeib33661d82497725b@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jaswinder Singh Rajput <jaswinderlinux@gmail.com>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>, "Rafael J. Wysocki" <rjw@sisk.pl>, James Bottomley <James.Bottomley@hansenpartnership.com>

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Jaswinder Singh Rajput wrote:
> Hello all,
>
> I added extra IDE drive I get similar messages like below so I replace
> it another drive but I am still getting similar error messages on
> 2.6.29-rc2-tip:

Does it work with other kernels?

> hdb: status error: status=0x59 { DriveReady SeekComplete DataRequest
Error }
> hdb: status error: error=0x40 <3>{ UncorrectableError },
> LBAsect=208845, sector=0
> ide: failed opcode was: unknown
> end_request: I/O error, dev hdb, sector 0
> Buffer I/O error on device hdb, logical block 0
> hdb: drive not ready for command
[...]
> How can I fix these error.

What is the output of :

smartctl -A -l error /dev/hdb

- --
regards,
strawks
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.9 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iEYEARECAAYFAkl8z5sACgkQ+2TXLlA5m78D6QCbBkiQDwjQXiGcP9DNVJiI236P
KaoAnilCy2jHOGap4tHTDEwFFI9CZPD2
=BkrH
-----END PGP SIGNATURE-----
