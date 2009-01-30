From: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
Subject: Re: [linux-pm] Suspend regression, hang after matroxfb
Date: Fri, 30 Jan 2009 18:21:49 -0500 (EST)
Message-ID: <Pine.LNX.4.44L0.0901301818400.2785-100000@iolanthe.rowland.org>
References: <200901302359.18309.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200901302359.18309.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Eric Sesterhenn <snakebyte-Mmb7MZpHnFY@public.gmane.org>, linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, vandrove-hnqZr3NxcozrBKCeMvbIDA@public.gmane.org

On Fri, 30 Jan 2009, Rafael J. Wysocki wrote:

> Suspend to RAM is reported to break on some machines as a result of
> attempting to put one of driverless PCI devices into a low power
> state.  Avoid that by not attepmting to power manage driverless
> devices during suspend.

Just out of curiosity, what would happen if one of these troublesome
devices _did_ have a driver?  Would suspend still be broken?  Would you
then blame the driver instead of the PCI core?  Or would the driver be
smart enough to avoid putting the device in a low-power state?  But
doesn't that defeat the purpose of suspending in the first place?

Alan Stern
