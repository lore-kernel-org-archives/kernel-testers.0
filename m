From: "Rafael J. Wysocki" <rjw@sisk.pl>
Subject: [Bug #24592] 2.6.37-rc5: NULL pointer oops in selinux_socket_unix_stream_connect
Date: Thu, 30 Dec 2010 00:07:01 +0100 (CET)
Message-ID: <sV7shrPOroO.A.0bF.y-7GNB@chimera>
References: <96DQe4a_2tH.A.4RE.497GNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <96DQe4a_2tH.A.4RE.497GNB@chimera>
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
Date		: 2010-12-08 21:09 (22 days old)
Message-ID	: <4CFFF3F3.90100@goop.org>
References	: http://marc.info/?l=linux-kernel&m=129184256629712&w=2

