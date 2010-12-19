From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #24592] 2.6.37-rc5: NULL pointer oops in selinux_socket_unix_stream_connect
Date: Sun, 19 Dec 2010 13:34:42 +0100 (CET)
Message-ID: <6Ue85L6pKCJ.A.1wD.GefDNB@chimera>
References: <wNJKqSoEutL.A.lKD.odfDNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <wNJKqSoEutL.A.lKD.odfDNB@chimera>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Cc: Kernel Testers List <kernel-testers@vger.kernel.org>, Maciej Rutecki <maciej.rutecki@gmail.com>, Florian Mickler <florian@mickler.org>, Jeremy Fitzhardinge <jeremy@goop.org>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.36.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=24592
Subject		: 2.6.37-rc5: NULL pointer oops in selinux_socket_unix_stream_connect
Submitter	: Jeremy Fitzhardinge <jeremy@goop.org>
Date		: 2010-12-08 21:09 (12 days old)
Message-ID	: <4CFFF3F3.90100@goop.org>
References	: http://marc.info/?l=linux-kernel&m=129184256629712&w=2

