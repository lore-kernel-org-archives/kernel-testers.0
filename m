From: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
Subject: Re: [regression] usb: sometimes dead keyboard after boot (was: new
 errors during device detection)
Date: Fri, 29 Aug 2008 17:22:02 -0400 (EDT)
Message-ID: <Pine.LNX.4.44L0.0808291709400.13185-100000@netrider.rowland.org>
References: <200808291933.43331.elendil@planet.nl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200808291933.43331.elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Cc: Kernel development list <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, USB list <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Fri, 29 Aug 2008, Frans Pop wrote:

> Here's a snippet of what I got when I enabled USB debug recently:
> [...]
> Aug  6 22:06:23 faramir kernel: hub 2-0:1.0: hub_resume
> Aug  6 22:06:23 faramir kernel: hub 2-0:1.0: state 7 ports 2 chg 0000 evt 0000
> Aug  6 22:06:23 faramir kernel: usb usb1: usb auto-resume
> Aug  6 22:06:23 faramir kernel: usb usb1: wakeup_rh
> Aug  6 22:06:23 faramir kernel: hub 1-0:1.0: hub_resume
> Aug  6 22:06:23 faramir kernel: hub 1-0:1.0: state 7 ports 2 chg 0000 evt 0000
> Aug  6 22:06:24 faramir kernel: usb usb2: suspend_rh (auto-stop)
> Aug  6 22:06:24 faramir kernel: usb usb1: suspend_rh (auto-stop)
> Aug  6 22:06:25 faramir kernel: hub 5-0:1.0: hub_suspend
> Aug  6 22:06:25 faramir kernel: usb usb5: bus auto-suspend
> Aug  6 22:06:25 faramir kernel: ehci_hcd 0000:00:1d.7: suspend root hub
> Aug  6 22:06:25 faramir kernel: hub 2-0:1.0: hub_suspend
> Aug  6 22:06:25 faramir kernel: usb usb2: bus auto-suspend
> Aug  6 22:06:25 faramir kernel: usb usb2: suspend_rh
> Aug  6 22:06:25 faramir kernel: hub 1-0:1.0: hub_suspend
> Aug  6 22:06:25 faramir kernel: usb usb1: bus auto-suspend
> Aug  6 22:06:25 faramir kernel: usb usb1: suspend_rh
> Aug  6 22:06:28 faramir kernel: usb usb5: usb auto-resume
> Aug  6 22:06:28 faramir kernel: ehci_hcd 0000:00:1d.7: resume root hub
> Aug  6 22:06:28 faramir kernel: hub 5-0:1.0: hub_resume
> Aug  6 22:06:28 faramir kernel: hub 5-0:1.0: state 7 ports 8 chg 0000 evt fe00
> Aug  6 22:06:28 faramir kernel: usb usb2: usb auto-resume
> Aug  6 22:06:28 faramir kernel: usb usb2: wakeup_rh
> Aug  6 22:06:28 faramir kernel: hub 2-0:1.0: hub_resume
> Aug  6 22:06:28 faramir kernel: usb usb1: usb auto-resume
> Aug  6 22:06:28 faramir kernel: usb usb1: wakeup_rh
> Aug  6 22:06:28 faramir kernel: hub 2-0:1.0: state 7 ports 2 chg 0000 evt 0000
> Aug  6 22:06:28 faramir kernel: hub 1-0:1.0: hub_resume
> Aug  6 22:06:28 faramir kernel: hub 1-0:1.0: state 7 ports 2 chg 0000 evt 0000
> Aug  6 22:06:29 faramir kernel: usb usb2: suspend_rh (auto-stop)
> Aug  6 22:06:29 faramir kernel: usb usb1: suspend_rh (auto-stop)
> [...]
> 
> AFAIK I have not enabled anything special in userland when it comes to
> USB suspension; this is just a standard boot.

Maybe you haven't enabled anything special, but something sure is 
running.  It appears to be probing your USB devices every 5 seconds.  
You might be able to find out what it is by adding

	printk(KERN_INFO "usbdev open by %s\n", current->comm);

to usbdev_open() in drivers/usb/core/devio.c.

> I do have CONFIG_USB_SUSPEND enabled though, so maybe one should not do that
> when using USB_DEBUG?

Turning off CONFIG_USB_SUSPEND would get rid of most but not all of
those messages above.

Alan Stern
