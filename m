From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #16306] 2.6.35-rc3 BUG: unable to handle kernel NULL pointer dereference at 0000000000000048 cifs_show_options
Date: Fri, 9 Jul 2010 22:58:58 +0200
Message-ID: <201007092258.58728.rjw@sisk.pl>
References: <-IGZ64uxA6G.A.P0H.bLmNMB@chimera> <20100708204945.01ca1236@corrin.poochiereds.net> <AANLkTikt1cJTq7_yYlISBYuAXlF2_X1mausSsr1j6l85@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <AANLkTikt1cJTq7_yYlISBYuAXlF2_X1mausSsr1j6l85-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Andrew Hendry <andrew.hendry-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Jeff Layton <jlayton-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Friday, July 09, 2010, Andrew Hendry wrote:
> It might not be a regression, and so far i haven't been able to reproduce.
> Its seems to be related to suspend/resume interface up/down and mount/unmount.
> Also potentially with cifs waiting for a NAS to spinup to complete mount.

OK, so I'm going to close it for now.  Please let me know if you can reproduce it.

Also I think it's not a regression.

Rafael


> On Fri, Jul 9, 2010 at 10:49 AM, Jeff Layton <jlayton-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org> wrote:
> > On Fri,  9 Jul 2010 01:41:39 +0200 (CEST)
> > "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> >
> >> This message has been generated automatically as a part of a summary report
> >> of recent regressions.
> >>
> >> The following bug entry is on the current list of known regressions
> >> from 2.6.34.  Please verify if it still should be listed and let the tracking team
> >> know (either way).
> >>
> >>
> >> Bug-Entry     : http://bugzilla.kernel.org/show_bug.cgi?id=16306
> >> Subject               : 2.6.35-rc3 BUG: unable to handle kernel NULL pointer dereference at 0000000000000048 cifs_show_options
> >> Submitter     : Andrew Hendry <andrew.hendry-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> >> Date          : 2010-06-26 10:46 (13 days old)
> >> Message-ID    : <AANLkTilhTrEBYZd4HxeXQk8B6-yV8rCJ2C0jXsEREgIR-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
> >> References    : http://marc.info/?l=linux-kernel&m=127754922110501&w=2
> >> Handled-By    : Jeff Layton <jlayton-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
> >>
> >>
> >
> > Not sure if this is a new bug or not...
> >
> > I don't think this is really a CIFS bug, per-se. It seems like the
> > problem may be that the iterator for /proc/pid/mountinfo is not
> > sufficiently protected against removal from the vfsmount list.
> >
> > Filesystems don't seem to be expected to do any locking in their
> > show_options routines though so I'm guessing that something is borked
> > in the generic vfs layer.
> >
> > Either that or this is some sort of generic mem corruption? I'm open to
> > input from others that have a better grasp of this stuff at the VFS
> > layer...
> >
> > --
> > Jeff Layton <jlayton-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
> >
> 
> 
