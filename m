From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #24462] r600: spread spectrum: flickering screen (bisected)
Date: Sun, 19 Dec 2010 13:34:42 +0100 (CET)
Message-ID: <6Ue85L6pKCJ.A.4-D.NefDNB@chimera>
References: <wNJKqSoEutL.A.lKD.odfDNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <wNJKqSoEutL.A.lKD.odfDNB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Alex Deucher <alexdeucher-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Dave Airlie <airlied-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Luca Tettamanti <kronos.it-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.36.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=24462
Subject		: r600: spread spectrum: flickering screen (bisected)
Submitter	: Luca Tettamanti <kronos.it-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2010-12-08 16:18 (12 days old)
First-Bad-Commit: http://git.kernel.org/linus/ba032a58d1f320039e7850fb6e8651695c1aa571
Handled-By	: Alex Deucher <alexdeucher-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Patch		: https://bugzilla.kernel.org/attachment.cgi?id=39372

