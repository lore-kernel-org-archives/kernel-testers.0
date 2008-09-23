From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #11543] kernel panic: softlockup in tick_periodic() ???
Date: Tue, 23 Sep 2008 15:52:40 +0200
Message-ID: <200809231552.41464.rjw@sisk.pl>
References: <PJz8fNrJNHG.A.65F.wzq1IB@albercik> <7lIhZC4hCxE.A.zJH.p0q1IB@albercik> <alpine.LFD.1.10.0809231244190.3247@apollo.tec.linutronix.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <alpine.LFD.1.10.0809231244190.3247-dbfLifZv8x0yMciVaGeJ0d53zsg1cpMQ@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Cyrill Gorcunov <gorcunov-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Joshua Hoblitt <j_kernel-amK9oZtvyLhBDgjK7y7TUQ@public.gmane.org>

On Tuesday, 23 of September 2008, Thomas Gleixner wrote:
> On Sun, 21 Sep 2008, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.26.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11543
> > Subject		: kernel panic: softlockup in tick_periodic() ???
> 
> The softlockup issue itself is fixed, but there are issues with
> nmi_watchdog. I think we should remove the regression and keep the bug
> alive to chase the other issues.

Well, for the sake of documentation I'd prefer to close this bug and create a
new non-regression one for the other issues if that's not a problem.

Thanks,
Rafael
