From: Stephen Hemminger <shemminger@vyatta.com>
Subject: Re: [Bug #13116] Can't boot with nosmp
Date: Mon, 8 Jun 2009 09:15:44 -0700
Message-ID: <20090608091544.53a94235@nehalam>
References: <bCxQpon4SCJ.A.RrF.yY7KKB@chimera>
	<D9VoutSOyXP.A.xm.Vb7KKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1756972AbZFHQP7@vger.kernel.org>
In-Reply-To: <D9VoutSOyXP.A.xm.Vb7KKB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>, Dan Williams <dan.j.williams@intel.com>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>

On Sun,  7 Jun 2009 11:52:49 +0200 (CEST)
"Rafael J. Wysocki" <rjw@sisk.pl> wrote:

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
> Submitter	: Stephen Hemminger <shemminger@vyatta.com>
> Date		: 2009-04-15 4:18 (54 days old)
> References	: http://marc.info/?l=linux-kernel&m=123976917817920&w=4
> Handled-By	: Dan Williams <dan.j.williams@intel.com>
> 
> 

I suspect this bit of code in dmaengine is the culprit:

	/* redistribute available channels */
	n = 0;
	for_each_dma_cap_mask(cap, dma_cap_mask_all)
		for_each_online_cpu(cpu) {
			if (num_possible_cpus() > 1)
				chan = nth_chan(cap, n++);
			else
				chan = nth_chan(cap, -1);

Why does num_possible_cpus() == 1 have to be a special case?
-- 
