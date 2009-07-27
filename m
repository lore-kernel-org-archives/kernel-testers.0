From: "Carlos R. Mafra" <crmafra2-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bisected] [Bug #13821] Replugging USB serial converter uses
	new device node
Date: Mon, 27 Jul 2009 18:48:57 +0200
Message-ID: <20090727164857.GA8908@Pilar.aei.mpg.de>
References: <87zlaqcec1.fsf@tac.ki.iif.hu> <Pine.LNX.4.44L0.0907271217441.5217-100000@iolanthe.rowland.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.44L0.0907271217441.5217-100000-IYeN2dnnYyZXsRXLowluHWD2FQJk+8+b@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
Cc: Ferenc Wagner <wferi-eEbw3PyuezQ@public.gmane.org>, Greg KH <greg-U8xfFu+wG4EAvxtiuMwx3w@public.gmane.org>, Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, USB list <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kay Sievers <kay.sievers-tD+1rO4QERM@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>

On Mon 27.Jul'09 at 12:18:36 -0400, Alan Stern wrote:
> On Mon, 27 Jul 2009, Ferenc Wagner wrote:
> 
> > > Are you certain this really is a regression?  Under 2.6.30 and 2.6.27
> > > the same thing happened if I unplugged a USB serial device while it was
> > > in use.
> > 
> > My original report is about unplugging the USB servial device *after*
> > using it.
> > 
> > > Can you check whether the device is still being used when you unplug 
> > > it?  For instance, is there still a pppd process trying to communicate 
> > > with the device?
> > 
> > I checked and rechecked that the pppd process is already dead by the
> > time I unplug the device.  However, the minor number did not increase
> > if I unplugged the device without using it beforehand, as expected.
> > 
> > > In short, it seems likely that this is not new behavior but rather the 
> > > way usb-serial has worked all along.
> > 
> > I didn't experience this problem with 2.6.30: my ppp script was
> > hardwired to use ttyUSB0 and it always worked.  Now with 2.6.31-rc3 it
> > does not, as the device node keeps changing.
> > 
> > I'll test this with opening ttyUSB directly from the shell, instead of
> > via pppd, and report back whether it makes a difference.
> 
> Another thing to check is whether this patch (not yet merged) fixes it:
> 
> 	http://marc.info/?l=linux-usb&m=124825571403844&w=2

No, unfortunately it does not fix it. I've just tested it.
