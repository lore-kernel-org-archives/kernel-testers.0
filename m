From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #13649] Bad page state in process with various applications
Date: Mon, 29 Jun 2009 02:31:02 +0200 (CEST)
Message-ID: <5Hhc7UkUKEO.A.iBF.GjASKB@chimera>
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
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maxim Levitsky <maximlevitsky-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.29 and 2.6.30.

The following bug entry is on the current list of known regressions
introduced between 2.6.29 and 2.6.30.  Please verify if it still should
be listed and let me know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13649
Subject		: Bad page state in process with various applications
Submitter	: Maxim Levitsky <maximlevitsky-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2009-06-20 15:27 (9 days old)
References	: http://marc.info/?l=linux-mm&m=124551168828090&w=4
Handled-By	: Mel Gorman <mel-wPRd99KPJ+uzQB+pC5nmwQ@public.gmane.org>

