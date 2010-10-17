From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #20182] 2.6.36-rc7: NULL pointer dereference in ehci_clear_tt_buffer_complete
Date: Sun, 17 Oct 2010 22:21:45 +0200 (CEST)
Message-ID: <7N-qxsaxKCN.A.2vB.Nk1uMB@chimera>
References: <TP5BfCZNRXD.A._8.uj1uMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <TP5BfCZNRXD.A._8.uj1uMB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, Stefan Richter <stefanr@s5r6.in-berlin.de>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.35.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=20182
Subject		: 2.6.36-rc7: NULL pointer dereference in ehci_clear_tt_buffer_complete
Submitter	: Stefan Richter <stefanr@s5r6.in-berlin.de>
Date		: 2010-10-11 20:56 (7 days old)
Message-ID	: <tkrat.9f585ea47331a2a2@s5r6.in-berlin.de>
References	: http://marc.info/?l=linux-kernel&m=128683064431749&w=2

