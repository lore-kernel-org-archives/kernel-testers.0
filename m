From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #15031] bug in fs/btrfs/ordered-data.c:672
Date: Mon, 11 Jan 2010 21:11:34 +0100
Message-ID: <201001112111.34494.rjw@sisk.pl>
References: <wnS54-l8PVO.A.TlF.oMlSLB@chimera> <omZ8aBZReyD.A.0sG.6MlSLB@chimera> <20100111003839.GA6216@Pilar>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20100111003839.GA6216@Pilar>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: "Carlos R. Mafra" <crmafra2-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Yan, Zheng" <yanzheng-0GSiYjBpcig@public.gmane.org>, Chris Mason <chris.mason-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>

On Monday 11 January 2010, Carlos R. Mafra wrote:
> On So 10.Jan'10 at 23:32:57 +0100, Rafael J. Wysocki wrote:
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.32.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15031
> > Subject		: bug in fs/btrfs/ordered-data.c:672
> > Submitter	: Carlos R. Mafra <crmafra2-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Date		: 2010-01-02 11:32 (9 days old)
> > References	: http://lkml.org/lkml/2010/1/2/17
> > Handled-By	: Yan, Zheng <yanzheng-0GSiYjBpcig@public.gmane.org>
> > Patch		: http://www.mail-archive.com/linux-btrfs-u79uwXL29TY76Z2rM5mHXA@public.gmane.org/msg03686.html
> 
> I am using the patch above since Zheng pointed it out to me and the bug
> no longer appears. But it is not in mainline yet.

Thanks for the update.

Rafael
