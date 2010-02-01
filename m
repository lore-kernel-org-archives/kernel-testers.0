From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #15124] PCI host bridge windows ignored (works with pci=use_crs)
Date: Mon,  1 Feb 2010 01:22:09 +0100 (CET)
Message-ID: <d3IDKWHT5gE.A.ydC.r7hZLB@chimera>
References: <vZZJKzCUn4G.A.CPB.F7hZLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <vZZJKzCUn4G.A.CPB.F7hZLB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>, Jeff Garrett <jeff-184d8XiO+QJg9hUCZPvPmw@public.gmane.org>, Linux PCI <linux-pci-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Yinghai Lu <yinghai-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.32.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15124
Subject		: PCI host bridge windows ignored (works with pci=use_crs)
Submitter	: Jeff Garrett <jeff-184d8XiO+QJg9hUCZPvPmw@public.gmane.org>
Date		: 2010-01-13 5:37 (19 days old)
References	: http://marc.info/?l=linux-kernel&m=126336296600307&w=4
Handled-By	: Yinghai Lu <yinghai-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
		  Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>

