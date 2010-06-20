From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #16196] 2.6.35-rc2-git1 - WARNING: at net/wireless/mlme.c:341 cfg80211_send_assoc_timeout+0x107/0x11e [cfg80211]()
Date: Mon, 21 Jun 2010 00:17:40 +0200 (CEST)
Message-ID: <W8JfMs9cZw.A.NqF.LNpHMB@chimera>
References: <lc60d4toGTL.A.QzD._LpHMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <lc60d4toGTL.A.QzD._LpHMB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Johannes Berg <johannes.berg-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Miles Lane <miles.lane-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.34.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16196
Subject		: 2.6.35-rc2-git1 - WARNING: at net/wireless/mlme.c:341 cfg80211_send_assoc_timeout+0x107/0x11e [cfg80211]()
Submitter	: Miles Lane <miles.lane-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2010-06-07 19:06 (14 days old)
Message-ID	: <AANLkTinmZh9GnrZLzOGi5Q_xHbky8cKdHAkOnsIA6_dZ-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
References	: http://marc.info/?l=linux-kernel&m=127593758817428&w=2
Handled-By	: Johannes Berg <johannes.berg-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>
Patch		: http://marc.info/?l=linux-wireless&m=127608099427316&w=2

