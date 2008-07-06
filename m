From: Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: 2.6.26-rc9: Reported regressions from 2.6.25
Date: Sun, 6 Jul 2008 20:40:07 +0300
Message-ID: <20080706174006.GD21669@cs181140183.pp.htv.fi>
References: <Vu1KV8Wj_GP.A.qW.DzLcIB@albercik> <alpine.LFD.1.10.0807060816070.3016@woody.linux-foundation.org> <20080706155825.GB21669@cs181140183.pp.htv.fi> <200807061905.50261.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <200807061905.50261.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maximilian Engelhardt <maxi-OwNUvPV92VfddJNmlsFzeA@public.gmane.org>, Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, "Paul E. McKenney" <paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, James Bottomley <James.Bottomley-JuX6DAaQMKPCXq6kfMZ53/egYHeGw8Jk@public.gmane.org>

On Sun, Jul 06, 2008 at 07:05:49PM +0200, Rafael J. Wysocki wrote:
> 
> Also, in the next couple of days I'll be closing the bugs the reporters of
> which have been totally unresponsive.
>...

If no action by us gets combined with automated weekly emails then
no responses to the latter is not an unexpected event.

Such a submitter might be perfectly responsive to actual work on a bug 
while really pissed off by getting the bug closed.

Look e.g. at #10865 that had a 1 month gap in submitter responses,
but the actual problem is that noone of us ever bothered to look at
this Oops...

I just did a run through all open 2.6.26-rc regressions, and I did not 
find a single one where we seem to be waiting for some time for an 
answer of the submitter. [1]

> Thanks,
> Rafael

cu
Adrian

[1] unless there was communication not linked from Bugzilla

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed
