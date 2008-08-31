From: Greg KH <greg-U8xfFu+wG4EAvxtiuMwx3w@public.gmane.org>
Subject: Re: [regression] usb: sometimes dead keyboard after boot
Date: Sat, 30 Aug 2008 22:16:02 -0700
Message-ID: <20080831051602.GA17745@kroah.com>
References: <200808301640.21043.elendil@planet.nl> <Pine.LNX.4.44L0.0808302202250.514-100000@netrider.rowland.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.44L0.0808302202250.514-100000-pYrvlCTfrz9XsRXLowluHWD2FQJk+8+b@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
Cc: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>, Kernel development list <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, USB list <linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Sat, Aug 30, 2008 at 10:21:20PM -0400, Alan Stern wrote:
> (Actually even this might not be true any more.  There are patches in 
> development which make certain parts of the kernel initialization, 
> including driver probing, run in parallel threads rather than 
> serially.)

No, that did go in for one kernel release and then ripped out, it turned
out to not save any time and just cause lots more problems.  So don't
worry about this.

thanks,

greg k-h
