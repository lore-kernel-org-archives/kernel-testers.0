From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #11346] kernel BUG at arch/x86/mm/pat.c:233!
Date: Sat, 16 Aug 2008 21:02:56 +0200 (CEST)
Message-ID: <sNRO-BDDjQL.A.99D.9ZzpIB@albercik>
References: <DLWXHEp37wB.A.duD.yZzpIB@albercik>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <DLWXHEp37wB.A.duD.yZzpIB@albercik>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andi Kleen <andi-Vw/NltI1exuRpAAqCnN02g@public.gmane.org>, Jean Delvare <khali-PUYAD+kWke1g9hUCZPvPmw@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.26.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=11346
Subject		: kernel BUG at arch/x86/mm/pat.c:233!
Submitter	: Jean Delvare <khali-PUYAD+kWke1g9hUCZPvPmw@public.gmane.org>
Date		: 2008-08-15 02:10 (2 days old)
Handled-By	: Andi Kleen <andi-Vw/NltI1exuRpAAqCnN02g@public.gmane.org>
Patch		: http://bugzilla.kernel.org/attachment.cgi?id=17270&action=view

