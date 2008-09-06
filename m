From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #11334] myri10ge: use ioremap_wc: compilation failure on ARM
Date: Sat,  6 Sep 2008 23:30:38 +0200 (CEST)
Message-ID: <Wz8EH5sroeE.A.aLC.aqwwIB@albercik>
References: <s3QDdfEDq6.A.wlH.MowwIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <s3QDdfEDq6.A.wlH.MowwIB@albercik>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Brice Goglin <brice-vV262kQ/Wyo@public.gmane.org>, Lennert Buytenhek <buytenh-eYqpPyKDWXRBDgjK7y7TUQ@public.gmane.org>, Lennert Buytenhek <buytenh-OLH4Qvv75CYX/NnBR394Jw@public.gmane.org>, Martin Michlmayr <tbm-R+vWnYXSFMfQT0dZR+AlfA@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.26.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11334
Subject		: myri10ge: use ioremap_wc: compilation failure on ARM
Submitter	: Martin Michlmayr <tbm-R+vWnYXSFMfQT0dZR+AlfA@public.gmane.org>
Date		: 2008-08-10 11:25 (28 days old)
References	: http://marc.info/?l=linux-netdev&m=121836771727632&w=2
Handled-By	: Lennert Buytenhek <buytenh-OLH4Qvv75CYX/NnBR394Jw@public.gmane.org>
Patch		: http://bugzilla.kernel.org/show_bug.cgi?id=11334#c13

