From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #11996] Tracing framework regression in 2.6.28-rc3
Date: Mon, 17 Nov 2008 10:36:14 +0100
Message-ID: <20081117093614.GI28786@elte.hu>
References: <VwdsQNEjR_C.A.CiD.9_FIJB@chimera> <Q7OAnAv0V3D.A.GwE.gAGIJB@chimera> <20081117003531.4c8b5679@daedalus.pq.iki.fi>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20081117003531.4c8b5679-cxYvVS3buNOdIgDiPM52R8c4bpwCjbIv@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Pekka Paalanen <pq-X3B1VOXEql0@public.gmane.org>
Cc: Steven Rostedt <rostedt-nx8X9YLhiw1AfugRpC6u6w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>


* Pekka Paalanen <pq-X3B1VOXEql0@public.gmane.org> wrote:

> On Sun, 16 Nov 2008 17:35:18 +0100 (CET)
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
> > Date		: 2008-11-09 10:13 (8 days old)
> > References	: http://marc.info/?l=linux-kernel&m=122624392229317&w=4
> > Handled-By	: Steven Rostedt <rostedt-nx8X9YLhiw1AfugRpC6u6w@public.gmane.org>
> 
> Steve, Ingo, did you get into an agreement on the patch? What should 
> I test?

the fix is queued up in tip/tracing/urgent, will send it to Linus 
today or tomorrow.

	Ingo
