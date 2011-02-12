From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #28802] commit 5d1d0cc breaks resume from suspend on Thinkpad X201
Date: Sun, 13 Feb 2011 00:05:21 +0100 (CET)
Message-ID: <8H3lez1sawF.A.Q0G.QAxVNB@chimera>
References: <NMZS1i37KEE.A.1eG.6_wVNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <NMZS1i37KEE.A.1eG.6_wVNB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, =?utf-8?q?Bj=C3=B6rn=20Schlie=C3=9Fmann?= <chronoss-Mmb7MZpHnFY@public.gmane.org>, Chris Wilson <chris-Y6uKTt2uX1cEflXRtASbqLVCufUGDwFn@public.gmane.org>

This message has been generated automatically as a part of a summary re=
port
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.37.  Please verify if it still should be listed and let the tr=
acking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D28802
Subject		: commit 5d1d0cc breaks resume from suspend on Thinkpad X201
Submitter	: Bj=C3=B6rn Schlie=C3=9Fmann <chronoss-Mmb7MZpHnFY@public.gmane.org>
Date		: 2011-02-10 17:23 (3 days old)
Handled-By	: Chris Wilson <chris-Y6uKTt2uX1cEflXRtASbqLVCufUGDwFn@public.gmane.org>
Patch		: https://bugzilla.kernel.org/attachment.cgi?id=3D47172

