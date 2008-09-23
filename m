From: "Dave Airlie" <airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Tue, 23 Sep 2008 11:26:52 +1000
Message-ID: <21d7e9970809221826i76081719pdd749237580fc68e@mail.gmail.com>
References: <20080921.165159.67476441.davem@davemloft.net>
	 <21d7e9970809212359y6876c405ub57dca3e9ee737e4@mail.gmail.com>
	 <Pine.LNX.4.64.0809230010460.27884@twin.jikos.cz>
	 <20080922.152815.22060684.davem@davemloft.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:cc:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:references;
        bh=dI+NDjyKWbrmqv8Da9ORUm2ePjjOJJjJSMnBQa08nDI=;
        b=jxm6vB47RYBJNsFc5+uSzti1Kks1SFxE7V2YBvzYYZrlzHFVREqMUac2naLaLdob4W
         FJ3TR4kcMTivZjX5svFqK56QFVxA8JsXCQgPdGLvEsj6z3dbkpiSUyLsHd6Lvcow4AIB
         7Eoi0FV88mPt7iXTcqzq4j1xQHYCheyFJKR64=
In-Reply-To: <20080922.152815.22060684.davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Cc: jkosina-AlSwsSmVLrQ@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org, david.vrabel-kQvG35nSl+M@public.gmane.org

On Tue, Sep 23, 2008 at 8:28 AM, David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org> wrote:
> From: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>
> Date: Tue, 23 Sep 2008 00:15:08 +0200 (CEST)
>
>> On Mon, 22 Sep 2008, Dave Airlie wrote:
>>
>> > Sep 8th I booted my own 2.6.27-rc5 kernel based from
>> > ec0c15afb41fd9ad45b53468b60db50170e22346
>> > This got a corrupted e1000e checksum and every kernel since has.
>>
>> Have you restored the EEPROM contents after it got corrupted for the first
>> time?
>>
>> Once the EEPROM contents get corrupted, the card will then be broken
>> forever even on kernel that gets this fixed one day.
>>
>> This is pretty serious bug in fact, as it renders hardware of poor users
>> unusable, and just patching kernel is then not enough to put things back
>> to shape.
>
> The top priority is to root cause this, so that we can stop the
> problem from happening as fast as possible, and I'm still waiting for
> the SHA1 ID that was used for the last kernel Dave booted before the
> problem occurred which is pretty damn critical for making forward
> progress here.

It was exactly 2.6.27-rc5 + Fedora at the time but we rarely touch
these areas, most of the extra code is in other places, and since
people are seeing it on !Fedora
also I would assume it wasn't these.

I think people have seen it on earlier kernels maybe but not sure.

really Intel needs to get a fix of some sort out so we can repair the
hw so we can root cause the probem.

Dave.

>
> It could even be some PCI or x86 layer change that caused the corruption,
> we don't even know yet.
>
