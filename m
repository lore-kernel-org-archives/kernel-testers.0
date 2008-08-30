From: David Witbrodt <dawitbro-rphTv4pjVZMJGwgDXS7ZQA@public.gmane.org>
Subject: Re: Linux 2.6.27-rc5: System boot regression caused by commit a2bd7274b47124d2fc4dfdb8c0591f545ba749dd
Date: Fri, 29 Aug 2008 23:58:39 -0700 (PDT)
Message-ID: <734251.73444.qm@web82102.mail.mud.yahoo.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Cc: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>


> > Sorry if I am interfering... just wanted to inject this data, in case
> > it's meaningful!
> 
> Yeah, nothing has changed yet for your case. What should change your case 
> is the thing Yinghai is working on with the "late add of e820 data to the 
> resource tree".

OK.


> His earlier version already worked for you, didn't it? We're really now 
> just finalizing details (in fact, "insert_resource_expand_to_fit()" is 
> just a helper function for a detail that may not even matter all that 
> much).

Yes, it worked fine!  :D

BTW, there was an individual who reported a regression back in May on the
very same commit.  I was not able to get him to participate in the process
of tracking this down, but he did (suddenly) write a post on his blog a
couple of days ago that he had success using some unspecified git tree HEAD.

I believe that was probably the patch that you have reverted, so once I
know that a new candidate is in place I will let him know on his blog and
see if I can talk him into trying it.  This has been a month-long quest
for me -- beginning on Aug. 4 -- and I can understand why he gave up in
May without resolving the issue.  It's too bad for all of us that he didn't
pursue it then, huh?


Thanks,
Dave W.
