From: Dan Williams <dcbw-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #13947] Libertas: Association request to the driver failed
Date: Fri, 21 Aug 2009 10:35:34 -0500
Message-ID: <1250868934.2505.46.camel@localhost.localdomain>
References: <jCYznkTxcLB.A.EPH.eNIjKB@chimera>
	 <ADSuNT6McuD.A.fc.7NIjKB@chimera>
	 <25e057c00908200151i472fa3cem6da814e7115e1ea7@mail.gmail.com>
	 <200908201710.32147.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200908201710.32147.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: roel kluin <roel.kluin-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Daniel Mack <daniel-rDUAYElUppE@public.gmane.org>, "John W. Linville" <linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>

On Thu, 2009-08-20 at 17:10 +0200, Rafael J. Wysocki wrote:
> On Thursday 20 August 2009, roel kluin wrote:
> > > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=13947
> > > Subject         : Libertas: Association request to the driver failed
> > > Submitter       : Daniel Mack <daniel-rDUAYElUppE@public.gmane.org>
> > > Date            : 2009-08-07 19:11 (13 days old)
> > > First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=57921c312e8cef72ba35a4cfe870b376da0b1b87
> > > References      : http://marc.info/?l=linux-kernel&m=124967234311481&w=4
> > > Handled-By      : Roel Kluin <roel.kluin-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > 
> > I think this should be fixed with patch of Dan Williams found here:
> > 
> > http://lkml.org/lkml/2009/8/12/299
> 
> Thanks, bug entry updated.

Rebased tested and posted to linux-wireless officially:

Subject: [PATCH] libertas: clean up and clarify get_common_rates
Date:    Fri, 21 Aug 2009 09:35:20 -0500

Dan

