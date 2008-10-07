From: Nick Piggin <nickpiggin@yahoo.com.au>
Subject: Re: [Bug #11224] Only three cores found on quad-core machine.
Date: Wed, 8 Oct 2008 02:18:18 +1100
Message-ID: <200810080218.18898.nickpiggin@yahoo.com.au>
References: <0pOgGB.A.uLG.E475IB@wind> <yWwteD.A.xUB.2875IB@wind>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1755304AbYJGPSg@vger.kernel.org>
In-Reply-To: <yWwteD.A.xUB.2875IB@wind>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Dave Jones <davej@redhat.com>

On Sunday 05 October 2008 04:32, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.26.  Please verify if it still should be listed and let me know
> (either way).
>
>
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11224
> Subject		: Only three cores found on quad-core machine.
> Submitter	: Dave Jones <davej@redhat.com>
> Date		: 2008-08-01 18:15 (65 days old)
> References	: http://marc.info/?l=linux-kernel&m=121761475224719&w=4

Dave, is your CPU2 getting stuck in calibrate_delay? Can you still
reproduce the bug? What if you boot the kernel with lpj=<something sane
like 2666785> in order to skip the calibrate_delay code?

If that helps, can you try adding some printks to narrow down where it
is getting stuck?
