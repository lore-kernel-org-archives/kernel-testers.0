From: Krzysztof Halasa <khc-9GfyWEdoJtJmR6Xm/wNWPw@public.gmane.org>
Subject: Re: [Bug #11382] e1000e: 2.6.27-rc1 corrupts EEPROM/NVM
Date: Fri, 26 Sep 2008 20:55:36 +0200
Message-ID: <m38wten3dj.fsf@maximus.localdomain>
References: <20080923.150722.141587696.davem@davemloft.net>
	<200809251156.10648.jbarnes@virtuousgeek.org>
	<alpine.LNX.1.10.0809252218470.3389@pegasus.suse.cz>
	<200809251236.12287.jbarnes@virtuousgeek.org>
	<alpine.LNX.1.10.0809252234400.3389@pegasus.suse.cz>
	<48DC176E.6020807@zytor.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <48DC176E.6020807-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org> (H. Peter Anvin's message of "Thu\, 25 Sep 2008 15\:57\:50 -0700")
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "H. Peter Anvin" <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org>
Cc: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>, Jesse Barnes <jbarnes-Y1mF5jBUw70BENJcbMCuUQ@public.gmane.org>, Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, airlied-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org, jeffrey.t.kirsher-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, david.vrabel-kQvG35nSl+M@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, chrisl-pghWNbHTmq7QT0dZR+AlfA@public.gmane.org, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, jesse.brandeburg-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org

"H. Peter Anvin" <hpa-YMNOUZJC4hwAvxtiuMwx3w@public.gmane.org> writes:

> Okay, I just had a scary and hopefully stupid thought.
>
> Especially Intel often has backchannels between the chipset and the
> Ethernet controller for management functions -- anything from WoL to
> IPMI -- generally over some kind of low-speed serial bus.
>
> We're not in a situation where the EEPROM can be touched from the
> chipset via the SMBus or some other non-CPU channel?

I know next to nothing about SMBus and especially those other
backchannels, but the 82566 product brief :-) lists support for:
- Intel Active Management Technology (AMT) with "System Defence"
  (whatever that means)
- ASF 2.0
I think ASF (Alert Standard Format) is somehow related to IPMI and
uses I^2C or something similar (SMBus).

8254x manual says that the EEPROM is divided into 4 parts: one for
E1000 hw initialization, one for ASF (Ethernet in ASF mode?), one for
external BMC (TCO) (loaded by external BMC from the SMBus) and one for
software only (not used by hardware). Some chips only support #1 (and
#4 of course).

I understand the driver reads the EEPROM using EERD register (which,
according to the manual, requires no additional locking) or drives the
EEPROM directly, with a lock/unlock protocol (using EECD register).
Now some devices lack the lock/unlock bits, but they lack ASF/BMC as
well.

I imagine chips other than 8254x may be different here.

Do we have some "master" bugzilla entry or something like that for
these problems?
-- 
Krzysztof Halasa
