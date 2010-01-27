From: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Subject: Re: [Bug #14657] perf subsystem breakage in 2.6.32-rc7
Date: Wed, 27 Jan 2010 14:00:13 +0100
Message-ID: <20100127130013.GA16698@elte.hu>
References: <pYFNu11z2aM.A.pJH.CZMXLB@chimera>
 <q60Z28d_9yH.A._eB.HbMXLB@chimera>
 <84144f021001270441t75441bebpc605ac8c0cfedbd1@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <84144f021001270441t75441bebpc605ac8c0cfedbd1-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>
Cc: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Arjan van de Ven <arjan-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, Peter Zijlstra <peterz-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>, Thomas Gleixner <tglx-hfZtesqFncYOwBW4kG4KsQ@public.gmane.org>, Arnaldo Carvalho de Melo <acme-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>


* Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org> wrote:

> (I am CC'ing some more perf folks.)
> 
> On Mon, Jan 25, 2010 at 12:22 AM, Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org> wrote:
> > This message has been generated automatically as a part of a report
> > of regressions introduced between 2.6.31 and 2.6.32.
> >
> > The following bug entry is on the current list of known regressions
> > introduced between 2.6.31 and 2.6.32. ?Please verify if it still should
> > be listed and let me know (either way).
> >
> > Bug-Entry ? ? ? : http://bugzilla.kernel.org/show_bug.cgi?id=14657
> > Subject ? ? ? ? : perf subsystem breakage in 2.6.32-rc7
> > Submitter ? ? ? : Arjan van de Ven <arjan-wEGCiKHe2LqWVfeAwA7xHQ@public.gmane.org>
> > Date ? ? ? ? ? ?: 2009-11-19 19:50 (67 days old)
> > References ? ? ?: http://marc.info/?l=linux-kernel&m=125866013419738&w=4
> 
> Is this bug still valid?

Ought to be fixed by:

 8f06d7e: perf timechart: Use tid not pid for COMM change

But i'd like Arjan to confirm this before we can strike this from the list of 
regressions.

	Ingo
