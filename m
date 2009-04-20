From: Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>
Subject: Re: [Bug #13058] First hibernation attempt fails
Date: Mon, 20 Apr 2009 21:53:06 +0200
Message-ID: <20090420195306.GA3299@elf.ucw.cz>
References: <EJaiQ4Wfaz.A.3YG.4v85JB@chimera> <nY3-4PrO6XH.A.xtB.yw85JB@chimera> <20090417063007.GB4593@kernel.dk> <49E83DC4.8040207@tuffmail.co.uk> <20090417091321.GP4593@kernel.dk> <alpine.LFD.2.00.0904170813550.4042@localhost.localdomain> <20090407080632.GG1408@ucw.cz> <20090420122044.7ea6cc15.akpm@linux-foundation.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20090420122044.7ea6cc15.akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org, jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org, alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org, rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org

Hi!

> > > And the thing is, that "swsusp_shrink_memory()" is just full of 
> > > heuristics. There's no hard numbers there. It doesn't seem to wait for 
> > > writeout, it just does the equivalent of "shrink_list()" and 
> > > "shrink_slab()", but it seems to have been basically cribbed half-way 
> > > from the regular "try to free memory", without really doing it all.
> > 
> > akpm designed shrink_memory(). Long time ago it was just while (1)
> > kmalloc() loop. It should be waiting. Andrew?
> 
> I always wanted the thing to just allocate all the memory which it
> needed and then to either return it all to the caller or free it all
> again for the caller to reallocate (preferably the former).

We need half of memory free for swsusp to work. If we "just allocate"
it, we will trigger OOM killer; we'd prefer to fail suspend than to
OOM kill.

> But for some reason which I don't recall (Pavel provided it, iirc)
> that

Alas, I do not remember that clearly.

> doesn't work.  So the current (and subsequently tweaked) scheme was put
> in there instead.  It turned out to be surprisingly difficult and ugly
> to graft it in top of the existing page reclaim code, and various
> changes were subsequently made to make it sort-of-work.
> 
> Remind me: why can't we just allocate N pages at suspend-time?

We need half of memory free. The reason we can't "just allocate" is
probably OOM killer; but my memories are quite weak :-(.
									Pavel
-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html
