From: Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>
Subject: Re: [Bug #13058] First hibernation attempt fails
Date: Tue, 7 Apr 2009 10:06:32 +0200
Message-ID: <20090407080632.GG1408@ucw.cz>
References: <EJaiQ4Wfaz.A.3YG.4v85JB@chimera> <nY3-4PrO6XH.A.xtB.yw85JB@chimera> <20090417063007.GB4593@kernel.dk> <49E83DC4.8040207@tuffmail.co.uk> <20090417091321.GP4593@kernel.dk> <alpine.LFD.2.00.0904170813550.4042@localhost.localdomain>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.00.0904170813550.4042-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-3NddpPZAyC0@public.gmane.org>

Hi!

> And the thing is, swsusp_save() really does do odd things. For example, to 
> get rid of unnecessary memory, it does "drain_local_pages()", where the 
> "local" is "local cpu". Why does it do that? Likely nobody knows.

I do :-). atomic image copying needs to copy any and all used pages,
and needs to know beforehand how many to copy. local pages  are
strange in this area, so we just get rid of them to simplify stuff.

> For example, there is a magic "PAGES_FOR_IO" #define, which is somewhat 
> arbitrarily set to 4MB worth of pages. Where did that number come from? 
> Who knows? But that's the number the code uses for the _initial_
> check of 

I picked that up out of thin air. Intent there is to make sure small
(<100K, lets say) allocations will work during suspend.

> And the thing is, that "swsusp_shrink_memory()" is just full of 
> heuristics. There's no hard numbers there. It doesn't seem to wait for 
> writeout, it just does the equivalent of "shrink_list()" and 
> "shrink_slab()", but it seems to have been basically cribbed half-way 
> from the regular "try to free memory", without really doing it all.

akpm designed shrink_memory(). Long time ago it was just while (1)
kmalloc() loop. It should be waiting. Andrew?

> Just as an example: it does that "zone_is_all_unreclaimable()" logic that 
> expects kswapd to mark things reclaimable again, but it doesn't seem to 
> actually ever wait for kswapd or pdflush. It also seems to set 
> "swappiness" to zero etc. Maybe it's all intentional, but it does mean 
> that it uses some shared heuristics with the "real" VM, but uses them 
> differently.

									Pavel

-- 
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blog.html
