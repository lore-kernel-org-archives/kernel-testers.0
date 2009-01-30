From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [linux-pm] Suspend regression, hang after matroxfb
Date: Sat, 31 Jan 2009 00:40:59 +0100
Message-ID: <200901310041.00468.rjw@sisk.pl>
References: <Pine.LNX.4.44L0.0901301818400.2785-100000@iolanthe.rowland.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Pine.LNX.4.44L0.0901301818400.2785-100000-IYeN2dnnYyZXsRXLowluHWD2FQJk+8+b@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
Cc: Eric Sesterhenn <snakebyte-Mmb7MZpHnFY@public.gmane.org>, linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, vandrove-hnqZr3NxcozrBKCeMvbIDA@public.gmane.org

On Saturday 31 January 2009, Alan Stern wrote:
> On Fri, 30 Jan 2009, Rafael J. Wysocki wrote:
> 
> > Suspend to RAM is reported to break on some machines as a result of
> > attempting to put one of driverless PCI devices into a low power
> > state.  Avoid that by not attepmting to power manage driverless
> > devices during suspend.
> 
> Just out of curiosity, what would happen if one of these troublesome
> devices _did_ have a driver?  Would suspend still be broken?

That depends on what the driver would do to the device in its suspend callback.

> Would you then blame the driver instead of the PCI core?

Probably both.  I'd try to find the root cause and presumably blacklist
the device this way or another.

> Or would the driver be smart enough to avoid putting the device in a
> low-power state?

I think that putting devices into low power states should better be done by
the core.  In this particular case, we can add some quirks to the core so
that it can handle those devices correctly.  I don't think adding such quirks
to drivers would be a good idea.

> But doesn't that defeat the purpose of suspending in the first place?

If the entire system goes into a sleep state, the platform will probably remove
power from the device anyway, so it doesn't really matter too much.  It is
going to matter for run-time power saving, though.

Thanks,
Rafael
