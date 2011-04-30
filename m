From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #28522] Unable to mount FAT-formatted floppy on /dev/fd0, plus WARN_ON when using /dev/fd0u1440
Date: Sat, 30 Apr 2011 22:17:15 +0200 (CEST)
Message-ID: <9nxEC7x0HFO.A.VFH.O0GvNB@chimera>
References: <QbBtx5c9v1J.A.JaF.PxGvNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <QbBtx5c9v1J.A.JaF.PxGvNB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, Alex Villacis Lasso <avillaci@ceibo.fiec.espol.edu.ec>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.37 and 2.6.38.

The following bug entry is on the current list of known regressions
introduced between 2.6.37 and 2.6.38.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=28522
Subject		: Unable to mount FAT-formatted floppy on /dev/fd0, plus WARN_ON when using /dev/fd0u1440
Submitter	: Alex Villacis Lasso <avillaci@ceibo.fiec.espol.edu.ec>
Date		: 2011-02-07 17:21 (83 days old)

