From: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
Subject: Re: 2.6.26-rc9-git12: Reported regressions from 2.6.25
Date: Tue, 15 Jul 2008 10:20:11 -0400 (EDT)
Message-ID: <Pine.LNX.4.44L0.0807151019420.2517-100000@iolanthe.rowland.org>
References: <1216110638.3535.0.camel@johannes.berg>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1216110638.3535.0.camel-YfaajirXv214zXjbi5bjpg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Greg KH <greg-U8xfFu+wG4EAvxtiuMwx3w@public.gmane.org>

On Tue, 15 Jul 2008, Johannes Berg wrote:

> > Add
> > 
> > 	printk(KERN_ALERT "Unplug now!\n");
> > 	ssleep(10);
> > 
> > to the start of slave_configure() in drivers/usb/storage/scsiglue.c.  
> > Then it should be very easy to trigger the failure.  :-)
> 
> Indeed.
> 
> > Assuming the failure does occur without the patch, see if it still 
> > occurs once the patch is in place.
> 
> Yes, it occurs without the patch and not with the patch, thanks!

Okay, thanks for testing.  I will submit the patch for 2.6.26.1.

Alan Stern
