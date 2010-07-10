From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #16007] x86/pci Oops with CONFIG_SND_HDA_INTEL
Date: Sat, 10 Jul 2010 02:33:25 +0200 (CEST)
Message-ID: <Hc02ROPrUsG.A.VS.Yr7NMB@chimera>
References: <xkNyyYrLiTN.A.s_G.7p7NMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <xkNyyYrLiTN.A.s_G.7p7NMB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Bjorn Helgaas <bjorn.helgaas@hp.com>, Graham Ramsey <ramsey.graham@ntlworld.com>, Yinghai Lu <yinghai@kernel.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.33 and 2.6.34.

The following bug entry is on the current list of known regressions
introduced between 2.6.33 and 2.6.34.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16007
Subject		: x86/pci Oops with CONFIG_SND_HDA_INTEL
Submitter	: Graham Ramsey <ramsey.graham@ntlworld.com>
Date		: 2010-05-19 17:09 (52 days old)
Handled-By	: Yinghai Lu <yinghai@kernel.org>
		  Bjorn Helgaas <bjorn.helgaas@hp.com>
Patch		: https://patchwork.kernel.org/patch/105662/

