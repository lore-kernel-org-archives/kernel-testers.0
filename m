From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #14378] Problems with net/core/skbuff.c
Date: Mon, 12 Oct 2009 00:22:04 +0200 (CEST)
Message-ID: <r-4Wjt4coy.A.CwC.Wal0KB@chimera>
References: <zJ_pXHNwoHC.A.akB.Aal0KB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <zJ_pXHNwoHC.A.akB.Aal0KB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Massimo Cetra <mcetra-BBpJ+9iBSNKonA0d6jMUrA@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.31.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=14378
Subject		: Problems with net/core/skbuff.c
Submitter	: Massimo Cetra <mcetra-BBpJ+9iBSNKonA0d6jMUrA@public.gmane.org>
Date		: 2009-10-08 14:51 (4 days old)
References	: http://marc.info/?l=linux-kernel&m=125501488220358&w=4

