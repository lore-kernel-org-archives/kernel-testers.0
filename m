From: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>
Subject: Re: [Bug #14467] Linker errors on ia64 with NR_CPUS=4096
Date: Mon, 16 Nov 2009 23:55:22 +0100 (CET)
Message-ID: <alpine.LSU.2.00.0911162354140.15039@wotan.suse.de>
References: <GUZt44bIwCE.A.vLF.pSdALB@chimera> <xXQGFmujPl.A.KbH.ZTdALB@chimera>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <xXQGFmujPl.A.KbH.ZTdALB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Jeff Mahoney <jeffm-IBi9RG/b67k@public.gmane.org>, "Luck, Tony" <tony.luck-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>, Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, Tejun Heo <tj-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>

On Mon, 16 Nov 2009, Rafael J. Wysocki wrote:

> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.31.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14467
> Subject		: Linker errors on ia64 with NR_CPUS=4096
> Submitter	: Jeff Mahoney <jeffm-IBi9RG/b67k@public.gmane.org>
> Date		: 2009-10-18 22:28 (30 days old)
> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=34d76c41554a05425613d16efebb3069c4c545f0
> References	: http://marc.info/?l=linux-kernel&m=125590493116720&w=4

Fixed by the following two commits


commit 4a6cc4bd32e580722882115d4c8b964d732c11e4
Author: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>
Date:   Thu Oct 29 00:26:00 2009 +0900

    sched: move rq_weight data array out of .percpu

commit 403a91b1659cb149dbddc5885f892734ae4542d8
Author: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>
Date:   Thu Oct 29 00:25:59 2009 +0900

    percpu: allow pcpu_alloc() to be called with IRQs off

-- 
Jiri Kosina
SUSE Labs, Novell Inc.
