From: Diego Zuccato <diego-gmoNqwowlqBr8A+qpt3pXFzrSV/HdtiB@public.gmane.org>
Subject: Re: [regression?] usb: new errors during device detection
Date: Sat, 09 Aug 2008 15:27:34 +0200
Message-ID: <489D9B46.60001@otello.alma.unibo.it>
References: <Pine.LNX.4.44L0.0808061814250.2145-100000@iolanthe.rowland.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Pine.LNX.4.44L0.0808061814250.2145-100000-IYeN2dnnYyZXsRXLowluHWD2FQJk+8+b@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
Cc: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Alan Stern ha scritto:

> As each device is enumerated, ehci-hcd determines whether it can run at 
> high speed.  If not, the corresponding switch is set so the device 
> connects back to the UHCI controller and it runs at full/low speed.
Urgh... What happens if it contains a mounted filesystem?
Seems quite dangerous...

BYtE,
  Diego.
