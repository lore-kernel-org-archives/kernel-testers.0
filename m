From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: 2.6.26-rc9: Reported regressions from 2.6.25
Date: Sun, 6 Jul 2008 20:02:45 +0200
Message-ID: <200807062002.46863.rjw@sisk.pl>
References: <Vu1KV8Wj_GP.A.qW.DzLcIB@albercik> <200807061905.50261.rjw@sisk.pl> <20080706174006.GD21669@cs181140183.pp.htv.fi>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20080706174006.GD21669-re2QNgSbS3j4D6uPqz5PAwR5/fbUUdgG@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Cc: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maximilian Engelhardt <maxi-OwNUvPV92VfddJNmlsFzeA@public.gmane.org>, Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, "Paul E. McKenney" <paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, James Bottomley <James.Bottomley-JuX6DAaQMKPCXq6kfMZ53/egYHeGw8Jk@public.gmane.org>

On Sunday, 6 of July 2008, Adrian Bunk wrote:
> On Sun, Jul 06, 2008 at 07:05:49PM +0200, Rafael J. Wysocki wrote:
> > 
> > Also, in the next couple of days I'll be closing the bugs the reporters of
> > which have been totally unresponsive.
> >...
> 
> If no action by us gets combined with automated weekly emails then
> no responses to the latter is not an unexpected event.
> 
> Such a submitter might be perfectly responsive to actual work on a bug 
> while really pissed off by getting the bug closed.
> 
> Look e.g. at #10865 that had a 1 month gap in submitter responses,
> but the actual problem is that noone of us ever bothered to look at
> this Oops...
> 
> I just did a run through all open 2.6.26-rc regressions, and I did not 
> find a single one where we seem to be waiting for some time for an 
> answer of the submitter. [1]

The following are my candidates:

10629
10786
10815
10906 (the thread has apparently died)
11009

Thanks,
Rafael
