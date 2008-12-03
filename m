From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #12020] scsi_times_out NULL pointer dereference
Date: Wed,  3 Dec 2008 22:57:59 +0100 (CET)
Message-ID: <bfPM5B8Tx2B.A.Ia.hpxNJB@chimera>
References: <QFIA5HSHV8B.A.2aG.hoxNJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <QFIA5HSHV8B.A.2aG.hoxNJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Bernd Schubert <bs-PKu+Ek1N2UGzQB+pC5nmwQ@public.gmane.org>, James Bottomley <James.Bottomley-d9PhHud1JfjCXq6kfMZ53/egYHeGw8Jk@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.27.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12020
Subject		: scsi_times_out NULL pointer dereference
Submitter	: Bernd Schubert <bs-PKu+Ek1N2UGzQB+pC5nmwQ@public.gmane.org>
Date		: 2008-11-13 10:30 (21 days old)
Handled-By	: James Bottomley <James.Bottomley-d9PhHud1JfjCXq6kfMZ53/egYHeGw8Jk@public.gmane.org>
Patch		: http://bugzilla.kernel.org/show_bug.cgi?id=12020#c4

