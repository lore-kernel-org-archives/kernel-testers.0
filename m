From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: 2.6.27-rc4-git1: Reported regressions from 2.6.26
Date: Sun, 24 Aug 2008 17:51:57 -0700 (PDT)
Message-ID: <alpine.LFD.1.10.0808241734400.3363@nehalem.linux-foundation.org>
References: <mzBsPw3QUOF.A.87F.wZGsIB@albercik> <alpine.LFD.1.10.0808241030060.3363@nehalem.linux-foundation.org> <48B1B526.2030100@dgreaves.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <48B1B526.2030100-FQ/kcb21CSxWk0Htik3J/w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: David Greaves <david-FQ/kcb21CSxWk0Htik3J/w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>



On Sun, 24 Aug 2008, David Greaves wrote:
> 
> Given that I'll manage at best 1 bisect/day with a reasonable chance of data
> corruption and hardware intermittency screwing it all up I thought it best to
> ask first in case there was another debug approach that could work.

Well, regardless, I think it would be good to fill in the hardware info, 
especially wrt CPU data and the exact SATA controller you have.

There's another regression for SATA cold/hot boot issues, and while that 
one looks very different, and is probably not really related, it's still a 
good idea to try to see if we can match them up. See

	Bug-Entry       : http://bugzilla.kernel.org/show_bug.cgi?id=11343
	Subject         : SATA Cold Boot Problems with 2.6.27-rc[23] on nVidia 680i
	Submitter       : Manny Maxwell <mannymax-7UBucS1kxs3k1uMJSBkQmQ@public.gmane.org>
	Date            : 2008-08-14 4:16 (10 days old)
	References      : http://marc.info/?l=linux-kernel&m=121868782917600&w=4

which actually has a patch, and which seems to work fine in 2.6.26 (so not 
only is failure pattern different, the point were it starts is different). 

But regardless of the big differences, it does seem to point to some 
weakness in SATA initialization. But is it limited to _that_ particular 
SATA controller, or just a few ones? Or a generic issue? Without more 
reports to really find a pattern, I don't think we have a clue, and the 
two may be _totally_ unrelated in all ways, but it would be good to at 
least report and log the information you have..

Oh, I just noticed that your dmesg _does_ mention sata_sil and sata_via, 
so we know which of two drivers it would be, at least. Not the nVidia one.

However, there's been tons of changes in soem core functions: both the 
reset handling and the wait-for-ready has changed and caused lots of churn 
across most drivers in between 2.6.25 and 2.6.26. 

> PS if anyone really is interested then I am happy to try the bisection once I've
> moved her to a new box; otherwise I'm happy to close this.

I think it would be good to try to bisect. It could be something that is 
really just limited to that particular machine (maybe it really is some 
flaky hardware that just triggers some timing changes), but more likely it 
isn't. So the more information, the better. So keep the thing open as long 
as somebody is willing to try to gather more info, by all means.

		Linus
