From: Thomas Renninger <trenn-l3A5Bk7waGM@public.gmane.org>
Subject: Re: [patch 1/4] cpufreq: Eliminate the recent lockdep warnings in cpufreq
Date: Mon, 6 Jul 2009 13:19:20 +0200
Message-ID: <200907061319.22660.trenn@suse.de>
References: <20090703000829.735976000@intel.com> <200907031341.19141.trenn@suse.de> <7E82351C108FA840AB1866AC776AEC4669BFF050@orsmsx505.amr.corp.intel.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <7E82351C108FA840AB1866AC776AEC4669BFF050-osO9UTpF0URqS6EAlXoojrfspsVTdybXVpNB7YpNyf8@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Pallipadi, Venkatesh" <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Cc: Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Dave Young <hidave.darkstar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>

On Friday 03 July 2009 16:28:43 Pallipadi, Venkatesh wrote:
> 
...
> >I still do not see the need of "dbs_mutex protects data in 
> >dbs_tuners_ins
> >from concurrent changes", though. If someone enlightens me, that would
> >be appreciated.
> 
> OK. Consider these two happening in parallel.
> echo 0 > /sys/devices/system/cpu/cpu0/cpufreq/ondemand/ignore_nice
> echo 1 > /sys/devices/system/cpu/cpu4/cpufreq/ondemand/ignore_nice
Hm, I just consider parallel configuration, especially with different
values as a userspace bug anyway.

> As they are coming from different cpu, rwsem wont protect us and 
> without the dbs_mutex, end state after this can will be unpredictable.
> prev_cpu_idle and prev_cpu_nice can end up with wrong values where
> only one of them is set etc. That will affect the ondemand algorithm.
For one sample in this case.
But I see that it should be made 100%
bulletproof and even userspace is doing wrong things already you want to
have a defined state. A separate mutex, uncoupled from .governor() would make 
things easier, but I wait until it's clear what cleanups are going into which 
kernel and will suggest another cleanup to only allow
global dbs_tuners on top for .31 or further future.

Thanks,

    Thomas
