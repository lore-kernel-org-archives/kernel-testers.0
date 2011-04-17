From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #33102] File's copied from client->linux server only copy 1st 64K data;rest is lost
Date: Sun, 17 Apr 2011 14:57:13 +0200 (CEST)
Message-ID: <_H4l51C1wXN.A.g2B.oGuqNB@chimera>
References: <OlQwC5HnRsN.A.ULB.OGuqNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <OlQwC5HnRsN.A.ULB.OGuqNB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, Greg Kroah-Hartman <gregkh@suse.de>, "H. Peter Anvin" <hpa@zytor.com>, Konrad Rzeszutek Wilk <konrad.wilk@oracle.com>, Linda Walsh <lkml@tlinx.org>, Stefano Stabellini <stefano.stabellini@eu.citrix.com>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.38.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=33102
Subject		: File's copied from client->linux server only copy 1st 64K data;rest is lost
Submitter	: Linda Walsh <lkml@tlinx.org>
Date		: 2011-04-11 22:12 (7 days old)

