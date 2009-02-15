From: Damien Wyart <damien.wyart@free.fr>
Subject: Re: [Bug #12650] Strange load average and ksoftirqd behavior with
	2.6.29-rc2-git1
Date: Sun, 15 Feb 2009 09:09:41 +0100
Message-ID: <20090215080941.GA2295@localhost.localdomain>
References: <juADNmcceYF.A.mdD.Mr0lJB@chimera> <rjPbZ5GRJPO.A.1kE.ur0lJB@chimera>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1754043AbZBOIL3@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <rjPbZ5GRJPO.A.1kE.ur0lJB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>

Hello,

> The following bug entry is on the current list of known regressions
> from 2.6.28.  Please verify if it still should be listed and let me know
> (either way).

> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12650
> Subject		: Strange load average and ksoftirqd behavior with 2.6.29-rc2-git1
> Submitter	: Damien Wyart <damien.wyart@free.fr>
> Date		: 2009-01-20 16:25 (26 days old)
> References	: http://marc.info/?l=linux-kernel&m=123246937207675&w=2

The problem is still there in 2.6.29-rc5, nothing has changed. I am
surprised noone has looked at it as it is trivial to reproduce for me.

Load average is between 0.30 and 0.60 when the machine is idle, the two
ksoftirqd threads get a very high total running time in top. This is on
a P4 machine. On a recent laptop, the load is not as high, but the
ksoftirqd threads also get a very high total running time.

-- 
Damien Wyart
