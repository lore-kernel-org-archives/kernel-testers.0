From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #12020] scsi_times_out NULL pointer dereference
Date: Sun, 7 Dec 2008 21:22:20 +0100
Message-ID: <200812072122.20828.rjw@sisk.pl>
References: <QFIA5HSHV8B.A.2aG.hoxNJB@chimera> <bfPM5B8Tx2B.A.Ia.hpxNJB@chimera> <1228349648.5551.98.camel@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1228349648.5551.98.camel-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: James Bottomley <James.Bottomley-JuX6DAaQMKPCXq6kfMZ53/egYHeGw8Jk@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Bernd Schubert <bs-PKu+Ek1N2UGzQB+pC5nmwQ@public.gmane.org>

On Thursday, 4 of December 2008, James Bottomley wrote:
> On Wed, 2008-12-03 at 22:57 +0100, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.27.  Please verify if it still should be listed and let me know
> > (either way).
> 
> That's a hard call.  We think this might be fixed by Tejun's block timer
> patch, but the reporter has been unable to reproduce the problem (with
> or without the timer patch).
> 
> Perhaps list as closed for now and reopen if we get another problem
> report with kernels containing the block timer patch?

I closed it as unreproducible on the basis of the last Bugzilla comment.

Thanks,
Rafael
