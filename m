From: Nigel Cunningham <ncunningham-VWkGxi2CTS+6c6uEtOJ/EA@public.gmane.org>
Subject: Re: 2.6.26-rc9: Reported regressions from 2.6.25
Date: Mon, 07 Jul 2008 09:11:11 +1000
Message-ID: <1215385871.29880.11.camel@nigel-laptop>
References: <Vu1KV8Wj_GP.A.qW.DzLcIB@albercik>
	 <200807062356.47908.rjw@sisk.pl> <487142BA.1080508@keyaccess.nl>
	 <200807070057.51663.rjw@sisk.pl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200807070057.51663.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Rene Herman <rene.herman-cENuUygGYd//D1n+0JDH9g@public.gmane.org>, Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maximilian Engelhardt <maxi-OwNUvPV92VfddJNmlsFzeA@public.gmane.org>, Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, "Paul E. McKenney" <paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, James Bottomley <James.Bottomley-JuX6DAaQMKPCXq6kfMZ53/egYHeGw8Jk@public.gmane.org>, Domenico Andreoli <cavokz-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

Hi Rafael etc.

On Mon, 2008-07-07 at 00:57 +0200, Rafael J. Wysocki wrote:
> On Monday, 7 of July 2008, Rene Herman wrote:
> > On 06-07-08 23:56, Rafael J. Wysocki wrote:
> > 
> > > BTW, the automated emails I'm sending are to let the reporters know
> > > that I'm interested in the current status of the bug.  They are free
> > > not to reply to them, but in that case I assume they don't really
> > > care whether or not I'm tracking the bugs they reported.
> > 
> > I did/do wonder by the way when I get them if I should be replying if 
> > the status is unchanged from my viewpoint...
> > 
> > I believe your automated emails say something like "please verify if 
> > this problem is still relevant" but don't spell out what do after you
> > verified that it is. It's sort of natural to take that as "I need to 
> > reply telling people it's fixed if it is but can remain silent if 
> > nothing changed".
> 
> The exact wording is
> 
> "The following bug entry is on the current list of known regressions
> from 2.6.25.  Please verify if it still should be listed."
> 
> > Being more explicit about liking a reporter to report "yes, nothing 
> > changed" would probably be good if that IS what's wanted.
> 
> Well, I can change it to
> 
> "Please verify if it still should be listed and let me know."
> 
> if that's better.
> 

I would suggest that you should assume it's still relevant until the
bugzilla entry gets closed. The person fixing the bug should be
responsible for modifying the report to say that a patch is available
and then has been merged (or for saying it's an invalid report etc).

This way, you're making the whole process less burdensome rather than
so.

Regards,

Nigel
