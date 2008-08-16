From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #11323] /proc/diskstats does not contain all disk devices
Date: Sat, 16 Aug 2008 21:02:53 +0200 (CEST)
Message-ID: <sNRO-BDDjQL.A.LHF.iazpIB@albercik>
References: <DLWXHEp37wB.A.duD.yZzpIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <DLWXHEp37wB.A.duD.yZzpIB@albercik>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andy Ryan <genanr-FUK3p6tQds9Wk0Htik3J/w@public.gmane.org>, Greg Kroah-Hartman <gregkh-l3A5Bk7waGM@public.gmane.org>, Greg Kroah-Hartman <greg-U8xfFu+wG4EAvxtiuMwx3w@public.gmane.org>, Kay Sievers <kay.sievers-tD+1rO4QERM@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.26.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11323
Subject		: /proc/diskstats does not contain all disk devices
Submitter	: Andy Ryan <genanr-FUK3p6tQds9Wk0Htik3J/w@public.gmane.org>
Date		: 2008-08-13 12:12 (4 days old)
Handled-By	: Greg Kroah-Hartman <greg-U8xfFu+wG4EAvxtiuMwx3w@public.gmane.org>
		  Kay Sievers <kay.sievers-tD+1rO4QERM@public.gmane.org>
Patch		: http://bugzilla.kernel.org/attachment.cgi?id=17257&action=view

