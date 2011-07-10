From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #38152] acpi_power_off lockdep splat
Date: Sun, 10 Jul 2011 12:38:22 +0200 (CEST)
Message-ID: <XNkIyhV6dgF.A.oLH.jCYGOB@chimera>
References: <Y7LyOsOBwFM.A.kJG.kBYGOB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <Y7LyOsOBwFM.A.kJG.kBYGOB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, Borislav Petkov <bp@alien8.de>, "Rafael J. Wysocki" <rjw@sisk.pl>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.39.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=38152
Subject		: acpi_power_off lockdep splat
Submitter	: Borislav Petkov <bp@alien8.de>
Date		: 2011-06-19 13:30 (22 days old)
Message-ID	: <20110619133049.GA18168@liondog.tnic>
References	: http://marc.info/?l=linux-kernel&m=130849028317365&w=2
Handled-By	: Rafael J. Wysocki <rjw@sisk.pl>
Patch		: https://patchwork.kernel.org/patch/950852/

