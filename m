From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #12609] v2.6.29-rc2 libata sff 32bit PIO regression
Date: Wed,  4 Feb 2009 11:24:07 +0100 (CET)
Message-ID: <pWZw1SZjMCH.A.o-D.uuYiJB@chimera>
References: <kkuKoQJIW-D.A.61C.auYiJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <kkuKoQJIW-D.A.61C.auYiJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Cox <alan-qBU/x9rampVanCEyBjwyrvXRex20P6io@public.gmane.org>, Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>, Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>, Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>, Sergei Shtylyov <sshtylyov-hkdhdckH98+B+jHODAdFcQ@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.28.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12609
Subject		: v2.6.29-rc2 libata sff 32bit PIO regression
Submitter	: Larry Finger <Larry.Finger-tQ5ms3gMjBLk1uMJSBkQmQ@public.gmane.org>
Date		: 2009-01-23 23:52 (13 days old)
References	: http://marc.info/?l=linux-kernel&m=123275478111406&w=4
		  http://marc.info/?l=linux-kernel&m=123254501314058&w=4
Handled-By	: Mikael Pettersson <mikpe-1zs4UD6AkMk@public.gmane.org>
		  Hugh Dickins <hugh-DTz5qymZ9yRBDgjK7y7TUQ@public.gmane.org>
Patch		: http://marc.info/?l=linux-kernel&m=123254501314058&w=2

