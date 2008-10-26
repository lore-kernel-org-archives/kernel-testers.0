From: Dave Chinner <david-FqsqvQoI3Ljby3iVrkZq2A@public.gmane.org>
Subject: Re: [Bug #11805] mounting XFS produces a segfault
Date: Sun, 26 Oct 2008 11:08:04 +1100
Message-ID: <20081026000804.GC11948@disturbed>
References: <nw2Y6lk-0lG.A.VUB.RV5AJB@chimera> <t1C3RWL0r7M.A.x6C.AW5AJB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <t1C3RWL0r7M.A.x6C.AW5AJB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Tiago Maluta <maluta_tiago-/E1597aS9LRfJ/NunPodnw@public.gmane.org>

On Sat, Oct 25, 2008 at 10:06:44PM +0200, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.27.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11805
> Subject		: mounting XFS produces a segfault
> Submitter	: Tiago Maluta <maluta_tiago-/E1597aS9LRfJ/NunPodnw@public.gmane.org>
> Date		: 2008-10-21 18:00 (5 days old)

Ah - this was reported as a 2.6.26 -> 2.6.27 regression, not a
.27->.28-rcX regression.

Even so, it's not obviously an XFS regression as the problem is
that alloc_pages(GFP_KERNEL) is the new failure on .27. The fact
that XFS never handled the allocation failure is not a new bug
or regression - it has never caught failures during log
allocation...

So really, if you want to look for a regression here, it is the
change of behaviour in the VM leading to a memory allocation failure
where it has never, ever previously failed...

Cheers,

Dave.
-- 
Dave Chinner
david-FqsqvQoI3Ljby3iVrkZq2A@public.gmane.org
