From: Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>
Subject: Re: [Bisected] [Bug #13821] Replugging USB serial converter uses
 new device node
Date: Tue, 28 Jul 2009 00:17:40 +0100
Message-ID: <20090728001740.61b365db@lxorguk.ukuu.org.uk>
References: <87zlaqcec1.fsf@tac.ki.iif.hu>
	<Pine.LNX.4.44L0.0907271217441.5217-100000@iolanthe.rowland.org>
	<20090727164857.GA8908@Pilar.aei.mpg.de>
	<20090727175525.20ac4869@lxorguk.ukuu.org.uk>
	<20090727172254.GA19576@Pilar.aei.mpg.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090727172254.GA19576-8NNKxJcwqxqHjx4iBuKRcg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Carlos R. Mafra" <crmafra2-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>, Ferenc Wagner <wferi-eEbw3PyuezQ@public.gmane.org>, Greg KH <greg-U8xfFu+wG4EAvxtiuMwx3w@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, USB list <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kay Sievers <kay.sievers-tD+1rO4QERM@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>

> And the fact that is, reverting your commit made things work under
> the same testing conditions.
> 
> Do you have any suggestions as to what I should do between unplugging
> and plugging it back?

Got it - if the port is opened twice (eg by two apps) it does this.
Reproduced and testing a fix.


Alan
