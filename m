From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #11852] v2.6.28-rc1: Regression in ext3/jbd
Date: Sun, 2 Nov 2008 22:39:28 +0100
Message-ID: <200811022239.28886.rjw@sisk.pl>
References: <603i_OdVYPF.A.7_D.mjeDJB@chimera> <wOAXuecskPD.A.JtG.pkeDJB@chimera> <19f34abd0811021318k22ee25edgdb896ffc9037031e@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <19f34abd0811021318k22ee25edgdb896ffc9037031e-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Hidehiro Kawai <hidehiro.kawai.ez-FCd8Q96Dh0JBDgjK7y7TUQ@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>

On Sunday, 2 of November 2008, Vegard Nossum wrote:
> On Sun, Nov 2, 2008 at 5:07 PM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> >
> > The following bug entry is on the current list of known regressions
> > from 2.6.27.  Please verify if it still should be listed and let me know
> > (either way).
> >
> >
> > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=11852
> > Subject         : v2.6.28-rc1: Regression in ext3/jbd
> > Submitter       : Vegard Nossum <vegard.nossum-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Date            : 2008-10-25 11:22 (9 days old)
> > References      : http://marc.info/?l=linux-kernel&m=122493379905812&w=4
> > Handled-By      : Hidehiro Kawai <hidehiro.kawai.ez-FCd8Q96Dh0JBDgjK7y7TUQ@public.gmane.org>
> > Patch           : http://marc.info/?l=linux-kernel&m=122510792614388&w=4
> >                  http://marc.info/?l=linux-kernel&m=122510828015045&w=4
> 
> This is in mainline as of
> 
> commit ef2cabf7c6d838eb0ee2b4fb8ef84f7c06ce16d9
> Author: Hidehiro Kawai <hidehiro.kawai.ez-FCd8Q96Dh0JBDgjK7y7TUQ@public.gmane.org>
> Date:   Mon Oct 27 22:53:05 2008 -0400
> 
>     ext4: fix a bug accessing freed memory in ext4_abort
> 
> commit 44d6f78756560e95903de239e10f8a40a6eae444
> Author: Hidehiro Kawai <hidehiro.kawai.ez-FCd8Q96Dh0JBDgjK7y7TUQ@public.gmane.org>
> Date:   Mon Oct 27 22:51:46 2008 -0400
> 
>     ext3: fix a bug accessing freed memory in ext3_abort
> 
> Thanks for quick action, by the way :-)

Thanks, closed.

Rafael
