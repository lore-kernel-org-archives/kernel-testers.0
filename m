From: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
Subject: Re: [regression] usb: sometimes dead keyboard after boot (with debug
 log)
Date: Sat, 30 Aug 2008 22:53:49 -0400 (EDT)
Message-ID: <Pine.LNX.4.44L0.0808302232230.514-100000@netrider.rowland.org>
References: <200808301736.27377.elendil@planet.nl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200808301736.27377.elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Frans Pop <elendil-EIBgga6/0yRmR6Xm/wNWPw@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

On Sat, 30 Aug 2008, Frans Pop wrote:

> On Tuesday 26 August 2008, Alan Stern wrote:
> > > Attached a full diff between dmesg from two consecutive boots: first
> > > without keyboard; after reboot the keyboard is detected. The actual
> > > difference is fairly small and clearly shows that usb 3-1 is not
> > > handed off correctly, probably due to a small difference in timing.
> > >
> > > Note that I've never seen this problem with earlier kernels.
> >
> > I can't tell exactly what's going on because your usbcore module wasn't
> > built with CONFIG_USB_DEBUG enabled.
> 
> I got lucky on the second boot with -rc5 and USB_DEBUG enabled.
> Attached the output of dmesg. After this boot the keyboard was dead and 
> the telltale "reset low speed USB device" message is present.

Okay, now I can tell what happened.

It's kind of amusing.  You ran across a side effect of some new code I
added fairly recently.  The new code was supposed to make device
operation _more_ reliable!  But in your case it backfired.  :-(

Here's the story.  As you'd expect, ehci-hcd initialization interrupted
the keyboard probing procedure.  The interruption occurred just before
the point where the keyboard was configured.  As a result the
configuration was not installed, but this isn't a fatal error and the
kernel continued normally.

It turns out that the EHCI init had finished and the keyboard's
connection was handed back to the UHCI controller before the hub driver
got around to noticing the disconnection.  Here's where the new code
came into play.  The idea is to prevent transient errors from causing
lasting effects -- if the hub driver sees that a device _was_
disconnected but after a hundred ms or so the same device appears to be
plugged in to the same port as before, it resets the device and
otherwise leaves it alone.  In particular it does not treat the event
as a regular disconnection.  That's exactly what happened to you: EHCI
init caused the keyboard to be disconnected from the UHCI controller,
and it was reconnected again by the time the hub driver looked at it.

That's why there was no "USB disconnect" message and there was a "reset 
low speed USB device" instead.  The end effect was that the _same_ 
instantiation of the keyboard device remained present, and since it had 
never been configured, of course it didn't work.

This odd scenario might provide a valid reason for accepting the new 
patch.  Or on the other hand, it might provide a reason for removing 
the "ignore transient disconnect" changes.  At this point I'm not sure 
what's best.

Alan Stern
