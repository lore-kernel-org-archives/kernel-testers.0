From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: Re: [Bug #15624] [BUG] percpu misaligned allocation
Date: Thu, 8 Apr 2010 22:02:06 +0200
Message-ID: <201004082202.06306.rjw@sisk.pl>
References: <6Pphclm24fK.A.lSF.qsPvLB@chimera> <JVS2s9dmTsP.A.mnH.stPvLB@chimera> <20100407215926.GA10002@nowhere>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20100407215926.GA10002@nowhere>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: Frederic Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

On Wednesday 07 April 2010, Frederic Weisbecker wrote:
> On Wed, Apr 07, 2010 at 11:13:49PM +0200, Rafael J. Wysocki wrote:
> > This message has been generated automatically as a part of a summary report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.33.  Please verify if it still should be listed and let the tracking team
> > know (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15624
> > Subject		: [BUG] percpu misaligned allocation
> > Submitter	: Frederic Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
> > Date		: 2010-03-18 4:49 (21 days old)
> > Message-ID	: <20100318044930.GC5045@nowhere>
> > References	: http://marc.info/?l=linux-kernel&m=126888780031992&w=2
> 
> 
> This has been fixed with "eb1e79611cc9bfe21978230e3521e77ea2d7874a"
> (perf: Correctly align perf event tracing buffer).
> 
> The ticket can be closed, thanks!

Thanks, closing.

Rafael
