From: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Subject: Re: [regression?] usb: new errors during device detection
Date: Wed, 6 Aug 2008 22:29:47 +0200
Message-ID: <200808062229.48383.elendil@planet.nl>
References: <200808032211.22483.elendil@planet.nl> <20080803203512.GA11185@frodo>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080803203512.GA11185@frodo>
Content-Disposition: inline
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: me-uiRdBs8odbtmTBlB0Cgj/Q@public.gmane.org
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Sunday 03 August 2008, Felipe Balbi wrote:
> On Sun, Aug 03, 2008 at 10:11:21PM +0200, Frans Pop wrote:
> > +usb 3-1: new low speed USB device using uhci_hcd and address 2
> >  ehci_hcd 0000:00:1d.7: new USB bus registered, assigned bus number 5
> >  ehci_hcd 0000:00:1d.7: USB 2.0 started, EHCI 1.00, driver 10 Dec
> > 2004 usb usb5: configuration #1 chosen from 1 choice
> >  hub 5-0:1.0: USB hub found
> > -usb 3-1: new low speed USB device using uhci_hcd and address 2
> > +usb 3-1: device not accepting address 2, error -71
> > +hub 3-0:1.0: unable to enumerate USB device on port 1
>
> what is this device attached to this port ?

Eh, that info is already trivially available from my original mail:
 uhci_hcd 0000:00:1d.2: new USB bus registered, assigned bus number 3
[...]
 input: USB Compliant Keyboard as /class/input/input0
 input: USB HID v1.10 Keyboard [USB Compliant Keyboard] on usb-0000:00:1d.2-1
 input: USB Compliant Keyboard as /class/input/input1
 input: USB HID v1.10 Device [USB Compliant Keyboard] on usb-0000:00:1d.2-1

> Do you have the device attached before turning on the machine ?

Yes, obviously the keyboard is attached during boot (and has been connected
to the same USB port basically since I first installed the machine...).

> Does it happen if you boot without that device attached and attach
> it afterwards ?

No idea. I could try this I guess if it will really provide useful info.
Somehow I doubt that in this case.

> Can you please enable CONFIG_USB_DEBUG and resend dmesg output ?

Will include that in my reply to Alan's mail.

Cheers,
FJP
--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
