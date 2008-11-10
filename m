From: Miquel van Smoorenburg <mikevs@xs4all.net>
Subject: Re: [Bug #11830] disk statistics issue in 2.6.27
Date: Mon, 10 Nov 2008 01:19:02 +0100
Message-ID: <1226276342.6979.3.camel@localhost.localdomain>
References: <A3oCZU7cpuO.A.ChB.ZZ1FJB@chimera>
	 <4B0Eqx89uNG.A.-PC.tZ1FJB@chimera>
	 <1226274573.6979.1.camel@localhost.localdomain>
	 <1226276038.19841.34.camel@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1757324AbYKJAUZ@vger.kernel.org>
In-Reply-To: <1226276038.19841.34.camel@localhost.localdomain>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: James Bottomley <James.Bottomley@HansenPartnership.com>
Cc: "Rafael J. Wysocki" <rjw@sisk.pl>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Jens Axboe <jens.axboe@oracle.com>

On Sun, 2008-11-09 at 18:13 -0600, James Bottomley wrote:
> On Mon, 2008-11-10 at 00:49 +0100, Miquel van Smoorenburg wrote:
> > On Sun, 2008-11-09 at 20:43 +0100, Rafael J. Wysocki wrote:
> > > This message has been generated automatically as a part of a report
> > > of regressions introduced between 2.6.26 and 2.6.27.
> > > 
> > > The following bug entry is on the current list of known regressions
> > > introduced between 2.6.26 and 2.6.27.  Please verify if it still should
> > > be listed and let me know (either way).
> > 
> > The cause has been found - a bug in the dpt_i2o driver that was hidden
> > until 2.6.27.
> > 
> > I've submitted a patch for 2.6.28 which will be included in the next
> > -rc, at which point I will submit it for 2.6.27-stable as well.
> 
> Actually, that's not quite the way it works anymore.  As long as the
> patch is similar for both trees, the way it's done now is to tag stable
> patches with cc: Stable Tree <stable@kernel.org> so they have automatic
> notifies to the stable tree.

Oh OK, I did not know that. The patch applies indeed to .27 and .28 .

> I'm assuming this patch should be so tagged?

Yes, thank you.

Mike.
