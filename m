From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #26102] [2.6.37-rc8] BUG kmalloc-256: Poison overwritten.
Date: Sun, 13 Feb 2011 00:38:25 +0100 (CET)
Message-ID: <1z1FRILH7uF.A.QnB.ChxVNB@chimera>
References: <9Pzlq5PlEtH.A.DU.efxVNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <9Pzlq5PlEtH.A.DU.efxVNB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Pawel Sikora <pluto-PIIpFW8S9c0@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.36 and 2.6.37.

The following bug entry is on the current list of known regressions
introduced between 2.6.36 and 2.6.37.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=26102
Subject		: [2.6.37-rc8] BUG kmalloc-256: Poison overwritten.
Submitter	: Pawel Sikora <pluto-PIIpFW8S9c0@public.gmane.org>
Date		: 2010-12-30 15:08 (45 days old)
Message-ID	: <201012301608.40859.pluto-PIIpFW8S9c0@public.gmane.org>
References	: http://marc.info/?l=linux-kernel&m=129372388925679&w=2

