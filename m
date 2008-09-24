From: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Wed, 24 Sep 2008 02:01:16 -0700 (PDT)
Message-ID: <20080924.020116.193720569.davem@davemloft.net>
References: <21d7e9970809232245x6a91c6e2l552ff039d07e2017@mail.gmail.com>
	<20080924.003638.71148740.davem@davemloft.net>
	<21d7e9970809240159u6db747eex51892061846b2251@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <21d7e9970809240159u6db747eex51892061846b2251-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
Cc: jkosina-AlSwsSmVLrQ@public.gmane.org, jeffrey.t.kirsher-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, david.vrabel-kQvG35nSl+M@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org

From: "Dave Airlie" <airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date: Wed, 24 Sep 2008 18:59:34 +1000

> On Wed, Sep 24, 2008 at 5:36 PM, David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org> wrote:
> The driver seems quite happy to access the NVRAM, I think Thomas has
> some backtraces that show
> it clearly doing silly reentrant things...

I don't dispute that the locking is dodgy and likely needs to be fixed
like e1000.

I'm asking what userland tool or kernel event is triggering the nvram
access.

It shouldn't even touch the thing after probing and initializing
the card.
