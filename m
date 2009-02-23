From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #12766] Lots of smp_processor_id() in preemptible messages
Date: Mon, 23 Feb 2009 22:48:18 +0100 (CET)
Message-ID: <vP9hdyF4fL.A.-rC.vozoJB@chimera>
References: <GVhknozYwrL.A.hiC.rozoJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <GVhknozYwrL.A.hiC.rozoJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Jeremy Fitzhardinge <jeremy.fitzhardinge-Sxgqhf6Nn4DQT0dZR+AlfA@public.gmane.org>, Jeremy Fitzhardinge <jeremy-TSDbQ3PG+2Y@public.gmane.org>, Marcelo Tosatti <mtosatti-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Tilman Schmidt <t.schmidt-6eTgSDYuZyYd9SLi6J12IoQuADTiUCJX@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.28.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12766
Subject		: Lots of smp_processor_id() in preemptible messages
Submitter	: Tilman Schmidt <t.schmidt-6eTgSDYuZyYd9SLi6J12IoQuADTiUCJX@public.gmane.org>
Date		: 2009-02-23 18:37 (1 days old)
References	: http://marc.info/?l=linux-kernel&m=123541536414019&w=4

