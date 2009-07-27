From: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
Subject: Re: [Bug #13624] usb: wrong autosuspend initialization
Date: Mon, 27 Jul 2009 10:42:12 -0400 (EDT)
Message-ID: <Pine.LNX.4.44L0.0907271041040.5614-100000@iolanthe.rowland.org>
References: <H5-1lZIIeYK.A.UqG.MXObKB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <H5-1lZIIeYK.A.UqG.MXObKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Oliver Neukum <oliver-GvhC2dPhHPQdnm+yROfE0A@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, list-2tUql6aCh3Vfq8cQ1yknNg@public.gmane.org

On Sun, 26 Jul 2009, Rafael J. Wysocki wrote:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.29 and 2.6.30.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.29 and 2.6.30.  Please verify if it still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13624
> Subject		: usb: wrong autosuspend initialization
> Submitter	:  <list-2tUql6aCh3Vfq8cQ1yknNg@public.gmane.org>
> Date		: 2009-06-25 18:18 (32 days old)

There's some question as to whether this should be considered a kernel 
bug.  The kernel isn't doing anything wrong; the problem is that 
various userspace programs enable autosuspend for devices that can't 
support it properly.

Alan Stern
