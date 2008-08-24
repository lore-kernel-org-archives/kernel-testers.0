From: David Greaves <david-FQ/kcb21CSxWk0Htik3J/w@public.gmane.org>
Subject: Re: 2.6.27-rc4-git1: Reported regressions from 2.6.26
Date: Sun, 24 Aug 2008 20:23:18 +0100
Message-ID: <48B1B526.2030100@dgreaves.com>
References: <mzBsPw3QUOF.A.87F.wZGsIB@albercik> <alpine.LFD.1.10.0808241030060.3363@nehalem.linux-foundation.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.1.10.0808241030060.3363-nfNrOhbfy2R17+2ddN/4kux8cNe9sq/dYPYVAmT7z5s@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Adrian Bunk <bunk-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Natalie Protasevich <protasnb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Linus Torvalds wrote:
> 
> On Sat, 23 Aug 2008, Rafael J. Wysocki wrote:
>> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11405
>> Subject		: 2.6.27-rc3 segfault on cold boot; not on warm boot.
>> Submitter	: David Greaves <david-FQ/kcb21CSxWk0Htik3J/w@public.gmane.org>
>> Date		: 2008-08-21 9:45 (3 days old)
>> References	: http://marc.info/?l=linux-kernel&m=121931198904777&w=4
> 
> It would be good to have some kind of bisection of this one, because it 
> looks pretty odd. Also, google doesn't find anybody else seeing that 
> "segfault at ffffffbf", even though it seems to be very consistent for 
> David. So I don't think we'll be able to even _guess_ where it is without 
> some more information about exactly when it started happening.
> 
> Since it's present in 2.6.26 too, it's clearly not a regression from that 
> one, but perhaps more importantly, since it's apparently an old one I'd 
> have expected more reports like this if it was some common problem. And 
> the warm-vs-cold-boot thing makes me think it's some hardware setup issue.
> 
> Possibly the disk controller, possibly the CPU (eg some MTRR/PAT 
> setup issue or TLB thing). But the dmesg's are all from late enough at 
> boot that I can't even tell what disk controller it is (except that it is 
> SATA), nor can I tell what CPU it is.
> 
> But again, if it was some MTRR/PAT issue, I'd expect a _lot_ more reports 
> of this. 

OK, that all makes sense.

Given that I'll manage at best 1 bisect/day with a reasonable chance of data
corruption and hardware intermittency screwing it all up I thought it best to
ask first in case there was another debug approach that could work. However
since it does indeed sounds somewhat hardware related and it's an isolated
problem for my wife (as opposed to a problem that others are having too) then I
think she deserves a new machine...

Thanks for the impetus to cheer her up ;)

David
PS if anyone really is interested then I am happy to try the bisection once I've
moved her to a new box; otherwise I'm happy to close this.
