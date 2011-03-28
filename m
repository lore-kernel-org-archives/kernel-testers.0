From: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
Subject: Re: [Bug #28562] [BUG] usb problems in .38-rc3+
Date: Sun, 27 Mar 2011 22:28:28 -0400 (EDT)
Message-ID: <Pine.LNX.4.44L0.1103272226260.10807-100000@netrider.rowland.org>
References: <20110327205727.3abd06b5@katamari>
Mime-Version: 1.0
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20110327205727.3abd06b5@katamari>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Chuck Ebbert <cebbert-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Ed Tomlinson <edt-Yad3+ZauZac@public.gmane.org>, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Sun, 27 Mar 2011, Chuck Ebbert wrote:

> On Sun, 27 Mar 2011 22:27:34 +0200 (CEST)
> "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=28562
> > Subject		: [BUG] usb problems in .38-rc3+
> > Submitter	: Ed Tomlinson <edt-Yad3+ZauZac@public.gmane.org>
> > Date		: 2011-02-05 19:17 (51 days old)
> > Message-ID	: <201102051417.58953.edt-Yad3+ZauZac@public.gmane.org>
> > References	: http://marc.info/?l=linux-kernel&m=129693391417607&w=2
> > 
> 
> From the original report:
> 
> [108495.369056] usb 5-1: new full speed USB device using ohci_hcd and address 3
> [108495.573077] usb 5-1: New USB device found, idVendor=0a12, idProduct=0001
> [108495.580099] usb 5-1: New USB device strings: Mfr=0, Product=0, SerialNumber=0
> [108652.971977] usb 5-1: USB disconnect, address 3
> [108652.972718] btusb_bulk_complete: hci0 urb ffff8800684e99c0 failed to resubmit (19)
> [108652.973725] btusb_bulk_complete: hci0 urb ffff8800684e9c00 failed to resubmit (19)
> [108652.974707] btusb_intr_complete: hci0 urb ffff8800684e9840 failed to resubmit (19)
> [108653.001690] btusb_send_frame: hci0 urb ffff8800bb42a240 submission failed
> [108657.007541] usb 2-4.7: new full speed USB device using ehci_hcd and address 8
> [108657.147736] usb 2-4.7: New USB device found, idVendor=0a12, idProduct=0001
> [108657.154954] usb 2-4.7: New USB device strings: Mfr=0, Product=0, SerialNumber=0
> 
> I just noticed this: the device is claimed by OHCI, then ~150 seconds later(!)
> it disconnects and then gets claimed by EHCI, presumably while it's in use.

Probably what happened is that Ed unplugged the device after 150
seconds of non-operation, and then four seconds later plugged it into
an external high-speed hub.

Alan Stern

--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
