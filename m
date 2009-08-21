From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: Re: [Bug #13947] Libertas: Association request to the driver failed
Date: Fri, 21 Aug 2009 18:46:07 +0200
Message-ID: <200908211846.07750.rjw@sisk.pl>
References: <jCYznkTxcLB.A.EPH.eNIjKB@chimera> <200908201710.32147.rjw@sisk.pl> <1250868934.2505.46.camel@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S932522AbZHUQpR@vger.kernel.org>
In-Reply-To: <1250868934.2505.46.camel@localhost.localdomain>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Dan Williams <dcbw@redhat.com>
Cc: roel kluin <roel.kluin@gmail.com>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Daniel Mack <daniel@caiaq.de>, "John W. Linville" <linville@tuxdriver.com>

On Friday 21 August 2009, Dan Williams wrote:
> On Thu, 2009-08-20 at 17:10 +0200, Rafael J. Wysocki wrote:
> > On Thursday 20 August 2009, roel kluin wrote:
> > > > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=13947
> > > > Subject         : Libertas: Association request to the driver failed
> > > > Submitter       : Daniel Mack <daniel@caiaq.de>
> > > > Date            : 2009-08-07 19:11 (13 days old)
> > > > First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=57921c312e8cef72ba35a4cfe870b376da0b1b87
> > > > References      : http://marc.info/?l=linux-kernel&m=124967234311481&w=4
> > > > Handled-By      : Roel Kluin <roel.kluin@gmail.com>
> > > 
> > > I think this should be fixed with patch of Dan Williams found here:
> > > 
> > > http://lkml.org/lkml/2009/8/12/299
> > 
> > Thanks, bug entry updated.
> 
> Rebased tested and posted to linux-wireless officially:
> 
> Subject: [PATCH] libertas: clean up and clarify get_common_rates
> Date:    Fri, 21 Aug 2009 09:35:20 -0500

Thanks, updated.

Rafael
