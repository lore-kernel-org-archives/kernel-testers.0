From: Dan Williams <dcbw-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #13947] Libertas: Association request to the driver failed
Date: Fri, 21 Aug 2009 10:33:36 -0500
Message-ID: <1250868816.2505.44.camel@localhost.localdomain>
References: <jCYznkTxcLB.A.EPH.eNIjKB@chimera>
	 <25e057c00908200151i472fa3cem6da814e7115e1ea7@mail.gmail.com>
	 <200908201710.32147.rjw@sisk.pl>
	 <200908201117.45678.gene.heskett@verizon.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200908201117.45678.gene.heskett-H+0wwilmMs3R7s880joybQ@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Gene Heskett <gene.heskett-H+0wwilmMs3R7s880joybQ@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, roel kluin <roel.kluin-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Daniel Mack <daniel-rDUAYElUppE@public.gmane.org>, "John W. Linville" <linville-2XuSBdqkA4R54TAoqtyWWQ@public.gmane.org>

On Thu, 2009-08-20 at 11:17 -0400, Gene Heskett wrote:
> On Thursday 20 August 2009, Rafael J. Wysocki wrote:
> >On Thursday 20 August 2009, roel kluin wrote:
> >> > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=13947
> >> > Subject         : Libertas: Association request to the driver failed
> >> > Submitter       : Daniel Mack <daniel-rDUAYElUppE@public.gmane.org>
> >> > Date            : 2009-08-07 19:11 (13 days old)
> >> > First-Bad-Commit:
> >> > http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=comm
> >> >it;h=57921c312e8cef72ba35a4cfe870b376da0b1b87 References      :
> >> > http://marc.info/?l=linux-kernel&m=124967234311481&w=4 Handled-By     
> >> > : Roel Kluin <roel.kluin-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> >>
> >> I think this should be fixed with patch of Dan Williams found here:
> >>
> >> http://lkml.org/lkml/2009/8/12/299
> >
> >Thanks, bug entry updated.
> >
> Has this made it into 2.6.31-rc6?  I have one of these pci cards, and it is 
> still a no-show even after modprobing the mwl* and libertas modules.

You're still looking for the softmac stuff, which the 'libertas' driver
doesn't support.  You want to keep track of mwl8k where any new support
for softmac Marvell cards would end up.

Dan

