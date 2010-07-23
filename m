From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #16007] x86/pci Oops with CONFIG_SND_HDA_INTEL
Date: Fri, 23 Jul 2010 14:15:50 +0200 (CEST)
Message-ID: <PRbv8sgxY6G.A.WmG.YWYSMB@chimera>
References: <wQMMFC59mnE.A.v-E.iUYSMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <wQMMFC59mnE.A.v-E.iUYSMB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>, Graham Ramsey <ramsey.graham-XZoyATsUNX5Wk0Htik3J/w@public.gmane.org>, Yinghai Lu <yinghai-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.33 and 2.6.34.

The following bug entry is on the current list of known regressions
introduced between 2.6.33 and 2.6.34.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16007
Subject		: x86/pci Oops with CONFIG_SND_HDA_INTEL
Submitter	: Graham Ramsey <ramsey.graham-XZoyATsUNX5Wk0Htik3J/w@public.gmane.org>
Date		: 2010-05-19 17:09 (66 days old)
Handled-By	: Yinghai Lu <yinghai-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
		  Bjorn Helgaas <bjorn.helgaas-VXdhtT5mjnY@public.gmane.org>
Patch		: https://patchwork.kernel.org/patch/105662/

