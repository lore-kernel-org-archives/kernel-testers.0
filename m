From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #15668] start_kernel(): bug: interrupts were enabled early
Date: Tue, 20 Apr 2010 05:19:21 +0200 (CEST)
Message-ID: <YeFfFNFyTSF.A.sj.BSSzLB@tosh>
References: <deuQKFRcc0B.A.3EG.BRSzLB@tosh>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <deuQKFRcc0B.A.3EG.BRSzLB@tosh>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, "H. Peter Anvin" <hpa@zytor.com>, Rabin Vincent <rabin@rab.in>, Yinghai Lu <yinghai@kernel.org>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.33.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15668
Subject		: start_kernel(): bug: interrupts were enabled early
Submitter	: Rabin Vincent <rabin@rab.in>
Date		: 2010-03-25 19:53 (26 days old)
First-Bad-Commit: http://kernel.org/git/linus/773e3eb7b81e5ba13b5155dfb3bb75b8ce37f8f9
Message-ID	: <20100325194100.GA2364@debian>
References	: http://marc.info/?l=linux-kernel&m=126954607216519&w=2

