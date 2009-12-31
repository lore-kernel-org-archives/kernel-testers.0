From: Heiko Carstens <heiko.carstens-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>
Subject: Re: [Bug #14630] sched_rt_periodic_timer vs cpu hotplug
Date: Thu, 31 Dec 2009 10:59:37 +0100
Message-ID: <20091231095937.GA7098@osiris.boeblingen.de.ibm.com>
References: <oBElxfTZdhL.A.bx.-vhOLB@chimera>
 <1262104619.7135.161.camel@laptop>
 <20091230081800.GA4304@osiris.boeblingen.de.ibm.com>
 <200912302229.46223.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <200912302229.46223.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Greg KH <gregkh-l3A5Bk7waGM@public.gmane.org>, stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org

On Wed, Dec 30, 2009 at 10:29:46PM +0100, Rafael J. Wysocki wrote:
> On Wednesday 30 December 2009, Heiko Carstens wrote:
> > On Tue, Dec 29, 2009 at 05:36:59PM +0100, Peter Zijlstra wrote:
> > > On Tue, 2009-12-29 at 16:28 +0100, Rafael J. Wysocki wrote:
> > > > This message has been generated automatically as a part of a report
> > > > of regressions introduced between 2.6.31 and 2.6.32.
> > > > 
> > > > The following bug entry is on the current list of known regressions
> > > > introduced between 2.6.31 and 2.6.32.  Please verify if it still should
> > > > be listed and let me know (either way).
> > > > 
> > > > 
> > > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14630
> > > > Subject		: sched_rt_periodic_timer vs cpu hotplug
> > > > Submitter	: Heiko Carstens <heiko.carstens-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>
> > > > Date		: 2009-11-11 10:18 (49 days old)
> > > > References	: http://marc.info/?l=linux-kernel&m=125793470309588&w=4
> > > > Handled-By	: Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
> > > > Patch		: http://patchwork.kernel.org/patch/60250/
> > > 
> > > git branch -a --contains 047106ad
> > > 
> > > seems to suggest that this made it to Linus' tree.
> > 
> > Any chance to get this into -stable? Since it seems it got only merged
> > after 2.6.32.
> 
> Can you please send a notification to stable-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org (CC to Greg KH perhaps)?

Sure, here we go ;)
