From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #11435] oops due to smp_call_function_single changes
Date: Sat, 30 Aug 2008 21:50:24 +0200 (CEST)
Message-ID: <N8SeMoDzuxC.A.HDE.JibuIB@albercik>
References: <q6jBvyFdWbL.A.K4C.fhbuIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <q6jBvyFdWbL.A.K4C.fhbuIB@albercik>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Avi Kivity <avi-atKUWr5tajBWk0Htik3J/w@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Nick Piggin <nickpiggin-/E1597aS9LT0CCvOHzKKcA@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.26.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11435
Subject		: oops due to smp_call_function_single changes
Submitter	: Avi Kivity <avi-atKUWr5tajBWk0Htik3J/w@public.gmane.org>
Date		: 2008-08-24 16:41 (7 days old)
References	: http://marc.info/?l=linux-kernel&m=121959612027162&w=4

