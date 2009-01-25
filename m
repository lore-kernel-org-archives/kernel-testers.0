From: Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>
Subject: Re: hdb: status error: error=0x40 <3>{ UncorrectableError }
Date: Sun, 25 Jan 2009 20:46:03 +0000
Message-ID: <20090125204603.2ccb5169@lxorguk.ukuu.org.uk>
References: <3f9a31f40901251239k3e368feeib33661d82497725b@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <3f9a31f40901251239k3e368feeib33661d82497725b-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jaswinder Singh Rajput <jaswinderlinux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, James Bottomley <James.Bottomley-JuX6DAaQMKPCXq6kfMZ53/egYHeGw8Jk@public.gmane.org>

On Mon, 26 Jan 2009 02:09:56 +0530
Jaswinder Singh Rajput <jaswinderlinux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> wrote:

> Hello all,
> 
> I added extra IDE drive I get similar messages like below so I replace
> it another drive but I am still getting similar error messages on
> 2.6.29-rc2-tip:
> 
> hdb: status error: status=0x59 { DriveReady SeekComplete DataRequest Error }
> hdb: status error: error=0x40 <3>{ UncorrectableError },
> LBAsect=208845, sector=0

Uncorrectable Error is an error from the drive, not the kernel. Looks
like you have bad sectors on that drive.

Alan
