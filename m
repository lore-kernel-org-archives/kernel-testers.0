From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #18272] 2.6.35.*: horrible (exponential? >linear) slowdown to unusability (ACPI idle?)
Date: Sun, 12 Sep 2010 21:08:45 +0200 (CEST)
Message-ID: <p44oKaOqEDM.A.vtE.KgSjMB@chimera>
References: <QnCvudbe2FD.A.XiE.DgSjMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <QnCvudbe2FD.A.XiE.DgSjMB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, "H. Peter Anvin" <hpa@zytor.com>, Nix <nix@esperi.org.uk>, Thomas Gleixner <tglx@linutronix.de>, Venkatesh Pallipadi <venki@google.com>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.34 and 2.6.35.

The following bug entry is on the current list of known regressions
introduced between 2.6.34 and 2.6.35.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=18272
Subject		: 2.6.35.*: horrible (exponential? >linear) slowdown to unusability (ACPI idle?)
Submitter	: Nix <nix@esperi.org.uk>
Date		: 2010-09-05 0:51 (8 days old)
First-Bad-Commit: http://git.kernel.org/linus/30a564be9d9554c168a654eddc2165869cc0d7bf
Message-ID	: <87zkvx2ese.fsf@spindle.srvr.nix>
References	: http://marc.info/?l=linux-kernel&m=128364994602942&w=2

