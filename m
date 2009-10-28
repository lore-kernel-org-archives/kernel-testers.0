From: ebiederm@xmission.com (Eric W. Biederman)
Subject: Re: [Bug #14408] sysctl check failed
Date: Tue, 27 Oct 2009 20:56:29 -0700
Message-ID: <m1k4ygcgsy.fsf@fess.ebiederm.org>
References: <Sj-rRjx6TwF.A.djE.vqe5KB@chimera>
	<6dRYo8ss7vL.A.74F.Ore5KB@chimera>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1757325AbZJ1D4b@vger.kernel.org>
In-Reply-To: <6dRYo8ss7vL.A.74F.Ore5KB@chimera> (Rafael J. Wysocki's message of "Mon\, 26 Oct 2009 19\:55\:56 +0100 \(CET\)")
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Alexey Dobriyan <adobriyan@gmail.com>, Peter Teoh <htmldeveloper@gmail.com>, Andrew Morton <akpm@linux-foundation.org>

"Rafael J. Wysocki" <rjw@sisk.pl> writes:

> This message has been generated automatically as a part of a report
> of recent regressions.
>
> The following bug entry is on the current list of known regressions
> from 2.6.31.  Please verify if it still should be listed and let me know
> (either way).

I believe Andrew has the fix in the -mm tree.

This is a bug but not a regression as the sysctl_check code had this bug from
day one.

Eric
