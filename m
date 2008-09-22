From: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Tue, 23 Sep 2008 00:15:08 +0200 (CEST)
Message-ID: <Pine.LNX.4.64.0809230010460.27884@twin.jikos.cz>
References: <PJz8fNrJNHG.A.65F.wzq1IB@albercik>  <7lIhZC4hCxE.A.yj.E2q1IB@albercik>
  <20080921.165159.67476441.davem@davemloft.net>
 <21d7e9970809212359y6876c405ub57dca3e9ee737e4@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <21d7e9970809212359y6876c405ub57dca3e9ee737e4-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Dave Airlie <airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org, david.vrabel-kQvG35nSl+M@public.gmane.org

On Mon, 22 Sep 2008, Dave Airlie wrote:

> Sep 8th I booted my own 2.6.27-rc5 kernel based from
> ec0c15afb41fd9ad45b53468b60db50170e22346
> This got a corrupted e1000e checksum and every kernel since has.

Have you restored the EEPROM contents after it got corrupted for the first 
time?

Once the EEPROM contents get corrupted, the card will then be broken
forever even on kernel that gets this fixed one day. 

This is pretty serious bug in fact, as it renders hardware of poor users 
unusable, and just patching kernel is then not enough to put things back 
to shape.

-- 
Jiri Kosina
SUSE Labs
