From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #11462] v2.6.27-rc5 regression: mtd/block device issue with cmd_filter
Date: Sat, 30 Aug 2008 21:50:29 +0200 (CEST)
Message-ID: <N8SeMoDzuxC.A.iOD.shbuIB@albercik>
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
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "FUJITA Tomonori fujita.tomonori at lab.ntt.co.jp&gt;"@ogre.sisk.pl, Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, Laurent Pinchart <laurentp-BSmb2szPELAwsLKNixborgC/G2K4zDHf@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.26.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11462
Subject		: v2.6.27-rc5 regression: mtd/block device issue with cmd_filter
Submitter	: Laurent Pinchart <laurentp-BSmb2szPELAwsLKNixborgC/G2K4zDHf@public.gmane.org>
Date		: 2008-08-29 10:50 (2 days old)
References	: http://marc.info/?l=linux-kernel&m=122000707631759&w=4
		  http://marc.info/?l=linux-kernel&m=122011643217462&w=4
Handled-By	: Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
		  FUJITA Tomonori fujita.tomonori at lab.ntt.co.jp&gt;
Patch		: http://lists.infradead.org/pipermail/linux-mtd/2008-August/022874.html

