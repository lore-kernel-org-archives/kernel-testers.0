From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #11856] seq_file does not handle pread()
Date: Sun,  2 Nov 2008 17:07:02 +0100 (CET)
Message-ID: <wOAXuecskPD.A.6cG.kkeDJB@chimera>
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
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Petr Vandrovec <vandrove-hnqZr3NxcozrBKCeMvbIDA@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.27.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11856
Subject		: seq_file does not handle pread()
Submitter	: Petr Vandrovec <vandrove-hnqZr3NxcozrBKCeMvbIDA@public.gmane.org>
Date		: 2008-10-25 17:40 (9 days old)

