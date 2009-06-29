From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #13401] pktcdvd writing is really slow with CFQ scheduler (bisected)
Date: Mon, 29 Jun 2009 02:30:56 +0200 (CEST)
Message-ID: <5Hhc7UkUKEO.A.PgG.GkASKB@chimera>
References: <etTXaRqGgAC.A.SaE.6iASKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <etTXaRqGgAC.A.SaE.6iASKB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Jens Axboe <jens.axboe-QHcLZuEGTsvQT0dZR+AlfA@public.gmane.org>, Laurent Riffard <laurent.riffard-GANU6spQydw@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.29 and 2.6.30.

The following bug entry is on the current list of known regressions
introduced between 2.6.29 and 2.6.30.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13401
Subject		: pktcdvd writing is really slow with CFQ scheduler (bisected)
Submitter	: Laurent Riffard <laurent.riffard-GANU6spQydw@public.gmane.org>
Date		: 2009-05-28 18:43 (32 days old)

