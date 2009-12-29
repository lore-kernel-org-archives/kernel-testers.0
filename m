From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #14483] Interrupts enabled after irqrouter_resume - iMac9,1
Date: Tue, 29 Dec 2009 16:28:43 +0100 (CET)
Message-ID: <srmJ8vMxKPH.A.YuE.CyhOLB@chimera>
References: <oBElxfTZdhL.A.bx.-vhOLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1753222AbZL2PdP@vger.kernel.org>
In-Reply-To: <oBElxfTZdhL.A.bx.-vhOLB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Alexey Starikovskiy <astarikovskiy@suse.de>, christian hartmann <cornogle@googlemail.com>, Ingo Molnar <mingo@elte.hu>, Justin Mattock <justinmattock@gmail.com>, Len Brown <len.brown@intel.com>, Linus Torvalds <torvalds@linux-foundation.org>, Martin Schwidefsky <schwidefsky@de.ibm.com>, Thomas Gleixner <tglx@linutronix.de>, Xiaotian Feng <dfeng@redhat.com>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.31 and 2.6.32.

The following bug entry is on the current list of known regressions
introduced between 2.6.31 and 2.6.32.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14483
Subject		: Interrupts enabled after irqrouter_resume - iMac9,1
Submitter	: Justin Mattock <justinmattock@gmail.com>
Date		: 2009-10-25 19:58 (66 days old)
References	: http://marc.info/?l=linux-kernel&m=125650070420168&w=4
Handled-By	: Xiaotian Feng <dfeng@redhat.com>
Patch		: http://patchwork.kernel.org/patch/64771/

