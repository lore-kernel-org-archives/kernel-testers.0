From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #37322] high load, unresponsive system spinning in rcu_kthread
Date: Mon, 27 Jun 2011 00:35:14 +0200 (CEST)
Message-ID: <Rm1pgFxEGUF.A.XZE.nM7BOB@chimera>
References: <fvHbBUhG0PD.A.IGE.HM7BOB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <fvHbBUhG0PD.A.IGE.HM7BOB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, =?utf-8?q?Ferenc=20W=C3=A1gner?= <wferi-eEbw3PyuezQ@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.38 and 2.6.39.

The following bug entry is on the current list of known regressions
introduced between 2.6.38 and 2.6.39.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D37322
Subject		: high load, unresponsive system spinning in rcu_kthread
Submitter	: Ferenc W=C3=A1gner <wferi-eEbw3PyuezQ@public.gmane.org>
Date		: 2011-06-12 14:53 (15 days old)

