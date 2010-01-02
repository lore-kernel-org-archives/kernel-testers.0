From: Alan Jenkins <sourcejedi.lkml-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Subject: s2disk hang update
Date: Sat, 2 Jan 2010 15:03:56 +0000
Message-ID: <9b2b86521001020703v23152d0cy3ba2c08df88c0a79@mail.gmail.com>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=gamma;
        h=domainkey-signature:mime-version:received:date:message-id:subject
         :from:to:cc:content-type;
        bh=u1aIpwvscDpZnem9L48+fnjaWnvFtQFag5+AJgqP29Q=;
        b=lTncMpcdYMgKzbt7383Me56AR9EV5/VIO/joYiTgtVf7ePewd61EosCcQ6i2x/3nfn
         4Q18UquEsc0Ahp5vvBQrPdsn+etK+dS4GrxyTR227xFFGcHaDSTkIuEfnSSMsq0liDRk
         yiHkoUV8XXwcdgL4AvsDpURAmkOwspgCxbNhk=
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>
Cc: hugh.dickins-IWqWACnzNjwqdlJmJB21zg@public.gmane.org, Pavel Machek <pavel-+ZI9xUNit7I@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>, pm list <linux-pm-cunTk1MwBs9QetFLy7KEm3xJsTq8ys+cHZ5vskTnxNA@public.gmane.org>, linux-kernel <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>

Hi,

I've been suffering from s2disk hangs again.  This time, the hangs
were always before the hibernation image was written out.

They're still frustratingly random.  I just started trying to work out
whether doubling PAGES_FOR_IO makes them go away, but they went away
on their own again.

I did manage to capture a backtrace with debug info though.  Here it
is for 2.6.33-rc2.  (It has also happened on rc1).  I was able to get
the line numbers (using gdb, e.g.  "info line
*stop_machine_create+0x27"), having built the kernel with debug info.

[top of trace lost due to screen height]
? sync_page	(filemap.c:183)
? wait_on_page_bit	(filemap.c:506)
? wake_bit_function	(wait.c:174)
? shrink_page_list	(vmscan.c:696)
? __delayacct_blkio_end	(delayacct.c:94)
? finish_wait	(list.h:142)
? congestion_wait	(backing-dev.c:761)
? shrink_inactive_list	(vmscan.c:1193)
? scsi_request_fn	(spinlock.h:306)
? blk_run_queue	(blk-core.c:434)
? shrink_zone	(vmscan.c:1484)
? do_try_to_free_pages	(vmscan.c:1684)
? try_to_free_pages	(vmscan.c:1848)
? isolate_pages_global	(vmscan.c:980)
? __alloc_pages_nodemask	(page_alloc.c:1702)
? __get_free_pages	(page_alloc.c:1990)
? copy_process	(fork.c:237)
? do_fork	(fork.c:1443)
? rb_erase
? __switch_to
? kthread
? kernel_thread
? kthread
? kernel_thread_helper
? kthreadd
? kthreadd
? kernel_thread_helper

INFO: task s2disk:2174 blocked for more than 120 seconds
...
Call Trace:
? __switch_to
? schedule_timeout
? check_preempt_wakeup
? wait_for_common
? default_wake_function
? kthread_create:133
? worker_thread
? schedule
? create_workqueue_thread
? worker_thread
? __create_workqueue_key (workqueue.c:1006)
? stop_machine_create (stop_machine.c:121)
? disable_nonboot_cpus (cpu.c:370)
? hibernation_snapshot
? snapshot_ioctl
...
? sys_ioctl


Thanks for everything
Alan
