From: Nick Piggin <nickpiggin@yahoo.com.au>
Subject: Re: [Bug #11264] Invalid op opcode in kernel/workqueue
Date: Wed, 8 Oct 2008 02:23:03 +1100
Message-ID: <200810080223.03395.nickpiggin@yahoo.com.au>
References: <0pOgGB.A.uLG.E475IB@wind> <yWwteD.A.oLB.b875IB@wind>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755745AbYJGPXZ@vger.kernel.org>
In-Reply-To: <yWwteD.A.oLB.b875IB@wind>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>, davej@codemonkey.org.uk, oleg@tv-sign.ru
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Jean-Luc Coulon <jean.luc.coulon@gmail.com>

On Sunday 05 October 2008 04:32, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.26.  Please verify if it still should be listed and let me know
> (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11264
> Subject		: Invalid op opcode in kernel/workqueue
> Submitter	: Jean-Luc Coulon <jean.luc.coulon@gmail.com>
> Date		: 2008-08-07 04:18 (59 days old)

Any progress being made with this one? Dave, Oleg did some pretty
nice looking debugging work that indicates it might be a cpufreq
problem. Have you had a chance to look at the comments in the
bugzilla? Or have you been cc'ed on patches for this?

Thanks,
Nick
