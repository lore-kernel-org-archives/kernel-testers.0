From: Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [Bug #12404] Oops in 2.6.28-rc9 and -rc8 -- mtrr issues /
 e1000e
Date: Wed, 14 Jan 2009 14:56:03 +0100 (CET)
Message-ID: <alpine.LFD.2.00.0901141450550.3598@localhost.localdomain>
References: <nn3SOLVZ28H.A.bY.CafaJB@chimera> <nHCfeC0YLrE.A.tkB.dafaJB@chimera>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1758667AbZANN4f@vger.kernel.org>
In-Reply-To: <nHCfeC0YLrE.A.tkB.dafaJB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Kernel <kernel@bazarnic.net>, Venkatesch Pallipadi <venkatesh.pallipadi@intel.com>, Yinghai Lu <yhlu.kernel@gmail.com>

On Sun, 11 Jan 2009, Rafael J. Wysocki wrote:

> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.27 and 2.6.28.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.27 and 2.6.28.  Please verify if it still should
> be listed and let me know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12404
> Subject		: Oops in 2.6.28-rc9 and -rc8 -- mtrr issues / e1000e
> Submitter	: Kernel <kernel@bazarnic.net>
> Date		: 2008-12-22 9:37 (21 days old)
> References	: http://marc.info/?l=linux-kernel&m=122993873320150&w=4

@Raphael: 
	  not a regression:
> Btw, I get the same crashes in 2.6.27.6 and 2.6.27.9 as well.

@Doug: 
       can you please boot with "nopat" on the kernel command line.

@Yinghai, Venki: 
	  can you please have a look at the mtrr messages? The
	  kernel warning is not very informative.

Thanks,

	tglx
