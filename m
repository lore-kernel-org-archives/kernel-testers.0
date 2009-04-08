From: Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #12499] Problem with using bluetooth adaper connected to usb 
	port
Date: Wed, 8 Apr 2009 11:27:35 +0200
Message-ID: <8db1092f0904080227h15cfc1fdm762f1e0a4e077786@mail.gmail.com>
References: <n4io5wq70ZO.A.gzG.rFn2JB@chimera>
	 <AsKNxFx2juN.A.bxC.BJn2JB@chimera> <1239088491.19390.25.camel@violet>
	 <8db1092f0904070049o675de150qd319fc5853ec9bd8@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=5FsqTwwOR3JtIPlrgAPzIZ/m0fPKUO5dG7+J4lswNr4=;
        b=RnrvulK1zmFOm8ljwOm/r6B1rvI5f5OO1N124JTcrFHwhUjalHbR/56v8gFO67WDF4
         B1N7Y1GyTFmrJFPGzUn58qsd38LKm0Bclb8e3JJk3K1FJdGZNQ1Nge5yUSxmnaQPyq0A
         GZvpK89mIa2RXy4OICtQ3uVX6zvu4aKwfW0Jk=
In-Reply-To: <8db1092f0904070049o675de150qd319fc5853ec9bd8-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Marcel Holtmann <marcel-kz+m5ild9QBg9hUCZPvPmw@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

2009/4/7 Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>:
> 2009/4/7 Marcel Holtmann <marcel-kz+m5ild9QBg9hUCZPvPmw@public.gmane.org>:

[...]

>> I prefer to have this checked against 2.6.30-rc1 once Linus released
>> that one. I think that I know the root cause for this one and it is
>> actually a hardware/firmware bug. Some Bluetooth dongles expect to have
>> the interrupt and bulk URBs available at the same time. Otherwise they
>> do pee in their pants.
>
> I will check -rc1 when will be available.
>

2.6.30-rc1 works. Thanks

Regards
-- 
Maciej Rutecki
http://www.maciek.unixy.pl
