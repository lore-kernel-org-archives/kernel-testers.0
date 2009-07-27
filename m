From: Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>
Subject: Re: [Bisected] [Bug #13821] Replugging USB serial converter uses
 new device node
Date: Mon, 27 Jul 2009 17:55:25 +0100
Message-ID: <20090727175525.20ac4869@lxorguk.ukuu.org.uk>
References: <87zlaqcec1.fsf@tac.ki.iif.hu>
	<Pine.LNX.4.44L0.0907271217441.5217-100000@iolanthe.rowland.org>
	<20090727164857.GA8908@Pilar.aei.mpg.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090727164857.GA8908-8NNKxJcwqxqHjx4iBuKRcg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Carlos R. Mafra" <crmafra2-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>, Ferenc Wagner <wferi-eEbw3PyuezQ@public.gmane.org>, Greg KH <greg-U8xfFu+wG4EAvxtiuMwx3w@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, USB list <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kay Sievers <kay.sievers-tD+1rO4QERM@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>

> > Another thing to check is whether this patch (not yet merged) fixes it:
> > 
> > 	http://marc.info/?l=linux-usb&m=124825571403844&w=2
> 
> No, unfortunately it does not fix it. I've just tested it.

I wouldn't expect it to.

In the ppp case you have this occuring on an unplug

	USB layer
		unplug
		hangup tty
	PPPD
		SIGHUP
		ouch
		log stuff
		close down

However at the same time that PPPD is logging stuff and closing down th
USB layer is going to see the replug if you just unplug/replug quickly
and in that case you will get ttyUSB1. That aspect is timing dependant.

If everything has closed down and given the port back before you replug
it you should get ttyUSB0 again.
#
