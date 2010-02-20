From: Lin Ming <ming.m.lin-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #15192] netperf ~50% regression with 2.6.33-rc1, bisect
 to 1b9508f
Date: Sat, 20 Feb 2010 15:52:57 +0800
Message-ID: <1266652377.3464.6.camel@minggr.sh.intel.com>
References: <vZZJKzCUn4G.A.CPB.F7hZLB@chimera>
	 <d3IDKWHT5gE.A.Z-B.V7hZLB@chimera>
	 <1265011447.6220.15.camel@marge.simson.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1265011447.6220.15.camel-YqMYhexLQo1vAv1Ojkdn7Q@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org

On Mon, 2010-02-01 at 16:04 +0800, Mike Galbraith wrote:
> On Mon, 2010-02-01 at 01:22 +0100, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.32.  Please verify if it still should be listed and let me know
> > (either way).
> 
> Yes, it should remain open.  We're currently waiting for some data from
> Lin Ming.  The regression itself isn't making much sense.. a kernel with
> NEWIDLE disabled should show the same performance, but does not.  

(sorry for late response, I'm just back from vacation)

We finally located this to a bug in mwait based C-state entry.
Venki's patch has fixed it.
http://patchwork.kernel.org/patch/78544/

Venki, this is the original report,
http://marc.info/?l=linux-kernel&m=126441481427331&w=4

Thanks,
Lin Ming
