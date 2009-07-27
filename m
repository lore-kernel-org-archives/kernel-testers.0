From: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
Subject: Re: [Bug #13624] usb: wrong autosuspend initialization
Date: Mon, 27 Jul 2009 11:09:58 -0400 (EDT)
Message-ID: <Pine.LNX.4.44L0.0907271106160.3847-100000@iolanthe.rowland.org>
References: <4A6DBD51.6040103@phuk.ath.cx>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4A6DBD51.6040103-2tUql6aCh3Vfq8cQ1yknNg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: list-2tUql6aCh3Vfq8cQ1yknNg@public.gmane.org
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Oliver Neukum <oliver-GvhC2dPhHPQdnm+yROfE0A@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

On Mon, 27 Jul 2009 list-2tUql6aCh3Vfq8cQ1yknNg@public.gmane.org wrote:

> Alan Stern wrote:
> > On Sun, 26 Jul 2009, Rafael J. Wysocki wrote:
> > 
> >> This message has been generated automatically as a part of a report
> >> of regressions introduced between 2.6.29 and 2.6.30.
> >>
> >> The following bug entry is on the current list of known regressions
> >> introduced between 2.6.29 and 2.6.30.  Please verify if it still should
> >> be listed and let me know (either way).
> >>
> >>
> >> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13624
> >> Subject		: usb: wrong autosuspend initialization
> >> Submitter	:  <list-2tUql6aCh3Vfq8cQ1yknNg@public.gmane.org>
> >> Date		: 2009-06-25 18:18 (32 days old)
> > 
> > There's some question as to whether this should be considered a kernel 
> > bug.  The kernel isn't doing anything wrong; the problem is that 
> > various userspace programs enable autosuspend for devices that can't 
> > support it properly.
> > 
> > Alan Stern
> > 
> 
> I'm currently working on a patch for laptop_mode. The maintainer tells 
> me there's work going on in the kernel to blacklist USB devices that 
> don't implement autosuspend correctly (like mice turning their light 
> off, etc...). Is that true?

No, it isn't.  The kernel has no way to tell whether mice behave that
way or not.

The only suspend-related blacklisting in the kernel is concerned with
broken devices that can't be resumed after they have been suspended.  
The kernel has to reset these devices instead of resuming them.

Alan Stern
