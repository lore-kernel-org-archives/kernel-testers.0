From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #40072] suspend/resume problems w/ kernel 3.0 and a *docked* ThinkPad T400, unless iwlagn unloaded
Date: Sun, 28 Aug 2011 21:01:13 +0200 (CEST)
Message-ID: <gUVi6eNP8RE.A.jjG.zepWOB@chimera>
References: <Sm7qbRR0zn.A.yAG.LepWOB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <Sm7qbRR0zn.A.yAG.LepWOB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, =?utf-8?q?Toralf=20F=C3=B6rster?= <toralf.foerster-Mmb7MZpHnFY@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.39 and 3.0.

The following bug entry is on the current list of known regressions
introduced between 2.6.39 and 3.0.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D40072
Subject		: suspend/resume problems w/ kernel 3.0 and a *docked* ThinkPa=
d T400, unless iwlagn unloaded
Submitter	: Toralf F=C3=B6rster <toralf.foerster-Mmb7MZpHnFY@public.gmane.org>
Date		: 2011-07-23 19:27 (37 days old)
Message-ID	: <201107232127.34255.toralf.foerster-Mmb7MZpHnFY@public.gmane.org>
References	: http://marc.info/?l=3Dlinux-kernel&m=3D131144928023465&w=3D=
2

