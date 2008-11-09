From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #11994] Computer doesn't power down after commit CPI: EC: do transaction from interrupt context
Date: Sun,  9 Nov 2008 18:59:16 +0100 (CET)
Message-ID: <wnN9HICUAgP.A.zrE.J4zFJB@chimera>
References: <YrUCLn0F-xH.A.fhE.E4zFJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <YrUCLn0F-xH.A.fhE.E4zFJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="macroman"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, =?utf-8?q?Fran=C3=A7ois=20Valenduc?= <francois.valenduc-bmtTS95sd5BUM80lpFwj4w@public.gmane.org>, ykzhao <yakui.zhao-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.27.  Please verify if it still should be listed and let me kno=
w
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D11994
Subject		: Computer doesn't power down after commit CPI: EC: do transac=
tion from interrupt context
Submitter	: Fran=C3=A7ois Valenduc <francois.valenduc-bmtTS95sd5BUM80lpFwj4w@public.gmane.org>
Date		: 2008-11-09 02:02 (1 days old)
=46irst-Bad-Commit: http://git.kernel.org/?p=3Dlinux/kernel/git/torvald=
s/linux-2.6.git;a=3Dcommit;h=3D5ceb40417bca2045350e77f740e0c4c94875fff2
Handled-By	: ykzhao <yakui.zhao-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>

