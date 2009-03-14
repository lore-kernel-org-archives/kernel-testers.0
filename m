From: David Miller <davem-fT/PcQaiUtIeIZ0/mPfg9Q@public.gmane.org>
Subject: Re: [Bug #12869] BUG when disabled ipv6 module is unloaded
Date: Sat, 14 Mar 2009 15:05:52 -0700 (PDT)
Message-ID: <20090314.150552.239936272.davem@davemloft.net>
References: <MiincthRUSI.A.eKC.F4BvJB@chimera>
	<GCLaknAim2M.A.DjC.O4BvJB@chimera>
	<49BC29FA.1060308@mandriva.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <49BC29FA.1060308-4qZELD6Fgxhg9hUCZPvPmw@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: tmb-4qZELD6Fgxhg9hUCZPvPmw@public.gmane.org
Cc: rjw-KKrjLPT3xs0@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, john.dykstra1-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org

From: Thomas Backlund <tmb-4qZELD6Fgxhg9hUCZPvPmw@public.gmane.org>
Date: Sun, 15 Mar 2009 00:04:42 +0200

> Rafael J. Wysocki skrev:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > The following bug entry is on the current list of known regressions
> > from 2.6.28.  Please verify if it still should be listed and let me know
> > (either way).
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12869
> > Subject		: BUG when disabled ipv6 module is unloaded
> > Submitter	: Thomas Backlund <tmb-4qZELD6Fgxhg9hUCZPvPmw@public.gmane.org>
> > Date		: 2009-03-10 20:15 (5 days old)
> > References	: http://marc.info/?l=linux-kernel&m=123671614621097&w=4
> > Handled-By	: John Dykstra <john.dykstra1-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Patch		: http://marc.info/?l=linux-kernel&m=123672746905127&w=4
> > 
> 
> Yeah, sorry for the delay testing it...
> 
> I confirm the bug is fixed with the above patch...

Yes and that patch will be on it's way to Linus from the
net-2.6 tree shortly.
