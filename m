From: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
Subject: Re: [regression?] usb: new errors during device detection
Date: Sun, 10 Aug 2008 11:44:03 -0400 (EDT)
Message-ID: <Pine.LNX.4.44L0.0808101143100.942-100000@netrider.rowland.org>
References: <489D9B46.60001@otello.alma.unibo.it>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <489D9B46.60001-gmoNqwowlqBr8A+qpt3pXFzrSV/HdtiB@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Diego Zuccato <diego-gmoNqwowlqBr8A+qpt3pXFzrSV/HdtiB@public.gmane.org>
Cc: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Sat, 9 Aug 2008, Diego Zuccato wrote:

> Alan Stern ha scritto:
> 
> > As each device is enumerated, ehci-hcd determines whether it can run at 
> > high speed.  If not, the corresponding switch is set so the device 
> > connects back to the UHCI controller and it runs at full/low speed.
> Urgh... What happens if it contains a mounted filesystem?
> Seems quite dangerous...

It's no more dangerous than somebody unplugging the USB cable by 
mistake.  :-)

Alan Stern
