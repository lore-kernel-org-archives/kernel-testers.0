From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #11913] USB/INPUT: slab error in cache_alloc_debugcheck_after(): double free?
Date: Sun,  2 Nov 2008 17:07:07 +0100 (CET)
Message-ID: <wOAXuecskPD.A.1tE.3jeDJB@chimera>
References: <603i_OdVYPF.A.7_D.mjeDJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <603i_OdVYPF.A.7_D.mjeDJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Helge Deller <deller-Mmb7MZpHnFY@public.gmane.org>, Jeroen Roovers <jer-aBrp7R+bbdUdnm+yROfE0A@public.gmane.org>, Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>, Jiri Slaby <jirislaby-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.27.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11913
Subject		: USB/INPUT: slab error in cache_alloc_debugcheck_after(): double free?
Submitter	: Helge Deller <deller-Mmb7MZpHnFY@public.gmane.org>
Date		: 2008-10-30 23:11 (4 days old)
References	: http://marc.info/?l=linux-kernel&m=122540833301394&w=4
Handled-By	: Jiri Kosina <jkosina-AlSwsSmVLrQ@public.gmane.org>
		  Jiri Slaby <jirislaby-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

