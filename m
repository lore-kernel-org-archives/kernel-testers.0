From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #13173] NULL pointer crash in early NMI handler
Date: Sat, 25 Apr 2009 21:31:50 +0200 (CEST)
Message-ID: <Fg2zLW93smL.A.vmC.zc48JB@chimera>
References: <47KgT3nlbjD.A.lnB.jc48JB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <47KgT3nlbjD.A.lnB.jc48JB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>, Steven Rostedt <rostedt-nx8X9YLhiw1AfugRpC6u6w@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.29.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13173
Subject		: NULL pointer crash in early NMI handler
Submitter	: Steven Rostedt <rostedt-nx8X9YLhiw1AfugRpC6u6w@public.gmane.org>
Date		: 2009-04-21 1:35 (5 days old)
References	: http://marc.info/?l=linux-kernel&m=124027774713368&w=4
Handled-By	: Rusty Russell <rusty-8n+1lVoiYb80n/F98K4Iww@public.gmane.org>
Patch		: http://patchwork.kernel.org/patch/19141/
		  http://patchwork.kernel.org/patch/19140/

