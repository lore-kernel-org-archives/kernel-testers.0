From: Felipe Balbi <me-uiRdBs8odbtmTBlB0Cgj/Q@public.gmane.org>
Subject: Re: [regression?] usb: new errors during device detection
Date: Sun, 3 Aug 2008 23:35:13 +0300
Message-ID: <20080803203512.GA11185@frodo>
References: <200808032211.22483.elendil@planet.nl>
Reply-To: me-uiRdBs8odbtmTBlB0Cgj/Q@public.gmane.org
Mime-Version: 1.0
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <200808032211.22483.elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Hi,

On Sun, Aug 03, 2008 at 10:11:21PM +0200, Frans Pop wrote:
> +usb 3-1: new low speed USB device using uhci_hcd and address 2
>  ehci_hcd 0000:00:1d.7: new USB bus registered, assigned bus number 5
>  ehci_hcd 0000:00:1d.7: USB 2.0 started, EHCI 1.00, driver 10 Dec 2004
>  usb usb5: configuration #1 chosen from 1 choice
>  hub 5-0:1.0: USB hub found
> -usb 3-1: new low speed USB device using uhci_hcd and address 2
> +usb 3-1: device not accepting address 2, error -71
> +hub 3-0:1.0: unable to enumerate USB device on port 1

what is this device attached to this port ?

Do you have the device attached before turning on the machine ?
Does it happen if you boot without that device attached and attach
it afterwards ?

Can you please enable CONFIG_USB_DEBUG and resend dmesg output ?

thanks,

-- 
balbi
--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
