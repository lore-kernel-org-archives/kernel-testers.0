From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #11441] lots of 'in_atomic():1, irqs_disabled():0' with software-raid1
Date: Sat, 30 Aug 2008 21:50:25 +0200 (CEST)
Message-ID: <N8SeMoDzuxC.A.IxD._hbuIB@albercik>
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
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, jurriaan <thunder7-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>, Neil Brown <neilb-l3A5Bk7waGM@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.26.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11441
Subject		: lots of 'in_atomic():1, irqs_disabled():0' with software-raid1
Submitter	: jurriaan <thunder7-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>
Date		: 2008-08-27 17:05 (4 days old)
References	: http://marc.info/?l=linux-kernel&m=121985847724696&w=4
Handled-By	: Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>
		  Neil Brown <neilb-l3A5Bk7waGM@public.gmane.org>
Patch		: http://marc.info/?l=linux-kernel&m=121998896602338&w=4

