From: Alexander Clouter <alex-L4GPcECwBoDe9xe1eoZjHA@public.gmane.org>
Subject: Re: [Bug #14482] kernel BUG at fs/dcache.c:670 +lvm +md +ext3
Date: Mon, 15 Feb 2010 16:24:52 +0000
Message-ID: <20100215162452.GA22823@chipmunk>
References: <UgwvXSBS_tM.A.alD.1EiZLB@chimera> <de962C6zBxL.A.85G.9HiZLB@chimera> <4B66F79E.1040606@mandriva.org> <20100208095943.GJ14551@chipmunk>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20100208095943.GJ14551@chipmunk>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Thomas Backlund <tmb-4qZELD6Fgxhg9hUCZPvPmw@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Hi,

* Alexander Clouter <alex-L4GPcECwBoDe9xe1eoZjHA@public.gmane.org> [2010-02-08 09:59:43+0000]:
>
> * Thomas Backlund <tmb-4qZELD6Fgxhg9hUCZPvPmw@public.gmane.org> [2010-02-01 17:47:42+0200]:
> >
> > 01.02.2010 02:43, Rafael J. Wysocki skrev:
> >> This message has been generated automatically as a part of a report
> >> of regressions introduced between 2.6.31 and 2.6.32.
> >>
> >> The following bug entry is on the current list of known regressions
> >> introduced between 2.6.31 and 2.6.32.  Please verify if it still should
> >> be listed and let me know (either way).
> >>
> >>
> >> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14482
> >> Subject		: kernel BUG at fs/dcache.c:670 +lvm +md +ext3
> >> Submitter	: Alexander Clouter<alex-L4GPcECwBoDe9xe1eoZjHA@public.gmane.org>
> >> Date		: 2009-10-23 10:30 (101 days old)
> >> References	: http://lkml.org/lkml/2009/10/23/50
> >>
> >
> > Afaik this is the same issue as the one referenced here:
> >
> > http://lkml.org/lkml/2010/1/28/292
> >
> > The patch in the above thread should fix the issue.
> >
> I'm getting my hands on some not-in-production-state equipment to test 
> this with, so bear with me :)
> 
I can confirm this patch fixes the problem I was seeing.  Once applied I 
could no longer OOP's my kernel.

Cheers

-- 
Alexander Clouter
.sigmonster says: Please take note:
