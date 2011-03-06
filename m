From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #29722] kworker consumes ~100% CPU on HP Elitebook 8540w after resume
Date: Sun,  6 Mar 2011 13:40:43 +0100 (CET)
Message-ID: <sUKqYsqyJ4N.A.14F.8-3cNB@chimera>
References: <dtUMITvTCCN.A.uuF.y-3cNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <dtUMITvTCCN.A.uuF.y-3cNB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="macroman"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, =?utf-8?q?Ortwin=20Gl=C3=BCck?= <odi-L693kI9kcNY@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.36 and 2.6.37.

The following bug entry is on the current list of known regressions
introduced between 2.6.36 and 2.6.37.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D29722
Subject		: kworker consumes ~100% CPU on HP Elitebook 8540w after resum=
e
Submitter	: Ortwin Gl=C3=BCck <odi-L693kI9kcNY@public.gmane.org>
Date		: 2011-02-23 11:49 (12 days old)
Handled-By	: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
Patch		: https://patchwork.kernel.org/patch/604371/

