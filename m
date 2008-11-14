From: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Subject: Re: [Bug #11875] radeonfb lockup in .28-rc (bisected)
Date: Thu, 13 Nov 2008 19:04:47 -0800 (PST)
Message-ID: <20081113.190447.252605555.davem@davemloft.net>
References: <20081113.151116.139760511.davem@davemloft.net>
	<1226624060.7178.100.camel@pasglop>
	<20081113.185059.154690040.davem@davemloft.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20081113.185059.154690040.davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org
Cc: rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, cloos-GRsvFm/Gh/pBDgjK7y7TUQ@public.gmane.org, paul-dsjeNyW6Qm/D+ROgJ3VA+kB+6BGkLq7r@public.gmane.org, torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org

From: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Date: Thu, 13 Nov 2008 18:50:59 -0800 (PST)

> From: Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
> Date: Fri, 14 Nov 2008 11:54:20 +1100
> 
> > How does it compare with not having the acceleration ?
> 
> I'll find out for you.

It makes a huge difference, with the acceleration patch:

commit b1ee26bab14886350ba12a5c10cbc0696ac679bf
Author: Benjamin Herrenschmidt <benh-XVmvHMARGAS8U2dJNN8I7kB+6BGkLq7r@public.gmane.org>
Date:   Wed Oct 15 22:03:46 2008 -0700

    radeonfb: accelerate imageblit and other improvements

reverted, the test case takes 25 seconds or more instead of
the 7 or 8 seconds we're seeing now.
