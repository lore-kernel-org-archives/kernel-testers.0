From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: Linux 2.6.27-rc5: System boot regression caused by commit
 a2bd7274b47124d2fc4dfdb8c0591f545ba749dd
Date: Fri, 29 Aug 2008 18:11:41 -0700 (PDT)
Message-ID: <alpine.LFD.1.10.0808291751480.3300@nehalem.linux-foundation.org>
References: <alpine.LFD.1.10.0808281555230.3300@nehalem.linux-foundation.org>  <200808292157.24179.rjw@sisk.pl>  <86802c440808291413t4f31993fmba59a65aefd906ca@mail.gmail.com>  <200808300031.16708.rjw@sisk.pl>  <86802c440808291624t2bd0229w2da36dfc6c794b18@mail.gmail.com>
  <alpine.LFD.1.10.0808291704070.3300@nehalem.linux-foundation.org> <86802c440808291711t32d3e76dsf804856b0a8f4939@mail.gmail.com> <alpine.LFD.1.10.0808291733260.3300@nehalem.linux-foundation.org>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.1.10.0808291733260.3300-nfNrOhbfy2R17+2ddN/4kux8cNe9sq/dYPYVAmT7z5s@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Yinghai Lu <yhlu.kernel-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jeff Garzik <jeff-o2qLIJkoznsdnm+yROfE0A@public.gmane.org>, Tejun Heo <htejun-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, David Witbrodt <dawitbro-rphTv4pjVZMJGwgDXS7ZQA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Kernel Testers <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>



Btw, what was the original regression that commit was 
a2bd7274b47124d2fc4dfdb8c0591f545ba749dd trying to fix?

It's not listed in that commit, even though the commit has a "Bisected-by: 
David Witbrodt <dawitbro-rphTv4pjVZMJGwgDXS7ZQA@public.gmane.org>".

In fact, I can find it with google by searching for

	David Witbrodt bisect

and I see that it is 3def3d6ddf43dbe20c00c3cbc38dfacc8586998f.

I'm wondering why that commit wasn't just reverted? Because now that I see 
it, I notice that _that_ is the real bug to begin with.

That commit really was buggy. NO WAY can you insert the code/bss/data 
resources before you've done e820 handling, because it may well be that 
some strange e820 table contains things that cross the resources.

So that original thing was buggy, and made x86-64 do odd thigns. They were 
doubly odd, since x86-32 did it differently (and better, I think).

Then, when actally doing the common arch/x86/kernel/setup.c, the commit 
that does so _claims_ that the common code came from the 32-bit version, 
but that doesn't seem to be true, at least wrt this thing. The current 
setup.c comes from the *broken* cleanup of setup_64.c that had been 
bisected to be broken.

And that, in turn, happened in 41c094fd3ca54f1a71233049cf136ff94c91f4ae 
("x86: move e820_resource_resources to e820.c") which also did "and make 
32-bit resource registration more like 64 bit.", so it got the bug into 
32-bit code that had been introduced in 64-bit code.

Ugh.

So why was then that other broken commit added to paper it over, even 
though the original broken commit had been bisected and the breakage was 
known to have been due to _that_?

Hmm?

Yinghai - I'm hoping that the code movement is all over and done with, but 
you need to be a _lot_ more careful here. And Ingo, this really wasn't 
very well done.

			Linus
