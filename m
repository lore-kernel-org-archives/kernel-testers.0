From: Bjorn Helgaas <bjorn.helgaas@hp.com>
Subject: Re: [Bug #16228] BUG/boot failure on Dell Precision T3500 (pci/ahci_stop_engine)
Date: Mon, 27 Sep 2010 09:45:40 -0600
Message-ID: <201009270945.40627.bjorn.helgaas@hp.com>
References: <onxdOCF6lb.A.vKB.a_6nMB@chimera> <UfOptYFtL6C.A.fEE.6D7nMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <UfOptYFtL6C.A.fEE.6D7nMB@chimera>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: "Rafael J. Wysocki" <rjw@sisk.pl>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, Brian Bloniarz <brian.bloniarz@gmail.com>, Yinghai Lu <yinghai@kernel.org>

On Sunday, September 26, 2010 02:33:08 pm Rafael J. Wysocki wrote:
> This message has been generated automatically as a part of a report
> of regressions introduced between 2.6.34 and 2.6.35.
> 
> The following bug entry is on the current list of known regressions
> introduced between 2.6.34 and 2.6.35.  Please verify if it still should
> be listed and let the tracking team know (either way).
> 
> 
> Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16228
> Subject		: BUG/boot failure on Dell Precision T3500 (pci/ahci_stop_engine)
> Submitter	: Brian Bloniarz <brian.bloniarz@gmail.com>
> Date		: 2010-06-16 17:57 (103 days old)
> Handled-By	: Bjorn Helgaas <bjorn.helgaas@hp.com>
> Patch		: https://patchwork.kernel.org/patch/189182/
> 		  https://patchwork.kernel.org/patch/189232/
> 		  https://patchwork.kernel.org/patch/189242/
> 		  https://patchwork.kernel.org/patch/189252/

We plan to merge this patches soon after the 2.6.36 release, so
this regression will still exist in 2.6.36.
