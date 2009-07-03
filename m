From: Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>
Subject: Re: [patch 0/4] Take care of cpufreq lockdep issues (take 2)
Date: Fri, 3 Jul 2009 10:06:37 -0400
Message-ID: <20090703140637.GB10256@Krystal>
References: <20090703000829.735976000@intel.com> <20090703065427.GA32687@elte.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <20090703065427.GA32687-X9Un+BFzKDI@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Cc: venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Dave Young <hidave.darkstar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Thomas Renninger <trenn-l3A5Bk7waGM@public.gmane.org>

* Ingo Molnar (mingo-X9Un+BFzKDI@public.gmane.org) wrote:
> 
> * venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org> wrote:
> 
> > Since recent chanegs to ondemand and conservative governor, there 
> > have been multiple reports of lockdep issues in cpufreq. Patch 
> > series takes care of these problems.
> > 
> > This is the next attempt following the one here, which was not a 
> > complete fix. 
> > http://lkml.indiana.edu/hypermail/linux/kernel/0906.3/01073.html
> > 
> > I am currently running some stress tests to make sure there are no 
> > issues with these patches. But, wanted to send them out for 
> > review/comments/testing before I head out for the long weekend.
> > 
> > If this patchset seems sane, the first patch in the patchset 
> > should also get into 30.stable.
> 
> Btw., FYI, because my test-systems were frequently triggering those 
> bugs, i kept testing the following series from you and Mathieu in 
> -tip:
> 
>  ecf8b04: cpufreq: Define dbs_mutex purpose and cleanup its usage conservative gov
>  b08c597: cpufreq: Define dbs_mutex purpose and cleanup its usage
>  0807e30: cpufreq: remove rwsem lock from CPUFREQ_GOV_STOP call (second call site)
> 
> So that fix-series, while probably not complete (given that you sent 
> a v2 series), worked well in practice and gets my:
> 
>  Tested-by: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
> 
> Is the delta between this (tested) series and your v2 version 
> significant? If not it might make sense to shape it as a delta patch 
> to the v1 series, if that looks clean enough - to preserve testing 
> results.

The delta is very significant. The purpose of each lock changes quite a
bit. I'm preparing a patch serie that should just fix the problem
without significant locking semantic modification.

(not that I have time to do this, but I end up spending more time
looking at the proposed solutions than doing it..) ;)

Mathieu

> 
> 	Ingo
> 

-- 
Mathieu Desnoyers
OpenPGP key fingerprint: 8CD5 52C3 8E3C 4140 715F  BA06 3F25 A8FE 3BAE 9A68
