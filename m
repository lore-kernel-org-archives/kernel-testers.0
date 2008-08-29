From: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Subject: Re: [regression] usb: sometimes dead keyboard after boot (was: new errors during device detection)
Date: Fri, 29 Aug 2008 19:33:42 +0200
Message-ID: <200808291933.43331.elendil@planet.nl>
References: <Pine.LNX.4.44L0.0808291209260.4447-100000@netrider.rowland.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Pine.LNX.4.44L0.0808291209260.4447-100000-pYrvlCTfrz9XsRXLowluHWD2FQJk+8+b@public.gmane.org>
Content-Disposition: inline
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
Cc: Kernel development list <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, USB list <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Just replying to one comment now, the rest will need more thought :-)

On Friday 29 August 2008, Alan Stern wrote:
> > Two problems:
> > - CONFIG_USB_DEBUG causes such a huge load of output that it is
> > totally unacceptable to have that enabled permanently for a running
> > system
>
> It shouldn't do that.  Almost all of the extra output occurs when
> devices are plugged in or unplugged; during normal operation there
> should be very few extra messages.  (Depending on what USB drivers you
> use, I suppose...)

Here's a snippet of what I got when I enabled USB debug recently:
[...]
Aug  6 22:06:23 faramir kernel: hub 2-0:1.0: hub_resume
Aug  6 22:06:23 faramir kernel: hub 2-0:1.0: state 7 ports 2 chg 0000 evt 0000
Aug  6 22:06:23 faramir kernel: usb usb1: usb auto-resume
Aug  6 22:06:23 faramir kernel: usb usb1: wakeup_rh
Aug  6 22:06:23 faramir kernel: hub 1-0:1.0: hub_resume
Aug  6 22:06:23 faramir kernel: hub 1-0:1.0: state 7 ports 2 chg 0000 evt 0000
Aug  6 22:06:24 faramir kernel: usb usb2: suspend_rh (auto-stop)
Aug  6 22:06:24 faramir kernel: usb usb1: suspend_rh (auto-stop)
Aug  6 22:06:25 faramir kernel: hub 5-0:1.0: hub_suspend
Aug  6 22:06:25 faramir kernel: usb usb5: bus auto-suspend
Aug  6 22:06:25 faramir kernel: ehci_hcd 0000:00:1d.7: suspend root hub
Aug  6 22:06:25 faramir kernel: hub 2-0:1.0: hub_suspend
Aug  6 22:06:25 faramir kernel: usb usb2: bus auto-suspend
Aug  6 22:06:25 faramir kernel: usb usb2: suspend_rh
Aug  6 22:06:25 faramir kernel: hub 1-0:1.0: hub_suspend
Aug  6 22:06:25 faramir kernel: usb usb1: bus auto-suspend
Aug  6 22:06:25 faramir kernel: usb usb1: suspend_rh
Aug  6 22:06:28 faramir kernel: usb usb5: usb auto-resume
Aug  6 22:06:28 faramir kernel: ehci_hcd 0000:00:1d.7: resume root hub
Aug  6 22:06:28 faramir kernel: hub 5-0:1.0: hub_resume
Aug  6 22:06:28 faramir kernel: hub 5-0:1.0: state 7 ports 8 chg 0000 evt fe00
Aug  6 22:06:28 faramir kernel: usb usb2: usb auto-resume
Aug  6 22:06:28 faramir kernel: usb usb2: wakeup_rh
Aug  6 22:06:28 faramir kernel: hub 2-0:1.0: hub_resume
Aug  6 22:06:28 faramir kernel: usb usb1: usb auto-resume
Aug  6 22:06:28 faramir kernel: usb usb1: wakeup_rh
Aug  6 22:06:28 faramir kernel: hub 2-0:1.0: state 7 ports 2 chg 0000 evt 0000
Aug  6 22:06:28 faramir kernel: hub 1-0:1.0: hub_resume
Aug  6 22:06:28 faramir kernel: hub 1-0:1.0: state 7 ports 2 chg 0000 evt 0000
Aug  6 22:06:29 faramir kernel: usb usb2: suspend_rh (auto-stop)
Aug  6 22:06:29 faramir kernel: usb usb1: suspend_rh (auto-stop)
[...]

AFAIK I have not enabled anything special in userland when it comes to
USB suspension; this is just a standard boot.
I do have CONFIG_USB_SUSPEND enabled though, so maybe one should not do that
when using USB_DEBUG?
--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
