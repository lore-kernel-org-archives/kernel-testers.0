From: Stefan Richter <stefanr-MtYdepGKPcBMYopoZt5u/LNAH6kLmebB@public.gmane.org>
Subject: Re: ohci1394_dma=early crash since 2.6.32 (was Re: [Bug #14487] PANIC:
 early exception 08 rip 246:10 error	ffffffff810251b5 cr2 0)
Date: Tue, 02 Feb 2010 07:55:17 +0100
Message-ID: <4B67CC55.40301@s5r6.in-berlin.de>
References: <UgwvXSBS_tM.A.alD.1EiZLB@chimera> <de962C6zBxL.A.H1G.1HiZLB@chimera> <4B6630CA.9010207@gmail.com> <20100201125441.GB2576@bicker> <4B671606.3080405@gmail.com> <4B673233.8000300@s5r6.in-berlin.de> <4B6740B5.5070601@gmail.com> <4B675534.5070107@s5r6.in-berlin.de> <4B676917.2080506@gmail.com> <4B67BC12.4080709@s5r6.in-berlin.de> <4B67C4D2.5050205@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <4B67C4D2.5050205-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Justin P. Mattock" <justinmattock-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Dan Carpenter <error27-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, linux1394-devel-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Justin P. Mattock wrote:
> As for anything changed in the kernel
> (2.6.31 - present), tough to say
> from what I remember I had created a new fresh
> lfs system using these CFLAGS:
> 
> CFLAGS="-mtune=core2 -march=core2 -O2 -pipe -fomit-frame-pointer"
> CXXFLAGS="${CFLAGS}" MAKEOPTS="{-j3}"
> (without -m option gcc defaults(I think)to -m32).
> 
> which booted with ohci1394_dma=early just fine.
> 
> then decided to build another lfs system with the same CFLAGS except
> added -m64 (pure64) to the build process.
> (then this showed up).
> 
> What I can try is do a git revert to 2.6.29/27 to see if this thing
> fires off(before going any further). if the system boots then do a bisect.

Do I understand correctly that at this moment it is only known that the
bug could be
  - *either* a 2.6.31 -> 2.6.32 regression
  - *or* an x86-64 specific bug that does not occur on x86-32,
right?

I have an Core 2 Duo based PC with x86-32 kernel and userland and an AMD
based x86-64 PC and could give ohci1394_dma=early a try on both (never
tested it myself before).  I could furthermore attempt to build and
install an x86-64 kernel on the Core 2 Duo PC but I am afraid I am far
too short of spare time for that.
-- 
Stefan Richter
-=====-==-=- --=- ---=-
http://arcgraph.de/sr/
