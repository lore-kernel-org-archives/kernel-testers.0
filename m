From: Hidehiro Kawai <hidehiro.kawai.ez@hitachi.com>
Subject: [BUG][PATCH -mm] avoid BUG() in __stop_machine_run()
Date: Thu, 19 Jun 2008 15:59:50 +0900
Message-ID: <485A03E6.2090509@hitachi.com>
References: <20080611225945.4da7bb7f.akpm@linux-foundation.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1757447AbYFSHA0@vger.kernel.org>
In-Reply-To: <20080611225945.4da7bb7f.akpm@linux-foundation.org>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: linux-kernel@vger.kernel.org, kernel-testers@vger.kernel.org, linux-mm@kvack.org, sugita <yumiko.sugita.yf@hitachi.com>, Satoshi OSHIMA <satoshi.oshima.fk@hitachi.com>, rusty@rustcorp.com.au

When a process loads a kernel module, __stop_machine_run() is called, and
it calls sched_setscheduler() to give newly created kernel threads highest
priority.  However, the process can have no CAP_SYS_NICE which required
for sched_setscheduler() to increase the priority.  For example, SystemTap
loads its module with only CAP_SYS_MODULE.  In this case,
sched_setscheduler() returns -EPERM, then BUG() is called.

Failure of sched_setscheduler() wouldn't be a real problem, so this
patch just ignores it.
Or, should we give the CAP_SYS_NICE capability temporarily?

Signed-off-by: Hidehiro Kawai <hidehiro.kawai.ez@hitachi.com>
---
 kernel/stop_machine.c |    3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

Index: linux-2.6.26-rc5-mm3/kernel/stop_machine.c
===================================================================
--- linux-2.6.26-rc5-mm3.orig/kernel/stop_machine.c
+++ linux-2.6.26-rc5-mm3/kernel/stop_machine.c
@@ -143,8 +143,7 @@ int __stop_machine_run(int (*fn)(void *)
 		kthread_bind(threads[i], i);
 
 		/* Make it highest prio. */
-		if (sched_setscheduler(threads[i], SCHED_FIFO, &param) != 0)
-			BUG();
+		sched_setscheduler(threads[i], SCHED_FIFO, &param);
 	}
 
 	/* We've created all the threads.  Wake them all: hold this CPU so one

