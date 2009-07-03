From: Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>
Subject: [patch 2.6.30 0/4] Fix cpufreq locking dependency (resend)
Date: Fri, 03 Jul 2009 11:25:14 -0400
Message-ID: <20090703152514.903448283@polymtl.ca>
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Venkatesh Pallipadi <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Thomas Renninger <trenn-l3A5Bk7waGM@public.gmane.org>, cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-te

(sorry, quilt mail problems in the previous post, here is the resend)

Hi,

Here is a patchset applying on 2.6.30 which should fix the cpufreq locking
dependency. Sadly, my two main test machines does not seem to support cpufreq,
so I have only been able to perform very light testing. (I can't afford to lock
down my laptop right now).

I went for the most straightforward fix I could think of and kept the current
locking structure. As you will see, the second patch cleans up the error
handling paths of cpufreq add dev, which were a total mess.

As a general recommendation, creating scripts which does, concurrently :

cpu hotplug up/down
cpufreq sysfs actions
change between cpufreq governors
add governors on random CPU numbers

will likely help stress-testing cpufreq locking. I really did not like what I've
seen there. It looked _very_ fragile.

Hopefully this will be better with this patches, but again, testing is welcome.

Thanks,

Mathieu


-- 
Mathieu Desnoyers
OpenPGP key fingerprint: 8CD5 52C3 8E3C 4140 715F  BA06 3F25 A8FE 3BAE 9A68
