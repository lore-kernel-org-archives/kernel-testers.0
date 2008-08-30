From: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Subject: Re: [regression] usb: sometimes dead keyboard after boot
Date: Sat, 30 Aug 2008 12:44:19 +0200
Message-ID: <200808301244.19968.elendil@planet.nl>
References: <Pine.LNX.4.44L0.0808291709400.13185-100000@netrider.rowland.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Pine.LNX.4.44L0.0808291709400.13185-100000-pYrvlCTfrz9XsRXLowluHWD2FQJk+8+b@public.gmane.org>
Content-Disposition: inline
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
Cc: Kernel development list <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, USB list <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Friday 29 August 2008, you wrote:
> Maybe you haven't enabled anything special, but something sure is
> running.  It appears to be probing your USB devices every 5 seconds.
> You might be able to find out what it is by adding
>
> 	printk(KERN_INFO "usbdev open by %s\n", current->comm);
>
> to usbdev_open() in drivers/usb/core/devio.c.

Thanks a lot. That identified the culprit: brltty (which I only have 
installed for some very rare testing with the Debian Installer).

I'll file a bug in the Debian BTS as I know the Debian maintainer has very 
good contacts with the upstream developers.
--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
