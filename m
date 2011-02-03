From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #26582] NULL pointer dereference on pipe creation
Date: Thu,  3 Feb 2011 01:05:28 +0100 (CET)
Message-ID: <-tcJxClTQPH.A.1bE.j7eSNB@chimera>
References: <e9vOd5LzdBK.A.dyD.h6eSNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <e9vOd5LzdBK.A.dyD.h6eSNB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, =?utf-8?q?Ferenc=20W=C3=A1gner?= <wferi@niif.hu>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.36 and 2.6.37.

The following bug entry is on the current list of known regressions
introduced between 2.6.36 and 2.6.37.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D26582
Subject		: NULL pointer dereference on pipe creation
Submitter	: Ferenc W=C3=A1gner <wferi@niif.hu>
Date		: 2011-01-12 13:30 (22 days old)

