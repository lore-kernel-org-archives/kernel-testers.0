From: Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: 2.6.26-rc9: Reported regressions from 2.6.25
Date: Mon, 7 Jul 2008 00:32:15 +0300
Message-ID: <20080706213214.GH21669@cs181140183.pp.htv.fi>
References: <Vu1KV8Wj_GP.A.qW.DzLcIB@albercik> <200807062002.46863.rjw@sisk.pl> <20080706182648.GE21669@cs181140183.pp.htv.fi> <200807062304.07443.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <200807062304.07443.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maximilian Engelhardt <maxi-OwNUvPV92VfddJNmlsFzeA@public.gmane.org>, Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, "Paul E. McKenney" <paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, James Bottomley <James.Bottomley-JuX6DAaQMKPCXq6kfMZ53/egYHeGw8Jk@public.gmane.org>, Domenico Andreoli <cavokz-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Sun, Jul 06, 2008 at 11:04:06PM +0200, Rafael J. Wysocki wrote:
> On Sunday, 6 of July 2008, Adrian Bunk wrote:
> > On Sun, Jul 06, 2008 at 08:02:45PM +0200, Rafael J. Wysocki wrote:
> > > On Sunday, 6 of July 2008, Adrian Bunk wrote:
> > > > On Sun, Jul 06, 2008 at 07:05:49PM +0200, Rafael J. Wysocki wrote:
> > > > > 
> > > > > Also, in the next couple of days I'll be closing the bugs the reporters of
> > > > > which have been totally unresponsive.
> > > > >...
> > > > 
> > > > If no action by us gets combined with automated weekly emails then
> > > > no responses to the latter is not an unexpected event.
> > > > 
> > > > Such a submitter might be perfectly responsive to actual work on a bug 
> > > > while really pissed off by getting the bug closed.
> > > > 
> > > > Look e.g. at #10865 that had a 1 month gap in submitter responses,
> > > > but the actual problem is that noone of us ever bothered to look at
> > > > this Oops...
> > > > 
> > > > I just did a run through all open 2.6.26-rc regressions, and I did not 
> > > > find a single one where we seem to be waiting for some time for an 
> > > > answer of the submitter. [1]
> > > 
> > > The following are my candidates:
> > > 
> > > 10629
> > 
> > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=10629
> > Subject         : 2.6.26-rc1-$sha1: RIP __d_lookup+0x8c/0x160
> > Submitter       : Alexey Dobriyan <adobriyan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Date            : 2008-05-05 09:59 (63 days old)
> > References      : http://lkml.org/lkml/2008/5/5/28
> > Handled-By      : Paul E. McKenney <paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>
> > 
> > 
> > See below at #10815.
> > 
> > 
> > > 10786
> > 
> > Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=10786
> > Subject         : parisc: 64bit SMP does not boot on J5600
> > Submitter       : Domenico Andreoli <cavokz-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Date            : 2008-05-22 16:14 (46 days old)
> > References      : http://marc.info/?l=linux-kernel&m=121147328028081&w=4
> > 
> > 
> > Submitter sent bug report, it seems no kernel developer ever bothered
> > to answer.
> > 
> > The unresponsive side is not the submitter.
> 
> The report is 46 days old and the reporter has been sent a request to confirm
> the presence of the problem every week.  Since he hasn't responded to any
> of those requests, I assume we're not going to hear from him.  Thus, it's not
> useful to track this any more.

Andrew Morton also never bothered to answer the automated emails you 
sent him regarding the regression he reported...

Humans react differently to programs than to humans interacting with 
them, and tons of automated mails without any actual efforts by humans 
can easily be considered a non-friendly act.

But for this bug I now found the commit that fixed it back in May.

Is there any specific reason why your automated emails only go to the 
submitters but not to the maintainers of the code in question? If you 
had Cc'ed Kyle once during the last 46 days he might have remembered 
that he already fixed this bug...

> Thanks,
> Rafael

cu
Adrian

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed
