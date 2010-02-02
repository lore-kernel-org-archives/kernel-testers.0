From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #15198] Radeon KMS regression
Date: Tue, 2 Feb 2010 21:25:50 +0100
Message-ID: <201002022125.50066.rjw@sisk.pl>
References: <vZZJKzCUn4G.A.CPB.F7hZLB@chimera> <d3IDKWHT5gE.A.UoB.P7hZLB@chimera> <1265069090.1515.1.camel@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1265069090.1515.1.camel-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Kevin Winchester <kjwinchester-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, FUJITA Tomonori <fujita.tomonori-Zyj7fXuS5i5L9jVzuh4AOg@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

On Tuesday 02 February 2010, Kevin Winchester wrote:
> On Mon, 2010-02-01 at 01:22 +0100, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.32.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15198
> > Subject		: Radeon KMS regression
> > Submitter	: Kevin Winchester <kjwinchester-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Date		: 2010-01-30 17:18 (2 days old)
> > First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=42590a75019a50012f25a962246498dead428433
> > References	: http://marc.info/?l=linux-kernel&m=126487191019612&w=4
> > Handled-By	: FUJITA Tomonori <fujita.tomonori-Zyj7fXuS5i5L9jVzuh4AOg@public.gmane.org>
> > Patch		: http://patchwork.kernel.org/patch/75023/
> > 
> > 
> 
> This is fixed by the patch from FUJITA Tomonori - I just confirmed with
> my latest build of Linus' tree (which has the patch).

Thanks, already closed.

Rafael
