From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #16228] BUG/boot failure on Dell Precision T3500 (pci/ahci_stop_engine)
Date: Sun, 26 Sep 2010 22:33:08 +0200 (CEST)
Message-ID: <UfOptYFtL6C.A.fEE.6D7nMB@chimera>
References: <onxdOCF6lb.A.vKB.a_6nMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <onxdOCF6lb.A.vKB.a_6nMB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>, Brian Bloniarz <brian.bloniarz-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Yinghai Lu <yinghai-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.34 and 2.6.35.

The following bug entry is on the current list of known regressions
introduced between 2.6.34 and 2.6.35.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16228
Subject		: BUG/boot failure on Dell Precision T3500 (pci/ahci_stop_engine)
Submitter	: Brian Bloniarz <brian.bloniarz-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2010-06-16 17:57 (103 days old)
Handled-By	: Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>
Patch		: https://patchwork.kernel.org/patch/189182/
		  https://patchwork.kernel.org/patch/189232/
		  https://patchwork.kernel.org/patch/189242/
		  https://patchwork.kernel.org/patch/189252/

