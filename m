From: "Dave Airlie" <airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Wed, 24 Sep 2008 19:16:24 +1000
Message-ID: <21d7e9970809240216m4a93a339sb51a5928fcb5f6fb@mail.gmail.com>
References: <21d7e9970809232245x6a91c6e2l552ff039d07e2017@mail.gmail.com>
	 <20080924.003638.71148740.davem@davemloft.net>
	 <21d7e9970809240159u6db747eex51892061846b2251@mail.gmail.com>
	 <20080924.020116.193720569.davem@davemloft.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=Hvnf/oax9UWzQ3GmSA8AtqHYlyy+6AzdPyQSIT9pCkM=;
        b=KK2o2/WTlr0dF6D1XczDse+fnGpXr+qNeVLGBQ1fOfhk3aftVddfAnpz2JMeyeibNx
         P/AoRMDp3l01Eluc343mrC1Y4EiyOpTcVYM27/DwHZw6LNggUEjXhT7s5XH88ra4TsvD
         QOOwygEDjzo+E+BeYSxHocaYROLch/ZW6chOU=
In-Reply-To: <20080924.020116.193720569.davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Cc: jkosina-AlSwsSmVLrQ@public.gmane.org, jeffrey.t.kirsher-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, david.vrabel-kQvG35nSl+M@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org

On Wed, Sep 24, 2008 at 7:01 PM, David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org> wrote:
> From: "Dave Airlie" <airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date: Wed, 24 Sep 2008 18:59:34 +1000
>
>> On Wed, Sep 24, 2008 at 5:36 PM, David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org> wrote:
>> The driver seems quite happy to access the NVRAM, I think Thomas has
>> some backtraces that show
>> it clearly doing silly reentrant things...
>
> I don't dispute that the locking is dodgy and likely needs to be fixed
> like e1000.
>
> I'm asking what userland tool or kernel event is triggering the nvram
> access.
>
> It shouldn't even touch the thing after probing and initializing
> the card.

Hopefully tglx can supply some traces, I think getting an interrupt
during device startup
can possibly access the nvram

http://www.tglx.de/~tglx/wtf2.txt

seems to suggest bad things could happen.

Dave.
