From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #11190] [USB boot crash, -git] ecm_do_notify(), list_add corruption. prev-&gt;next should be next (ffff88003b8f82f8)
Date: Sat,  2 Aug 2008 20:04:19 +0200 (CEST)
Message-ID: <5ZeQ4vXWqRC.A.clE.pNLlIB@albercik>
References: <cbItfVMShGI.A.olC.UMLlIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <cbItfVMShGI.A.olC.UMLlIB@albercik>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>, David Brownell <david-b-yBeKhBN/0LDR7s880joybQ@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.26.  Please verify if it still should be listed
and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11190
Subject		: [USB boot crash, -git] ecm_do_notify(), list_add corruption. prev-&gt;next should be next (ffff88003b8f82f8)
Submitter	: Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>
Date		: 2008-07-22 13:40 (12 days old)
References	: http://marc.info/?l=linux-usb&m=121673409124827&w=4
Handled-By	: Alan Stern <stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org>
		  David Brownell <david-b-yBeKhBN/0LDR7s880joybQ@public.gmane.org>
Patch		: http://marc.info/?l=linux-kernel&m=121708481823201&w=4

