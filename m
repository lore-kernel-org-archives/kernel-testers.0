From: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Tue, 23 Sep 2008 15:05:59 -0700 (PDT)
Message-ID: <20080923.150559.34795136.davem@davemloft.net>
References: <20080922.185902.80812984.davem@davemloft.net>
	<alpine.LNX.1.10.0809231229460.4671@pegasus.suse.cz>
	<21d7e9970809231403wf766660u39908aca70548ca7@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <21d7e9970809231403wf766660u39908aca70548ca7-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org
Cc: jkosina-AlSwsSmVLrQ@public.gmane.org, david.vrabel-kQvG35nSl+M@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org

From: "Dave Airlie" <airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date: Wed, 24 Sep 2008 07:03:53 +1000

> I have no evidence in my logs of a graphics panic, but I do do a lot
> of graphics devel,
> so it might be a possiblity but I'd hate to handwave it away at that.

Let's not handwave, but rather try to figure out if that is part of
the pattern.

Right now we don't have any real leads, so data acquisition is really
important at this phase.
