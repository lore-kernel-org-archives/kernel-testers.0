From: David Woodhouse <dwmw2-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
Subject: RE: [Bug #15729] BUG: physmap modprobe & rmmod
Date: Tue, 04 May 2010 23:22:31 +0100
Message-ID: <1273011751.31892.5700.camel@macbook.infradead.org>
References: <JzEGxUyyQHG.A.ZtH.YHJ4LB@chimera>
	 <8VO9AsMlpMD.A.-m.4IJ4LB@chimera>
	 <0D753D10438DA54287A00B0270842697636EB83FB2@AUSP01VMBX24.collaborationhost.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <0D753D10438DA54287A00B0270842697636EB83FB2-gaq956PjLg32KbjnnMDalRurcAul1UnsRrxOEX5GOmysTnJN9+BGXg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: H Hartley Sweeten <hartleys-3FF4nKcrg1dE2c76skzGb0EOCMrvLtNR@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>

On Tue, 2010-05-04 at 17:15 -0500, H Hartley Sweeten wrote:
> On Tuesday, May 04, 2010 2:21 PM, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a summary report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.33.  Please verify if it still should be listed and let the tracking team
> > know (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15729
> > Subject		: BUG: physmap modprobe & rmmod
> > Submitter	: Randy Dunlap <randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
> > Date		: 2010-04-02 20:40 (33 days old)
> > Message-ID	: <20100402134058.c4682716.randy.dunlap-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
> > References	: http://marc.info/?l=linux-kernel&m=127024096210230&w=2
> > Handled-By	: Hartley Sweeten <hsweeten-3FF4nKcrg1dE2c76skzGb0EOCMrvLtNR@public.gmane.org>
> > Patch		: https://patchwork.kernel.org/patch/90497/
> 
> This patch is not yet in Linus' tree, it is in linux-next.  David?

Is it a regression? People have been configuring their kernel stupidly
and then acting surprised when it didn't work for _ages_... what's new?

-- 
dwmw2
