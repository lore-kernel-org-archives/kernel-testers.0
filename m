From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #11996] Tracing framework regression in 2.6.28-rc3
Date: Sun, 23 Nov 2008 14:14:49 +0100
Message-ID: <20081123131449.GC1178@elte.hu>
References: <sBqd4qMeLzC.A.mgB.B7HKJB@chimera> <vyitTh0pP2N.A.-hC.u7HKJB@chimera> <20081123151258.2e5ed008@daedalus.pq.iki.fi>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20081123151258.2e5ed008-cxYvVS3buNOdIgDiPM52R8c4bpwCjbIv@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Pekka Paalanen <pq-X3B1VOXEql0@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Steven Rostedt <rostedt-nx8X9YLhiw1AfugRpC6u6w@public.gmane.org>


* Pekka Paalanen <pq-X3B1VOXEql0@public.gmane.org> wrote:

> On Sat, 22 Nov 2008 21:28:17 +0100 (CET)
> "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> 
> > This message has been generated automatically as a part of a report
> > of recent regressions.
> > 
> > The following bug entry is on the current list of known regressions
> > from 2.6.27.  Please verify if it still should be listed and let me know
> > (either way).
> > 
> > 
> > Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11996
> > Subject		: Tracing framework regression in 2.6.28-rc3
> > Submitter	: Pekka Paalanen <pq-X3B1VOXEql0@public.gmane.org>
> > Date		: 2008-11-09 10:13 (14 days old)
> > References	: http://marc.info/?l=linux-kernel&m=122624392229317&w=4
> > Handled-By	: Steven Rostedt <rostedt-nx8X9YLhiw1AfugRpC6u6w@public.gmane.org>
> 
> Tested 2.6.28-rc6, this bug is fixed.

via:

commit ee51a1de7e3837577412be269e0100038068e691
Author: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Date:   Thu Nov 13 14:58:31 2008 +0100

    tracing: fix mmiotrace resizing crash
    
    Pekka reported a crash when resizing the mmiotrace tracer (if only
    mmiotrace is enabled).
    
    This happens because in that case we do not allocate the max buffer,
    but we try to use it.
    
    Make ring_buffer_resize() idempotent against NULL buffers.
    
    Reported-by: Pekka Paalanen <pq-X3B1VOXEql0@public.gmane.org>
    Signed-off-by: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

	Ingo
