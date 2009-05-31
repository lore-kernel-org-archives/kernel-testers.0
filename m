From: Angel <angel-CPAcdlEyg76BYrYycbcsJg@public.gmane.org>
Subject: Re: [Bug #12947] r128: system hangs when X is started with DRI
 enabled
Date: Sun, 31 May 2009 10:52:27 +0200
Message-ID: <20090531105227.178e5397.angel@pearlgates.net>
References: <THxQaUP0K2D.A.QkF.UVbIKB@chimera>
	<PkPeJtNB3KO.A.CSH.sWbIKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <PkPeJtNB3KO.A.CSH.sWbIKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, DRI <dri-devel-5NWGOfrQmneRv+LV9MX5uipxlwaOVQ5f@public.gmane.org>, Jos van der Ende <seraph-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>, "venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org" <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

On Sat, 30 May 2009 21:55:34 +0200 (CEST)
"Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.28 and 2.6.29.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.28 and 2.6.29.  Please verify if it still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12947
> Subject		: r128: system hangs when X is started with DRI enabled
> Submitter	: Jos van der Ende <seraph-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>
> Date		: 2009-03-26 16:14 (66 days old)


We've found a working bug fix for 2.6.29 which I expect will be included in the next bug fix release. However, 2.6.30-rc[1-7] (which already includes this fix) introduced a new problem which we're still working on.

The bug fix in question is this one:
http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=42beefc00


-- 
Angel <angel-CPAcdlEyg76BYrYycbcsJg@public.gmane.org>
