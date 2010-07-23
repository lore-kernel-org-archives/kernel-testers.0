From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #16139] wait_even_interruptible_timeout(), signal, spin_lock() = system hang
Date: Fri, 23 Jul 2010 14:15:51 +0200 (CEST)
Message-ID: <PRbv8sgxY6G.A.yDG.nVYSMB@chimera>
References: <wQMMFC59mnE.A.v-E.iUYSMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <wQMMFC59mnE.A.v-E.iUYSMB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Shirish Pargaonkar <shirishpargaonkar@gmail.com>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.33 and 2.6.34.

The following bug entry is on the current list of known regressions
introduced between 2.6.33 and 2.6.34.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16139
Subject		: wait_even_interruptible_timeout(), signal, spin_lock() = system hang
Submitter	: Shirish Pargaonkar <shirishpargaonkar@gmail.com>
Date		: 2010-05-28 16:44 (57 days old)
Message-ID	: <AANLkTiliRFydAhxH2-Dp1RKuz6sq7vgWIcMvLMi68ftg@mail.gmail.com>
References	: http://marc.info/?l=linux-kernel&m=127506510328758&w=2

