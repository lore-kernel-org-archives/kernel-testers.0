From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #42746] 3.3-rc2 snd_pcm lockdep backtrace
Date: Sun, 11 Mar 2012 22:31:16 +0100 (CET)
Message-ID: <C6gS2DkSgiG.A.XFC.EuRXPB@chimera>
References: <WuYv90FoNpB.A.O8.ktRXPB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <WuYv90FoNpB.A.O8.ktRXPB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Josh Boyer <jwboyer-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 3.2.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: https://bugzilla.kernel.org/show_bug.cgi?id=42746
Subject		: 3.3-rc2 snd_pcm lockdep backtrace
Submitter	: Josh Boyer <jwboyer-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>
Date		: 2012-02-06 14:56 (35 days old)
Message-ID	: <20120206145621.GA4771-8k7Gwy46GHkf7BdofF/totBPR1lH4CV8@public.gmane.org>
References	: http://marc.info/?l=linux-kernel&m=132854040916172&w=2

