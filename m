From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #12809] iozone regression with 2.6.29-rc6
Date: Mon, 6 Apr 2009 15:05:07 -0700 (PDT)
Message-ID: <alpine.LFD.2.00.0904061501470.7443@localhost.localdomain>
References: <n4io5wq70ZO.A.gzG.rFn2JB@chimera> <AsKNxFx2juN.A.41._Gn2JB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <AsKNxFx2juN.A.41._Gn2JB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andrew Morton <akpm-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Lin Ming <ming.m.lin-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Nick Piggin <npiggin-l3A5Bk7waGM@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, Wu Fengguang <fengguang.wu-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>



On Mon, 6 Apr 2009, Rafael J. Wysocki wrote:
>
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.28.  Please verify if it still should be listed and let me know
> (either way).
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12809

Hmm. I applied the commit that should fix it, but I applied it _after_ 
2.6.29. I was too scared to apply it late in the -rc and quite frankly 
I'm not sure we should necessarily back-port it.

So I'm hoping that we can close it as "fixed", even though 2.6.29 will 
have that particular regression - for those particular machines. It is, 
after all, just a "where do we draw the line" kind of issue.

But I won't close it myself, and I leave it to others to argue whether it 
really maybe should be back-ported after all.

			Linus
