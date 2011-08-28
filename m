From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #38922] Lenovo T420 (Sandy Bridge) Crashes on SD Card gpt partition writing and io errors on insert
Date: Sun, 28 Aug 2011 21:01:11 +0200 (CEST)
Message-ID: <gUVi6eNP8RE.A.uJH.tfpWOB@chimera>
References: <Sm7qbRR0zn.A.yAG.LepWOB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Sm7qbRR0zn.A.yAG.LepWOB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Andrei Warkentin <andreiw-3WKxDLwmzFNWk0Htik3J/w@public.gmane.org>, Chris Ball <cjb-2X9k7bc8m7Mdnm+yROfE0A@public.gmane.org>, Peter Vollmer <vollmerpeter-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.39 and 3.0.

The following bug entry is on the current list of known regressions
introduced between 2.6.39 and 3.0.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=38922
Subject		: Lenovo T420 (Sandy Bridge) Crashes on SD Card gpt partition writing and io errors on insert
Submitter	: Peter Vollmer <vollmerpeter-gM/Ye1E23mwN+BqQ9rBEUg@public.gmane.org>
Date		: 2011-07-07 17:33 (53 days old)
First-Bad-Commit: http://git.kernel.org/linus/a3c7778f8153b9e4eceea6738973280b9e63c618

