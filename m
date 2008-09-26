From: Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Fri, 26 Sep 2008 20:39:33 +0100
Message-ID: <20080926203933.4e0cd071@lxorguk.ukuu.org.uk>
References: <20080923.150722.141587696.davem@davemloft.net>
	<200809251156.10648.jbarnes@virtuousgeek.org>
	<alpine.LNX.1.10.0809252218470.3389@pegasus.suse.cz>
	<200809251236.12287.jbarnes@virtuousgeek.org>
	<alpine.LNX.1.10.0809252234400.3389@pegasus.suse.cz>
	<48DC176E.6020807@zytor.com>
	<m38wten3dj.fsf@maximus.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <m38wten3dj.fsf-fiqtE+24Nu0B9AHHLWeGtNQXobZC6xk2@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Krzysztof Halasa <khc-9GfyWEdoJtJmR6Xm/wNWPw@public.gmane.org>
Cc: "H. Peter Anvin" <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>, Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>, Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org, jeffrey.t.kirsher-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, david.vrabel-kQvG35nSl+M@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, jesse.brandeburg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org

> external BMC (TCO) (loaded by external BMC from the SMBus) and one for
> software only (not used by hardware). Some chips only support #1 (and
> #4 of course).

We have had historic problems where a very non standard EEPROM setup on
some ancient thinkpads ended up with bad stuff happening due to smbus
probing and the like. You would then however expect to see the bug occur
without loading the e1000* drivers (unless you needed an interaction
between the two)
