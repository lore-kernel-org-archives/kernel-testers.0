From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #28432] khugepaged: gets stuck when writing to USB flash, 2.6.38-rc2
Date: Mon, 21 Feb 2011 23:03:00 +0100 (CET)
Message-ID: <5HY1m9_-mkI.A.c_H.GXtYNB@chimera>
References: <xmAo3o4v0VF.A.eLH.HWtYNB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <xmAo3o4v0VF.A.eLH.HWtYNB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, =?utf-8?q?Jind=C5=99ich=20Makovi=C4=8Dka?= <makovick-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

This message has been generated automatically as a part of a summary re=
port
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.37.  Please verify if it still should be listed and let the tr=
acking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=3D28432
Subject		: khugepaged: gets stuck when writing to USB flash, 2.6.38-rc2
Submitter	: Jind=C5=99ich Makovi=C4=8Dka <makovick-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2011-01-31 19:28 (22 days old)
Message-ID	: <AANLkTi=3DuOpN0PwWdGh6iri-vJwuMS+WMPxmaZjv0-TrV-JsoAwUIsXov1KXRcyAk9cg@public.gmane.org=
l.com>
References	: http://marc.info/?l=3Dlinux-kernel&m=3D129650210516627&w=3D=
2

