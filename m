From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #14482] kernel BUG at fs/dcache.c:670 +lvm +md +ext3
Date: Tue, 2 Feb 2010 22:04:34 +0100
Message-ID: <201002022204.34787.rjw@sisk.pl>
References: <UgwvXSBS_tM.A.alD.1EiZLB@chimera> <de962C6zBxL.A.85G.9HiZLB@chimera> <4B66F79E.1040606@mandriva.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4B66F79E.1040606-4qZELD6Fgxhg9hUCZPvPmw@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Thomas Backlund <tmb-4qZELD6Fgxhg9hUCZPvPmw@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alexander Clouter <alex-L4GPcECwBoDe9xe1eoZjHA@public.gmane.org>

On Monday 01 February 2010, Thomas Backlund wrote:
> 01.02.2010 02:43, Rafael J. Wysocki skrev:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.31 and 2.6.32.
> >
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.31 and 2.6.32.  Please verify if it still should
> > be listed and let me know (either way).
> >
> >
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14482
> > Subject		: kernel BUG at fs/dcache.c:670 +lvm +md +ext3
> > Submitter	: Alexander Clouter<alex-L4GPcECwBoDe9xe1eoZjHA@public.gmane.org>
> > Date		: 2009-10-23 10:30 (101 days old)
> > References	: http://lkml.org/lkml/2009/10/23/50
> >
> >
> 
> Afaik this is the same issue as the one referenced here:
> 
> http://lkml.org/lkml/2010/1/28/292
> 
> The patch in the above thread should fix the issue.

Thanks, updated.

Rafael
