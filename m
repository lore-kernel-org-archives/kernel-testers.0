From: Jesse Barnes <jbarnes@virtuousgeek.org>
Subject: Re: [Bug #14670] i915: playing video via XVideo extension makes the
 screen flicker
Date: Wed, 27 Jan 2010 09:59:40 -0800
Message-ID: <20100127095940.07e205ba@jbarnes-piketon>
References: <pYFNu11z2aM.A.pJH.CZMXLB@chimera>
	<q60Z28d_9yH.A.fTB.-aMXLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755924Ab0A0R77@vger.kernel.org>
In-Reply-To: <q60Z28d_9yH.A.fTB.-aMXLB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Eric Anholt <eric@anholt.net>, Thomas Meyer <thomas@m3y3r.de>

On Sun, 24 Jan 2010 23:22:54 +0100 (CET)
"Rafael J. Wysocki" <rjw@sisk.pl> wrote:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.31 and 2.6.32.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.31 and 2.6.32.  Please verify if it still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14670
> Subject		: i915: playing video via XVideo extension makes the screen flicker
> Submitter	: Thomas Meyer <thomas@m3y3r.de>
> Date		: 2009-11-23 13:15 (63 days old)
> First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=b42d4c5c6a872815d711e5d51a600f5122c38eee
> References	: http://lkml.org/lkml/2010/1/11/150
> 

this one may also be fixed by David's patch if -rc5 doesn't already fix
it.

-- 
Jesse Barnes, Intel Open Source Technology Center
