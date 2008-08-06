From: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
Subject: Re: [regression?] usb: new errors during device detection
Date: Wed, 6 Aug 2008 18:27:53 -0400 (EDT)
Message-ID: <Pine.LNX.4.44L0.0808061814250.2145-100000@iolanthe.rowland.org>
References: <200808062310.59360.elendil@planet.nl>
Mime-Version: 1.0
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200808062310.59360.elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Wed, 6 Aug 2008, Frans Pop wrote:

> I do find it a bit strange though that EHCI is allowed to grab bus 3 when 
> UHCI has already identified a low speed device on that bus.

Here's how it works.  An EHCI controller contains a bank of switches,
one for each port.  By default, the switches are set so that each port
connects to the companion UHCI (or OHCI) controller; that way you get
USB-1.1 functionality even if ehci-hcd isn't loaded.

But when the driver loads, it resets the switches so that the ports
connect to the EHCI controller.  There is no way for the driver to tell
which ports have devices attached and which don't, so it has to reset
all the switches.  Thus, any device which was connected to the UHCI
controller is now connected to the EHCI controller.  As far as uhci-hcd 
is concerned, it appears that all the devices were suddenly plugged.

As each device is enumerated, ehci-hcd determines whether it can run at 
high speed.  If not, the corresponding switch is set so the device 
connects back to the UHCI controller and it runs at full/low speed.

> > If you want to prevent all errors of this sort, all you have to do is
> > insure that ehci-hcd is loaded before either uhci-hcd or ohci-hcd
> > during system startup.
> 
> Hmmm. Also not sure that I'm ready to agree with this conclusion.

It follows directly from the description above.  If ehci-hcd is loaded
first then all the switches will be reset before any device has a
chance to register the UHCI driver.  Hence uhci-hcd will never see them
suddenly disconnect and will not generate those error messages.

> Shouldn't the kernel itself be smart enough to prevent error messages in 
> apparently predictable and probably fairly common scenarios?

It's somewhat difficult to synchronize activities between two different
drivers, especially when they can be in separate modules (so that one
might be present in memory and the other not).

As for whether these messages really _should_ be suppressed...  That 
depends on the circumstances.  In your case, yes.  But suppose for some 
reason ehci-hcd was loaded much later, at a time when the devices 
connected to the UHCI controller were already in use.  In that case it 
seems reasonable to log some error messages when the devices stop 
working.

> To me this seems a lot like an issue discussed during the .25 cycle in
>    http://lkml.org/lkml/2008/5/2/256
> which was eventually fixed by you with
>    3a31155c Alan Stern, "USB: EHCI: suppress unwanted error messages"

That didn't involve cooperation between ehci-hcd and uhci-hcd.

Alan Stern

--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
