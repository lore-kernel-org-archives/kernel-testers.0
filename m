From: Thomas Renninger <trenn-l3A5Bk7waGM@public.gmane.org>
Subject: cpufreq cleanups - .30 vs .31
Date: Mon, 6 Jul 2009 13:18:18 +0200
Message-ID: <200907061318.20839.trenn@suse.de>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Dave Young <hidave.darkstar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>, Thomas Renninger <trenn-l3A5Bk7waGM@public.gmane.org>, Venkatesh Pallipadi <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

Hi Dave,

this is about Venki's and Mathieu's recently sent cleanups.
I'd like to summarize this to help finding a solution:

IMO Venki's approach (making .governor() always be called with
rwsem held) is the cleaner one and this should be the way to
go for .31 and future. This better separates locking responsibilities
between cpufreq core and governors and brings back "design" into this.

One could argue that for .30 Mathieu's is better, because less
intrusive. It's up to Dave in the end, but:
[patch 2.6.30 1/4] remove rwsem lock from CPUFREQ_GOV_STOP call (second=
 call=20
site)
should not be the way to go for .31 and I'd vote for Venki's
approach concerning locking .governor() against multiple calls (done by
rwsem) and governor() vs do_dbs_timer calls (governor's job with a gove=
rnor
specific sem).

So if not find too intrusive, I'd say:
Venkatesh's whole series of:
[patch 0/4] Take care of cpufreq lockdep issues (take 2)
should be seen in .31.

Depending on how intrusive this is seen, Venki's first patch:
[patch 1/4] cpufreq: Eliminate the recent lockdep warnings in cpufreq
should then go to .30 (after still waiting a bit?)
or Mathieu's approach (I'd vote for Venki's to be consistent for .30 an=
d .31).

The one patch from Mathieu:
[patch 2.6.30 2/4] CPUFREQ: fix (utter) cpufreq_add_dev mess
is a separate, general cleanup which should show up in .31.



I still have two patch specific questions:
about Mathieu's (it's a minor issue in the error path):
[patch 2.6.30 2/4] CPUFREQ: fix (utter) cpufreq_add_dev mess

+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0i=
f (lock_policy_rwsem_write(cpu) < 0) {
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0/* Should not go through policy unlock path */
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0if (cpufreq_driver->exit)
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0cpufreq_driver->exit(polic=
y);
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0ret =3D -EBUSY;
+=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0=A0=A0cpufreq_cpu_put(managed_policy);
Shouldn't:
 cpufreq_cpu_put(managed_policy);
be called before:
 cpufreq_driver->exit(policy);
Just in case the driver itself wants to grab the policy of the
managed cpu?


about Venki's:
[patch 3/4] cpufreq: Cleanup locking in ondemand governor
Isn't it possible to use only one mutex(timer_mutex) to protect do_dbs_=
timer=20
against governor start, stop, limit?
Then dbs_mutex would only be used to protect against concurrent sysfs a=
ccess
and can be thrown away as soon as ondemand only provides global sysfs f=
iles,
not per cpu ones.

Hmm, maybe this should just go in? It eases up things, but it's still h=
ard
to follow up each detail. Fixes/enhancements can still be put on top
for .31.

  Thomas
