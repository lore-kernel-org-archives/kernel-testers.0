From: Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: 2.6.26-rc9: Reported regressions from 2.6.25
Date: Mon, 7 Jul 2008 01:07:23 +0300
Message-ID: <20080706220723.GI21669@cs181140183.pp.htv.fi>
References: <Vu1KV8Wj_GP.A.qW.DzLcIB@albercik> <200807062304.07443.rjw@sisk.pl> <20080706213214.GH21669@cs181140183.pp.htv.fi> <200807062347.59962.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <200807062347.59962.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maximilian Engelhardt <maxi-OwNUvPV92VfddJNmlsFzeA@public.gmane.org>, Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, "Paul E. McKenney" <paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, James Bottomley <James.Bottomley-JuX6DAaQMKPCXq6kfMZ53/egYHeGw8Jk@public.gmane.org>, Domenico Andreoli <cavokz-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Sun, Jul 06, 2008 at 11:47:58PM +0200, Rafael J. Wysocki wrote:
> On Sunday, 6 of July 2008, Adrian Bunk wrote:
>...
> > Is there any specific reason why your automated emails only go to the 
> > submitters but not to the maintainers of the code in question?
> 
> Yes, there is.  We'd have to add special annotations to bug reports for that
> and I'm not always sure which list/maintainer combination is appropriate.

Then make a wild guess.

Long ago when I was doing regression tracking I sometimes added a dozen 
addresses from 3 different MAINTAINERS entry for one bug report for 
getting emails to all involved parties.

Not sure whether Bugzilla is the right place for maintaining this 
information, but even if it takes a few minutes to add it to 
all regression reports when sending the emails it's in my experience 
worth it.

> > If you had Cc'ed Kyle once during the last 46 days he might have remembered 
> > that he already fixed this bug...
> 
> He might have looked at the regression reports just as well.

There is a huge difference between offering information for maintainers 
that are actively searching for it and regularly annoying maintainers 
that there's a regression they have forgotten about they should fix...

> Thanks,
> Rafael

cu
Adrian

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed
