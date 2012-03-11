From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #42761] Possible circular locking dependency (3.3-rc2)
Date: Sun, 11 Mar 2012 22:31:16 +0100 (CET)
Message-ID: <C6gS2DkSgiG.A.U_B.CuRXPB@chimera>
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
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 3.2.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: https://bugzilla.kernel.org/show_bug.cgi?id=42761
Subject		: Possible circular locking dependency (3.3-rc2)
Submitter	: Felipe Balbi <balbi-l0cyMroinI0@public.gmane.org>
Date		: 2012-02-08 12:41 (33 days old)
Message-ID	: <20120208124147.GF16334-UiBtZHVXSwEVvW8u9ZQWYwjfymiNCTlR@public.gmane.org>
References	: http://marc.info/?l=linux-kernel&m=132870492311858&w=2

