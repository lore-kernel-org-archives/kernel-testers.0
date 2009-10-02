From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #14133] WARNING: at arch/x86/kernel/smp.c:117 native_smp_send_reschedule
Date: Fri, 2 Oct 2009 19:21:28 +0200
Message-ID: <200910021921.28374.rjw@sisk.pl>
References: <3onW63eFtRF.A.xXH.oMTxKB@chimera> <1254466855.3531.6.camel@ht.satnam> <20091002073425.GA14918@kernel.dk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20091002073425.GA14918-tSWWG44O7X1aa/9Udqfwiw@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
Cc: Jaswinder Singh Rajput <jaswinder-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, =?iso-8859-1?q?Am=E9rico_Wang?= <xiyou.wangcong-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, x86 maintainers <x86-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>, Gautham R Shenoy <ego-xthvdsQ13ZrQT0dZR+AlfA@public.gmane.org>

On Friday 02 October 2009, Jens Axboe wrote:
> On Fri, Oct 02 2009, Jaswinder Singh Rajput wrote:
> > Hello Jens,
> > 
> > On Thu, 2009-10-01 at 21:55 +0200, Rafael J. Wysocki wrote:
> > > This message has been generated automatically as a part of a report
> > > of regressions introduced between 2.6.30 and 2.6.31.
> > > 
> > > The following bug entry is on the current list of known regressions
> > > introduced between 2.6.30 and 2.6.31.  Please verify if it still should
> > > be listed and let me know (either way).
> > > 
> > > 
> > > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14133
> > > Subject		: WARNING: at arch/x86/kernel/smp.c:117 native_smp_send_reschedule
> > > Submitter	: Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
> > > Date		: 2009-08-31 20:43 (32 days old)
> > > References	: http://marc.info/?l=linux-kernel&m=125175143918050&w=4
> > > 
> > > 
> > 
> > Are you still getting this warning in latest -tip. If yes, can you do
> > git bisect and specify the commit.
> 
> Nope, it seems to have disappeared.

OK, closed.

Thanks,
Rafael
