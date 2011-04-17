From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #28802] commit 5d1d0cc breaks resume from suspend on Thinkpad X201
Date: Sun, 17 Apr 2011 15:52:08 +0200 (CEST)
Message-ID: <IqJL5EkbqD.A.TBG.P6uqNB@chimera>
References: <sam8u5dLkaB.A.afE.53uqNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <sam8u5dLkaB.A.afE.53uqNB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, =?utf-8?q?Bj=C3=B6rn=20Schlie=C3=9Fmann?= <chronoss-Mmb7MZpHnFY@public.gmane.org>, Chris Wilson <chris-Y6uKTt2uX1cEflXRtASbqLVCufUGDwFn@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.37 and 2.6.38.

The following bug entry is on the current list of known regressions
introduced between 2.6.37 and 2.6.38.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D28802
Subject		: commit 5d1d0cc breaks resume from suspend on Thinkpad X201
Submitter	: Bj=C3=B6rn Schlie=C3=9Fmann <chronoss-Mmb7MZpHnFY@public.gmane.org>
Date		: 2011-02-10 17:23 (67 days old)
Handled-By	: Chris Wilson <chris-Y6uKTt2uX1cEflXRtASbqLVCufUGDwFn@public.gmane.org>

