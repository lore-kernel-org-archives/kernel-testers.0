From: Thomas Backlund <tmb@mandriva.org>
Subject: Re: [Bug #12869] BUG when disabled ipv6 module is unloaded
Date: Sun, 15 Mar 2009 00:04:42 +0200
Message-ID: <49BC29FA.1060308@mandriva.org>
References: <MiincthRUSI.A.eKC.F4BvJB@chimera> <GCLaknAim2M.A.DjC.O4BvJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1760111AbZCNWFL@vger.kernel.org>
In-Reply-To: <GCLaknAim2M.A.DjC.O4BvJB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, John Dykstra <john.dykstra1@gmail.com>

Rafael J. Wysocki skrev:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.28.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12869
> Subject		: BUG when disabled ipv6 module is unloaded
> Submitter	: Thomas Backlund <tmb@mandriva.org>
> Date		: 2009-03-10 20:15 (5 days old)
> References	: http://marc.info/?l=linux-kernel&m=123671614621097&w=4
> Handled-By	: John Dykstra <john.dykstra1@gmail.com>
> Patch		: http://marc.info/?l=linux-kernel&m=123672746905127&w=4
> 
> 

Yeah, sorry for the delay testing it...

I confirm the bug is fixed with the above patch...

--
Thomas
