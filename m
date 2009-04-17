From: Linus Torvalds <torvalds-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Subject: Re: [Bug #13058] First hibernation attempt fails
Date: Fri, 17 Apr 2009 14:12:00 -0700 (PDT)
Message-ID: <alpine.LFD.2.00.0904171408081.4042@localhost.localdomain>
References: <EJaiQ4Wfaz.A.3YG.4v85JB@chimera> <alpine.LFD.2.00.0904170856460.4042@localhost.localdomain> <49E8C06A.5080605@tuffmail.co.uk> <200904172258.58783.rjw@sisk.pl>
Mime-Version: 1.0
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <200904172258.58783.rjw-KKrjLPT3xs0@public.gmane.org>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Alan Jenkins <alan-jenkins-cCz0Lq7MMjm9FHfhHBbuYA@public.gmane.org>, Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>



On Fri, 17 Apr 2009, Rafael J. Wysocki wrote:
> 
> Can you please try to reproduce the problem with the appended debug patch
> applied and send the output of dmesg to me?

Maybe something like this instead (or in addition to).

It does "show_mem()" when memory shrinking fails. It will show a _lot_ of 
data.

Untested, but trivial.

		Linus
---
 kernel/power/swsusp.c |    9 ++++++++-
 1 files changed, 8 insertions(+), 1 deletions(-)

diff --git a/kernel/power/swsusp.c b/kernel/power/swsusp.c
index 78c3504..6e70efd 100644
--- a/kernel/power/swsusp.c
+++ b/kernel/power/swsusp.c
@@ -207,9 +207,16 @@ void swsusp_show_speed(struct timeval *start, struct timeval *stop,
 #define SHRINK_BITE	10000
 static inline unsigned long __shrink_memory(long tmp)
 {
+	unsigned long ret;
+
 	if (tmp > SHRINK_BITE)
 		tmp = SHRINK_BITE;
-	return shrink_all_memory(tmp);
+	ret = shrink_all_memory(tmp);
+	if (!ret) {
+		printk("shrink_all_memory(%ld) failed\n", tmp);
+		show_mem();
+	}
+	return ret;
 }
 
 int swsusp_shrink_memory(void)
