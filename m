From: Dan Williams <dan.j.williams-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Subject: Re: [Bug #13116] Can't boot with nosmp
Date: Tue, 02 Jun 2009 10:47:32 -0700
Message-ID: <1243964852.31688.4.camel@dwillia2-linux.ch.intel.com>
References: <4to6E2myxvG.A.muC.aIbIKB@chimera>
	 <LEcEO2518_I.A.aWF.nKbIKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <LEcEO2518_I.A.aWF.nKbIKB@chimera>
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Cc: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Stephen Hemminger <shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org>

On Sat, 2009-05-30 at 12:37 -0700, Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of recent regressions.
> 
> The following bug entry is on the current list of known regressions
> from 2.6.29.  Please verify if it still should be listed and let me know
> (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13116
> Subject		: Can't boot with nosmp
> Submitter	: Stephen Hemminger <shemminger-ZtmgI6mnKB3QT0dZR+AlfA@public.gmane.org>
> Date		: 2009-04-15 4:18 (46 days old)
> References	: http://marc.info/?l=linux-kernel&m=123976917817920&w=4
> Handled-By	: Dan Williams <dan.j.williams-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

Still open as "can't reproduce" on my end.  Stephen can you reproduce
with the following patch to confirm that the cpumasks are sane?

Thanks,
Dan

diff --git a/drivers/dma/dmaengine.c b/drivers/dma/dmaengine.c
index 5a87384..4cdcbc6 100644
--- a/drivers/dma/dmaengine.c
+++ b/drivers/dma/dmaengine.c
@@ -444,6 +444,7 @@ static void dma_channel_rebalance(void)
 			else
 				chan = nth_chan(cap, -1);
 
+			pr_info("%s: cpu: %d cap: %d\n", __func__, cpu, cap);
 			per_cpu_ptr(channel_table[cap], cpu)->chan = chan;
 		}
 }

