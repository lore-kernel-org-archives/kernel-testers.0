From: "Jaswinder Singh" <jaswinderlinux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #11271] BUG: fealnx in 2.6.27-rc1
Date: Mon, 11 Aug 2008 14:11:01 +0530
Message-ID: <3f9a31f40808110141y3d6da52cr86b85f29fce00add@mail.gmail.com>
References: <VYYCiQF4qDI.A.BPH.KCjnIB@albercik>
	 <cX_-nNkxKaF.A.T-.DDjnIB@albercik>
	 <3f9a31f40808092327h272ba73emcfc1ead6b6d1099@mail.gmail.com>
	 <20080810130442.GA31367@electric-eye.fr.zoreil.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=f0dDb+w4BZOAZL2cUs5b+t91ryPCb9xTqsYhItvgTw0=;
        b=b4OCtEagROnwnOvjBBBaS4tN1xWgT4s+71R/SliK6q2FnBXGdDtbl4giy3Z/lhqfTQ
         Q9JA3zpg3Dg8ygxDMecRwv8m3oKVIkp5Dy+IYHqfDix/5KllsDchDn81GMAJ/iQrBwJv
         xYotEV6WsLgrzO/QoFyJEOdGt/5rl3770fl4k=
In-Reply-To: <20080810130442.GA31367-lmTtMILVy1jWQcoT9B9Ug5SCg42XY1Uw0E9HWUfgJXw@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Francois Romieu <romieu-W8zweXLXuWQS+FvcfC7Uqw@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Hello Ueimor,

On Sun, Aug 10, 2008 at 6:34 PM, Francois Romieu <romieu-W8zweXLXuWQS+FvcfC7Uqw@public.gmane.org> wrote:
> Jaswinder Singh <jaswinderlinux-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org> :
> [...]
>> This still exists on 2.6.27-rc2 when I transfer some data on RealTek 8139C NIC.
>
> Does the transfer complete or not ?
>

I don't know. But I face lot of problems in web browsing, I need to
Refresh web browser many times :(

---[ end trace 1fefaa058f74f4aa ]---
NETDEV WATCHDOG: eth0 (fealnx): transmit timed out
eth0: Transmit timed out, status 00000110, resetting...
  Rx ring f7b46000:  80000000 80000000 80000000 80000000 80000000
80000000 80000000 80000000 80000000 80000000 80000000 80000000
  Tx ring f7b47000:  0000 0000 0000 80000000 0000 80000000
NETDEV WATCHDOG: eth0 (fealnx): transmit timed out
eth0: Transmit timed out, status 00000000, resetting...
  Rx ring f7b46000:  80000000 80000000 80000000 80000000 80000000
80000000 80000000 80000000 80000000 80000000 80000000 80000000
  Tx ring f7b47000:  0000 80000000 80000000 80000000 80000000 80000000
NETDEV WATCHDOG: eth0 (fealnx): transmit timed out
eth0: Transmit timed out, status 00000000, resetting...
  Rx ring f7b46000:  80000000 80000000 80000000 80000000 80000000
80000000 80000000 80000000 80000000 80000000 80000000 80000000
  Tx ring f7b47000:  0000 80000000 80000000 80000000 80000000 0000
NETDEV WATCHDOG: eth0 (fealnx): transmit timed out
eth0: Transmit timed out, status 00000000, resetting...
  Rx ring f7b46000:  80000000 80000000 80000000 80000000 80000000
80000000 80000000 80000000 80000000 80000000 80000000 80000000
  Tx ring f7b47000:  80000000 80000000 80000000 80000000 80000000 0000
NETDEV WATCHDOG: eth0 (fealnx): transmit timed out
eth0: Transmit timed out, status 00000000, resetting...
  Rx ring f7b46000:  80000000 80000000 80000000 80000000 80000000
80000000 80000000 80000000 80000000 80000000 80000000 80000000
  Tx ring f7b47000:  80000000 0000 80000000 80000000 80000000 80000000

Thank you,

Jaswinder Singh.
