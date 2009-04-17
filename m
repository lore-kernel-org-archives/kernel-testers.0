From: Robin Holt <holt-sJ/iWh9BUns@public.gmane.org>
Subject: Re: [Bug #13111] Linux 2.6.30-rc1 tg3 endian issues with MAC
	addresses on BCM5701
Date: Fri, 17 Apr 2009 07:21:21 -0500
Message-ID: <20090417122121.GP10768@sgi.com>
References: <EJaiQ4Wfaz.A.3YG.4v85JB@chimera> <nY3-4PrO6XH.A.LI.Sw85JB@chimera> <20090416.174310.260350758.davem@davemloft.net> <20090417005804.GA16432@xw6200.broadcom.net>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20090417005804.GA16432-3dFWGHBYMsbIxLREL+M+1dHuzzzSOjJt@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Matt Carlson <mcarlson-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>
Cc: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, "rjw-KKrjLPT3xs0@public.gmane.org" <rjw-KKrjLPT3xs0@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Benjamin Li <benli-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>, Michael Chan <mchan-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>, "holt-sJ/iWh9BUns@public.gmane.org" <holt-sJ/iWh9BUns@public.gmane.org>, James.Bottomley-d9PhHud1JfjCXq6kfMZ53/egYHeGw8Jk@public.gmane.org

> Actually, I think we do have a fix for this.  James and Robin both
> reported that the test patch I sent out worked for them.  I'm preparing
> a patchset for submission now.
> 
> James, Robin, can you confirm that you performed your tests with David's
> patch reverted?

My test was done with the 2.6.28-rc1 kernel plus your patch and no
others.

Robin
