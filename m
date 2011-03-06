From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #26042] BUG: NULL pointer dereference at shrink_dcache_parent
Date: Sun,  6 Mar 2011 13:40:37 +0100 (CET)
Message-ID: <sUKqYsqyJ4N.A.rHH.tA4cNB@chimera>
References: <dtUMITvTCCN.A.uuF.y-3cNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <dtUMITvTCCN.A.uuF.y-3cNB@chimera>
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


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D26042
Subject		: BUG: NULL pointer dereference at shrink_dcache_parent
Submitter	: Ferenc W=C3=A1gner <wferi@niif.hu>
Date		: 2011-01-03 10:49 (63 days old)

