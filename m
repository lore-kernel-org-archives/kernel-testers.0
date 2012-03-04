From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #42707] Hang deconfiguring network interface (in shutdown) on 3.3-rc1
Date: Sun,  4 Mar 2012 21:31:31 +0100 (CET)
Message-ID: <hq7dqombK_C.A.rUF.ZG9UPB@chimera>
References: <FNlNbnGKWLP.A.dME.3F9UPB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <FNlNbnGKWLP.A.dME.3F9UPB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, James Bottomley <James.Bottomley-JuX6DAaQMKPCXq6kfMZ53/egYHeGw8Jk@public.gmane.org>, Matt Carlson <mcarlson-dY08KVG/lbpWk0Htik3J/w@public.gmane.org>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 3.2.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: https://bugzilla.kernel.org/show_bug.cgi?id=42707
Subject		: Hang deconfiguring network interface (in shutdown) on 3.3-rc1
Submitter	: James Bottomley <James.Bottomley-JuX6DAaQMKPCXq6kfMZ53/egYHeGw8Jk@public.gmane.org>
Date		: 2012-01-28 19:56 (37 days old)
First-Bad-Commit: http://git.kernel.org/linus/92feeabf3f673767c6ee4cfc7fc224098446c1c1
Message-ID	: <1327780565.2924.24.camel-sFMDBYUN5F8GjUHQrlYNx2Wm91YjaHnnhRte9Li2A+AAvxtiuMwx3w@public.gmane.org>
References	: http://marc.info/?l=linux-kernel&m=132778076214873&w=2

