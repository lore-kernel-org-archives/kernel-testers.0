From: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Subject: Re: [Bug #13111] Linux 2.6.30-rc1 tg3 endian issues with MAC
 addresses on BCM5701
Date: Sat, 18 Apr 2009 21:30:11 -0700 (PDT)
Message-ID: <20090418.213011.50580925.davem@davemloft.net>
References: <20090416.174310.260350758.davem@davemloft.net>
	<20090417005804.GA16432@xw6200.broadcom.net>
	<20090417122121.GP10768@sgi.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090417122121.GP10768-sJ/iWh9BUns@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: holt-sJ/iWh9BUns@public.gmane.org
Cc: mcarlson-dY08KVG/lbpWk0Htik3J/w@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, benli-dY08KVG/lbpWk0Htik3J/w@public.gmane.org, mchan-dY08KVG/lbpWk0Htik3J/w@public.gmane.org, James.Bottomley-d9PhHud1JfjCXq6kfMZ53/egYHeGw8Jk@public.gmane.org

From: Robin Holt <holt-sJ/iWh9BUns@public.gmane.org>
Date: Fri, 17 Apr 2009 07:21:21 -0500

>> Actually, I think we do have a fix for this.  James and Robin both
>> reported that the test patch I sent out worked for them.  I'm preparing
>> a patchset for submission now.
>> 
>> James, Robin, can you confirm that you performed your tests with David's
>> patch reverted?
> 
> My test was done with the 2.6.28-rc1 kernel plus your patch and no
> others.

Can I get a final patch against Linus's current tree?

Thanks.
