From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #14794] IP address assigned by DHCP is dropped after ~40 seconds
Date: Tue, 29 Dec 2009 16:28:50 +0100 (CET)
Message-ID: <srmJ8vMxKPH.A.MyC.uwhOLB@chimera>
References: <oBElxfTZdhL.A.bx.-vhOLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <oBElxfTZdhL.A.bx.-vhOLB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "Author: Mike Galbraith" <efault-Mmb7MZpHnFY@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, =?utf-8?q?M=C3=A1rton=20N=C3=A9meth?= <nm127-Y8qEzhMunLyT9ig0jae3mg@public.gmane.org>, Mike Galbraith <efault-Mmb7MZpHnFY@public.gmane.org>, Peter Zijlstra <a.p.zijlstra-/NLkJaSkS4VmR6Xm/wNWPw@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.31 and 2.6.32.

The following bug entry is on the current list of known regressions
introduced between 2.6.31 and 2.6.32.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D14794
Subject		: IP address assigned by DHCP is dropped after ~40 seconds
Submitter	: M=C3=A1rton N=C3=A9meth <nm127-Y8qEzhMunLyT9ig0jae3mg@public.gmane.org>
Date		: 2009-12-13 08:59 (17 days old)

