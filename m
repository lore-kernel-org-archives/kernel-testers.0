From: Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: 2.6.26-rc9: Reported regressions from 2.6.25
Date: Mon, 7 Jul 2008 02:06:10 +0300
Message-ID: <20080706230610.GK21669@cs181140183.pp.htv.fi>
References: <Vu1KV8Wj_GP.A.qW.DzLcIB@albercik> <200807062002.46863.rjw@sisk.pl> <20080706182648.GE21669@cs181140183.pp.htv.fi> <200807062304.07443.rjw@sisk.pl> <20080706213214.GH21669@cs181140183.pp.htv.fi> <alpine.LFD.1.10.0807061443420.3016@woody.linux-foundation.org> <20080706221932.GJ21669@cs181140183.pp.htv.fi> <alpine.LFD.1.10.0807061524510.3016@woody.linux-foundation.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <alpine.LFD.1.10.0807061524510.3016-5CScLwifNT1QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maximilian Engelhardt <maxi-OwNUvPV92VfddJNmlsFzeA@public.gmane.org>, Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, "Paul E. McKenney" <paulmck-23VcF4HTsmIX0ybBhKVfKdBPR1lH4CV8@public.gmane.org>, James Bottomley <James.Bottomley-JuX6DAaQMKPCXq6kfMZ53/egYHeGw8Jk@public.gmane.org>, Domenico Andreoli <cavokz-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Sun, Jul 06, 2008 at 03:27:30PM -0700, Linus Torvalds wrote:
> 
> 
> On Mon, 7 Jul 2008, Adrian Bunk wrote:
> >
> > When did you tell me that maintainers should not or cannot be Cc'ed on 
> > regression reports?
> 
> That is not what I'm complaining about.

That is what I wrote in the part of my email you made this comment on.

> I'm complaining about the fact that you *always* argue against closing 
> bugreports.

I'm not always against closing bugs, and e.g. during the last years I've
closed at about 500 bugs in the kernel Bugzilla due to submitters having
vanished.

> You have argued against it for over a YEAR now. And every single time I 
> tell you that you are wrong, and exactly *why* you are wrong.
> 
> If a reporter doesn't respond to say "it's still open", it needs to be 
> closed. It doesn't matter one whit whether there has been developer action 
> on it or not. We cannot keep old reports open - it's a total waste for 
> developers to even _look_ at anything that is more than roughly a month 
> old and hasn't been verified to be still be an issue.

We only differ on whether a human should ask this question once before 
closing a bug or whether regular automated requests are enough.

E.g. although Andrew has't responded to Rafaels emails for nearly a 
month whether the slab corruption he reported is still present I 
wouldn't take this as a definitive indication that he won't answer when 
someone has a question. I'd bet Andrew will answer if a human asks him 
about the status of this regression.

A developer asking manually "Is this still present?" does cost nearly no 
time and gives the submitter a much better feeling than only automated 
emails and then a bug close.

> 			Linus

cu
Adrian

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed
