From: Kevin Shanahan <kmshanah-biM/RbsGxha6c6uEtOJ/EA@public.gmane.org>
Subject: Re: [Bug #12465] KVM guests stalling on 2.6.28 (bisected)
Date: Fri, 27 Mar 2009 06:52:57 +1030
Message-ID: <1238098977.5406.5.camel@kulgan>
References: <qm8_cedJGaP.A.-NH.CPCvJB@chimera>
	 <1237107837.27699.27.camel@kulgan.wumi.org.au>
	 <49BE20B2.9070804@redhat.com> <1237207595.4964.31.camel@kulgan.wumi.org.au>
	 <20090316200736.GD8393@nowhere>
	 <1237244137.4964.54.camel@kulgan.wumi.org.au>
	 <20090318001955.GB5143@nowhere>
	 <1237338986.4801.11.camel@kulgan.wumi.org.au>
	 <1237411441.5211.5.camel@kulgan.wumi.org.au>
	 <1237611639.4933.4.camel@kulgan.wumi.org.au>
	 <20090324114409.GB6058@nowhere>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090324114409.GB6058@nowhere>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Frederic Weisbecker <fweisbec-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Cc: Avi Kivity <avi-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>

On Tue, 2009-03-24 at 12:44 +0100, Frederic Weisbecker wrote:
> As I explained in my previous mail, you trace is only
> a snapshot that happened in 10 msec.
> 
> I experimented different sizes for the ring buffer but even
> a 1 second trace require 20 Mo of memory. And a so huge trace
> would be impractical.
> 
> I think we should keep the trace filters we had previously.
> If you don't minde, could you please retest against latest -tip
> the following updated patch? Iadded the filters, fixed the python
> subshell and also flushed the buffer more nicely according to
> a recent feature in -tip:
> 
> echo > trace 
> 
> instead of switching to nop.
> You will need to pull latest -tip again.

Ok, new set of traces uploaded again here:

  http://disenchant.net/tmp/bug-12465/trace-4/

These were taken using 2.6.29-tip-02749-g398bf09.

Same as last time, it was only necessary to have the one guest running
to reproduce the problem.

Cheers,
Kevin.

