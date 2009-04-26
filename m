From: Andi Kleen <andi@firstfloor.org>
Subject: Re: [Bug #13185] New x86 warning
Date: Sun, 26 Apr 2009 16:49:18 +0200
Message-ID: <20090426144918.GU13896@one.firstfloor.org>
References: <47KgT3nlbjD.A.lnB.jc48JB@chimera> <Fg2zLW93smL.A.07B.qc48JB@chimera> <20090426093103.GA19267@elte.hu>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755132AbZDZOpl@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20090426093103.GA19267@elte.hu>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ingo Molnar <mingo@elte.hu>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Andi Kleen <andi@firstfloor.org>, Jeff Garzik <jeff@garzik.org>, torvalds@osdl.org

> > Handled-By	: Andi Kleen <andi@firstfloor.org>
> > Patch		: http://patchwork.kernel.org/patch/19330/
> > 		  http://patchwork.kernel.org/patch/19406/
> 
> This patch regresses on older GCC versions 

I don't think that's correct. There's been a demonstration that some gcc
versions don't inline as many memcpy as without the patch, but
that's not necessarily a pessimization. In fact 64bit used 
the same gcc based memcpy forever and there's no indication that
the 64bit kernel runs slower than the 32bit kernel because 
of this (in fact I have some indications that the 64bit kernel
runs faster)

Also the general trend in the kernel is to inline less
things because it has been demonstrated many times that
the function call overhead isn't that great, so I don't
see why memcpy should be different from all other
functions in this regard.

What Linus asked for was a demonstration that there's
no catastrophic regression (as in no trivial cases inlined anymore)
and I think that was demonstrated by the numbers.

Also the patch definitely shrunk the kernel and at least the
standard wisdom is that for micro optimizations icache optimizations
are the most useful one. In this sense the patch was a improvement.

> and doesnt really address 
> the GCC false positive warning either, it just removes the inline 
> function that triggers the warning.

Interesting sophistry.

Yes of course the patch doesn't fix gcc -- the goal is to remove the warning 
message (and also quite some ugly obsolete code) from the kernel build, not 
fix gcc.

-Andi

-- 
ak@linux.intel.com -- Speaking for myself only.
