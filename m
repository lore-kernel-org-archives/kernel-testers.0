From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #16255] 2.6.35-rc3 deadlocks on semaphore operations
Date: Fri,  9 Jul 2010 01:41:36 +0200 (CEST)
Message-ID: <TXb9XdQzJoD.A.mgC.3MmNMB@chimera>
References: <-IGZ64uxA6G.A.P0H.bLmNMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <-IGZ64uxA6G.A.P0H.bLmNMB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>, Manfred Spraul <manfred-nhLOkwUX5cPe2c5cEj3t2g@public.gmane.org>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.34.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16255
Subject		: 2.6.35-rc3 deadlocks on semaphore operations
Submitter	: Christoph Lameter <cl-de/tnXTf+JLsfHDXvbKv3WD2FQJk+8+b@public.gmane.org>
Date		: 2010-06-18 14:49 (21 days old)
Message-ID	: <alpine.DEB.2.00.1006180940140.11575-sBS69tsa9Uj/9pzu0YdTqQ@public.gmane.org>
References	: http://marc.info/?l=linux-kernel&m=127687262727707&w=2
Handled-By	: Manfred Spraul <manfred-nhLOkwUX5cPe2c5cEj3t2g@public.gmane.org>
Patch		: http://marc.info/?l=linux-kernel&m=127731055203402&w=2

