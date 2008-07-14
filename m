From: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
Subject: Re: 2.6.26-rc9-git12: Reported regressions from 2.6.25
Date: Mon, 14 Jul 2008 09:59:10 -0400 (EDT)
Message-ID: <Pine.LNX.4.44L0.0807140955020.2566-100000@iolanthe.rowland.org>
References: <alpine.LFD.1.10.0807131230130.2959@woody.linux-foundation.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.1.10.0807131230130.2959-5CScLwifNT1QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Greg KH <greg-U8xfFu+wG4EAvxtiuMwx3w@public.gmane.org>

On Sun, 13 Jul 2008, Linus Torvalds wrote:

> 
> 
> On Sun, 13 Jul 2008, Rafael J. Wysocki wrote:
> > 
> > Regressions with patches
> > ------------------------
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11072
> > Subject		: scsi-layer crash after usb storage device unplug
> > Submitter	: Johannes Berg <johannes-cdvu00un1VgdHxzADdlk8Q@public.gmane.org>
> > Date		: 2008-07-12 01:50 (2 days old)
> > Handled-By	: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
> > Patch		: http://bugzilla.kernel.org/show_bug.cgi?id=11072#c3
> 
> Alan, Greg?

We haven't heard back yet from Johannes to confirm that the fix really
works.  If it does, IMO the patch should go into 2.6.26.1.

(In fact it might not be so easy to tell, since the failure is caused 
be a race.  Perhaps it would be best to submit the patch in any case.)

Alan Stern
