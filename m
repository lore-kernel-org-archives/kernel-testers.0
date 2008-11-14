From: Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
Subject: Re: [Bug #11875] radeonfb lockup in .28-rc (bisected)
Date: Fri, 14 Nov 2008 14:29:11 +1100
Message-ID: <1226633351.7178.107.camel@pasglop>
References: <20081113.151116.139760511.davem@davemloft.net>
	 <1226624060.7178.100.camel@pasglop>
	 <20081113.185059.154690040.davem@davemloft.net>
	 <20081113.190447.252605555.davem@davemloft.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20081113.190447.252605555.davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Cc: rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, cloos-GRsvFm/Gh/pBDgjK7y7TUQ@public.gmane.org, paul-dsjeNyW6Qm/D+ROgJ3VA+kB+6BGkLq7r@public.gmane.org, torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org


> It makes a huge difference, with the acceleration patch:
> 
> commit b1ee26bab14886350ba12a5c10cbc0696ac679bf
> Author: Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
> Date:   Wed Oct 15 22:03:46 2008 -0700
> 
>     radeonfb: accelerate imageblit and other improvements
> 
> reverted, the test case takes 25 seconds or more instead of
> the 7 or 8 seconds we're seeing now.

Ok, thanks a lot for those tests !

So I consider the loss of perfs due to the workaround to be minor enough
here. I'll submit the patch for inclusion.

I might look at not doing the clipping in cases things are already
aligned later but I doubt it's going to be worth the pain,

Cheers,
Ben.

