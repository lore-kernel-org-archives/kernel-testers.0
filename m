From: "Michael Chan" <mchan-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>
Subject: Re: [Bug #13111] Linux 2.6.30-rc1 tg3 endian issues with MAC
 addresses on BCM5701
Date: Sun, 19 Apr 2009 21:31:53 -0700
Message-ID: <C27F8246C663564A84BB7AB343977242177D75A05C@IRVEXCHCCR01.corp.ad.broadcom.com>
References: <20090418.213011.50580925.davem@davemloft.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090418.213011.50580925.davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Content-Language: en-US
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: 'David Miller' <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>, "holt-sJ/iWh9BUns@public.gmane.org" <holt-sJ/iWh9BUns@public.gmane.org>
Cc: Matthew Carlson <mcarlson-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>, "rjw-KKrjLPT3xs0@public.gmane.org" <rjw-KKrjLPT3xs0@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Benjamin Li <benli-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>, "James.Bottomley-d9PhHud1JfjCXq6kfMZ53/egYHeGw8Jk@public.gmane.org" <James.Bottomley-d9PhHud1JfjCXq6kfMZ53/egYHeGw8Jk@public.gmane.org>

David Miller wrote:

>
> From: Robin Holt <holt-sJ/iWh9BUns@public.gmane.org>
> Date: Fri, 17 Apr 2009 07:21:21 -0500
>
> >> Actually, I think we do have a fix for this.  James and Robin both
> >> reported that the test patch I sent out worked for them.
> I'm preparing
> >> a patchset for submission now.
> >>
> >> James, Robin, can you confirm that you performed your
> tests with David's
> >> patch reverted?
> >
> > My test was done with the 2.6.28-rc1 kernel plus your patch and no
> > others.
>
> Can I get a final patch against Linus's current tree?
>

Matt should be able to provide a patch tomorrow.  We're still discussing
this with Grant Grundler on the parisc list.
