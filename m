From: "Pallipadi, Venkatesh" <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Subject: Re: [patch 0/4] Take care of cpufreq lockdep issues (take 2)
Date: Mon, 06 Jul 2009 11:52:37 -0700
Message-ID: <1246906357.11545.49.camel@localhost.localdomain>
References: <20090703000829.735976000@intel.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <20090703000829.735976000-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Cc: "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Dave Young <hidave.darkstar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>, Thomas Renninger <trenn-l3A5Bk7waGM@public.gmane.org>

On Thu, 2009-07-02 at 17:08 -0700, Pallipadi, Venkatesh wrote:
> Since recent chanegs to ondemand and conservative governor, there have been
> multiple reports of lockdep issues in cpufreq. Patch series takes care of
> these problems.
> 
> This is the next attempt following the one here, which was not a complete fix.
> http://lkml.indiana.edu/hypermail/linux/kernel/0906.3/01073.html
> 
> I am currently running some stress tests to make sure there are no issues with
> these patches. But, wanted to send them out for review/comments/testing
> before I head out for the long weekend.
> 
> If this patchset seems sane, the first patch in the patchset should also get
> into 30.stable.
> 

Just an update. I ran some stress test on few of my test machines over
the long weekend and havent seen any issues with this patchset.

Thanks,
Venki
