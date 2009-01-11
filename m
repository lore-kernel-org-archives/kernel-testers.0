From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #12279] 2.6.28 suspend regression - HP 2510p
Date: Sun, 11 Jan 2009 19:42:34 +0100
Message-ID: <200901111942.34899.rjw@sisk.pl>
References: <nn3SOLVZ28H.A.bY.CafaJB@chimera> <nHCfeC0YLrE.A.1SC.wafaJB@chimera> <200901111703.24868.bzolnier@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200901111703.24868.bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Bartlomiej Zolnierkiewicz <bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, David Roka <roka-4MBvQsVlD4U@public.gmane.org>

On Sunday 11 January 2009, Bartlomiej Zolnierkiewicz wrote:
> On Sunday 11 January 2009, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.27 and 2.6.28.
> > 
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.27 and 2.6.28.  Please verify if it still should
> > be listed and let me know (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12279
> > Subject		: 2.6.28 suspend regression - HP 2510p
> > Submitter	: David Roka <roka-4MBvQsVlD4U@public.gmane.org>
> > Date		: 2008-12-23 04:17 (20 days old)
> > First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=4dde4492d850a4c9bcaa92e5bd7f4eebe3e2f5ab
> 
> The fix went in the first IDE updates pull for 2.6.29:
> 
> commit 0e63a588fc3d6a5e6bb66bacaeb11cd9093141f8
> Author: Bartlomiej Zolnierkiewicz <bzolnier-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> Date:   Mon Dec 29 20:27:29 2008 +0100
> 
>     ide: fix IDE ACPI regression breaking suspend
> ...
> 
> so it can be marked as closed now.

Thanks for closing.

Best,
Rafael
