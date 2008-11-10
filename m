From: James Bottomley <James.Bottomley-d9PhHud1JfjCXq6kfMZ53/egYHeGw8Jk@public.gmane.org>
Subject: Re: [Bug #11830] disk statistics issue in 2.6.27
Date: Sun, 09 Nov 2008 18:13:58 -0600
Message-ID: <1226276038.19841.34.camel@localhost.localdomain>
References: <A3oCZU7cpuO.A.ChB.ZZ1FJB@chimera>
	 <4B0Eqx89uNG.A.-PC.tZ1FJB@chimera>
	 <1226274573.6979.1.camel@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1226274573.6979.1.camel-bi+AKbBUZKY6gyzm1THtWbp2dZbC/Bob@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Miquel van Smoorenburg <mikevs-qWit8jRvyhWsTnJN9+BGXg@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>

On Mon, 2008-11-10 at 00:49 +0100, Miquel van Smoorenburg wrote:
> On Sun, 2008-11-09 at 20:43 +0100, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.26 and 2.6.27.
> > 
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.26 and 2.6.27.  Please verify if it still should
> > be listed and let me know (either way).
> 
> The cause has been found - a bug in the dpt_i2o driver that was hidden
> until 2.6.27.
> 
> I've submitted a patch for 2.6.28 which will be included in the next
> -rc, at which point I will submit it for 2.6.27-stable as well.

Actually, that's not quite the way it works anymore.  As long as the
patch is similar for both trees, the way it's done now is to tag stable
patches with cc: Stable Tree <stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org> so they have automatic
notifies to the stable tree.

I'm assuming this patch should be so tagged?

James

