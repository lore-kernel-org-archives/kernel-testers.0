From: venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org
Subject: [patch 2/4] cpufreq: Mark policy_rwsem as going static in cpufreq.c wont be exported
Date: Thu, 02 Jul 2009 17:08:31 -0700
Message-ID: <20090703000923.959178000@intel.com>
References: <20090703000829.735976000@intel.com>
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Content-Disposition: inline; filename=0002-cpufreq-Mark-policy_rwsem-as-going-static-in-cpufre.patch
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Dave Jones <davej-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Cc: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, cpufreq-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, Dave Young <hidave.darkstar-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Pekka Enberg <penberg-bbCR+/B0CizivPeTLB3BmA@public.gmane.org>, Mathieu Desnoyers <mathieu.desnoyers-scC8bbJcJLCw5LPnMra/2Q@public.gmane.org>, Thomas Renninger <trenn-l3A5Bk7waGM@public.gmane.org>, Venkatesh Pallipadi <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

lock_policy_rwsem_* and unlock_policy_rwsem_* routines in cpufreq.c are
currently exported to drivers. Improper use of those locks can
result in deadlocks and it is better to keep the locks localized.
Two previous in-kernel users of these interfaces (ondemand and conservative),
do not use this interfaces any more. Schedule them for removal. 

Signed-off-by: Venkatesh Pallipadi <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
---
 Documentation/feature-removal-schedule.txt |   10 ++++++++++
 1 files changed, 10 insertions(+), 0 deletions(-)

diff --git a/Documentation/feature-removal-schedule.txt b/Documentation/feature-removal-schedule.txt
index f8cd450..09e031c 100644
--- a/Documentation/feature-removal-schedule.txt
+++ b/Documentation/feature-removal-schedule.txt
@@ -458,3 +458,13 @@ Why:	Remove the old legacy 32bit machine check code. This has been
 	but the old version has been kept around for easier testing. Note this
 	doesn't impact the old P5 and WinChip machine check handlers.
 Who:	Andi Kleen <andi-Vw/NltI1exuRpAAqCnN02g@public.gmane.org>
+
+----------------------------
+
+What:	lock_policy_rwsem_* and unlock_policy_rwsem_* will not be
+	exported interface anymore.
+When:	2.6.33
+Why:	cpu_policy_rwsem has a new cleaner definition making it local to
+	cpufreq core and contained inside cpufreq.c. Other dependent
+	drivers should not use it in order to safely avoid lockdep issues.
+Who:	Venkatesh Pallipadi <venkatesh.pallipadi-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
-- 
1.6.0.6

-- 
