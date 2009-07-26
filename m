From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #13834] device mapper fails on some logical volumes
Date: Sun, 26 Jul 2009 22:28:28 +0200 (CEST)
Message-ID: <3zAHs5O6maO.A.4TC.OHObKB@chimera>
References: <Jya1GruKQpD.A.16.2GObKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Jya1GruKQpD.A.16.2GObKB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="macroman"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alasdair Kergon <agk-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, =?utf-8?q?Christian=20Borntr=C3=A4ger?= <borntraeger-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>, Mike Snitzer <snitzer-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.30.  Please verify if it still should be listed and let me kno=
w
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D13834
Subject		: device mapper fails on some logical volumes
Submitter	: Christian Borntr=C3=A4ger <borntraeger-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>
Date		: 2009-07-15 18:52 (12 days old)
=46irst-Bad-Commit: http://git.kernel.org/?p=3Dlinux/kernel/git/torvald=
s/linux-2.6.git;a=3Dcommit;h=3D754c5fc7ebb417b23601a6222a6005cc2e7f2913
References	: http://marc.info/?l=3Dlinux-kernel&m=3D124767677206470&w=3D=
4
Handled-By	: Mike Snitzer <snitzer-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Patch		: http://patchwork.kernel.org/patch/33534/

