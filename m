From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #17361] Watchdog detected hard LOCKUP in jbd2_journal_get_write_access
Date: Mon, 20 Sep 2010 21:08:04 +0200 (CEST)
Message-ID: <Wn2eLj_6KZG.A.EVH.uE7lMB@chimera>
References: <1fwtoy8sG5H.A.veG.9D7lMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1fwtoy8sG5H.A.veG.9D7lMB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Christian Casteyde <casteyde.christian-GANU6spQydw@public.gmane.org>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.35.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=17361
Subject		: Watchdog detected hard LOCKUP in jbd2_journal_get_write_access
Submitter	: Christian Casteyde <casteyde.christian-GANU6spQydw@public.gmane.org>
Date		: 2010-08-29 19:59 (23 days old)

