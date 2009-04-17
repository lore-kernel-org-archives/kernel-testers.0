From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: Re: [Bug #13099] net, sky2: BUG: unable to handle kernel NULL pointer dereference, pci_vpd_truncate()
Date: Fri, 17 Apr 2009 23:14:49 +0200
Message-ID: <200904172314.50380.rjw@sisk.pl>
References: <EJaiQ4Wfaz.A.3YG.4v85JB@chimera> <nY3-4PrO6XH.A.Q2.cw85JB@chimera> <20090417004517.GB1988@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1759619AbZDQVPf@vger.kernel.org>
In-Reply-To: <20090417004517.GB1988@elte.hu>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Ingo Molnar <mingo@elte.hu>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Stephen Hemminger <shemminger@vyatta.com>

On Friday 17 April 2009, Ingo Molnar wrote:
> 
> * Rafael J. Wysocki <rjw@sisk.pl> wrote:
> 
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.29.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13099
> > Subject		: net, sky2: BUG: unable to handle kernel NULL pointer dereference, pci_vpd_truncate()
> > Submitter	: Ingo Molnar <mingo@elte.hu>
> > Date		: 2009-04-06 9:03 (11 days old)
> > References	: http://marc.info/?l=linux-kernel&m=123900867611321&w=4
> > Handled-By	: Stephen Hemminger <shemminger@vyatta.com>
> 
> I think this can be closed as the fix has been merged upstream 
> already (via the PCI tree):
> 
>  commit d407e32efe060afa2b9a797a91376ebc65b4ce11
>  Author: Anton Vorontsov <avorontsov@ru.mvista.com>
>  Date:   Wed Apr 1 02:23:41 2009 +0400
> 
>     PCI: Fix oops in pci_vpd_truncate

Thanks, closed.

Rafael
