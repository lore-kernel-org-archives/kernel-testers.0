From: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Mon, 22 Sep 2008 00:01:23 -0700 (PDT)
Message-ID: <20080922.000123.172220747.davem@davemloft.net>
References: <7lIhZC4hCxE.A.yj.E2q1IB@albercik>
	<20080921.165159.67476441.davem@davemloft.net>
	<21d7e9970809212359y6876c405ub57dca3e9ee737e4@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <21d7e9970809212359y6876c405ub57dca3e9ee737e4-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
Cc: rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org, david.vrabel-kQvG35nSl+M@public.gmane.org

From: "Dave Airlie" <airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date: Mon, 22 Sep 2008 16:59:51 +1000

> I've reconstructed my boot timeline from message logs
> 
> Sep 3rd, I booted rawhide kernel 2.6.27-0.290.rc5.fc10.i686

What upstream SHA1 is this based upon?

> I suspended/resume a few times in between with no issues.
> 
> Sep 8th I booted my own 2.6.27-rc5 kernel based from
> ec0c15afb41fd9ad45b53468b60db50170e22346
> 
> This got a corrupted e1000e checksum and every kernel since has.

Ok.
