From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #12604] Commit 31a12666d8f0c22235297e1c1575f82061480029
 slows down Berkeley DB
Date: Wed, 11 Feb 2009 18:02:19 -0800 (PST)
Message-ID: <alpine.LFD.2.00.0902111757030.3189@localhost.localdomain>
References: <AIghyjFgMFP.A.uZD._10jJB@chimera> <sWhNs83kKPE.A.gUG.420jJB@chimera> <20090210162830.GD12146@placka.suse.cz> <20090212014718.GF30043@wotan.suse.de>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090212014718.GF30043-B4tOwbsTzaBolqkO4TVVkw@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Nick Piggin <npiggin-l3A5Bk7waGM@public.gmane.org>
Cc: Jan Kara <jack-AlSwsSmVLrQ@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Federico Cuello <fedux-yJigggV1mSdd+7ixHBZSzg@public.gmane.org>, Artem Bityutskiy <Artem.Bityutskiy-xNZwKgViW5gAvxtiuMwx3w@public.gmane.org>



On Thu, 12 Feb 2009, Nick Piggin wrote:

> On Tue, Feb 10, 2009 at 05:28:30PM +0100, Jan Kara wrote:
> > On Sun 08-02-09 20:21:42, Rafael J. Wysocki wrote:
> > > This message has been generated automatically as a part of a report
> > > of recent regressions.
> > > 
> > > The following bug entry is on the current list of known regressions
> > > from 2.6.28.  Please verify if it still should be listed and let me know
> > > (either way).
> >   Yes, I've verified with latest git and the regression is still there.
> 
> I'm working on this FWIW...

Shouldn't we just revert it? The code does look to be broken.

It also looks like the interaction with that ever-buggy "nr_to_write" 
thing are totally wrong. I can see that whole

	if (!cycled) {
		..
		index = 0;
		goto retry
	}

doing all the wrong things: if we ever hit the combination of 
"!cycled + nr_to-write==0", we're always screwed. It simply _cannot_ do 
the right thing.

I dunno. That whole piece-of-sh*t function has been incredibly buggy this 
release. The code is an unreadable mess, and I think that "cyclic" stuff 
is part of the reason for it being messy and buggy. Please convince me 
it's worth saving, or let me revert the whole stinking pile of crud?

Please?

			Linus
