From: venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org
Subject: [patch 0/4] Take care of cpufreq lockdep issues (take 2)
Date: Thu, 02 Jul 2009 17:08:29 -0700
Message-ID: <20090703000829.735976000@intel.com>
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Dave Young <hidave.darkstar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>, Thomas Renninger <trenn-l3A5Bk7waGM@public.gmane.org>, Venkatesh Pallipadi <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

Since recent chanegs to ondemand and conservative governor, there have been
multiple reports of lockdep issues in cpufreq. Patch series takes care of
these problems.

This is the next attempt following the one here, which was not a complete fix.
http://lkml.indiana.edu/hypermail/linux/kernel/0906.3/01073.html

I am currently running some stress tests to make sure there are no issues with
these patches. But, wanted to send them out for review/comments/testing
before I head out for the long weekend.

If this patchset seems sane, the first patch in the patchset should also get
into 30.stable.

-- 
