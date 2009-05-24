From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #13330] nfs4 NULL pointer dereference in _nfs4_do_setlk
Date: Sun, 24 May 2009 21:11:56 +0200 (CEST)
Message-ID: <uSztiUhmDDC.A.RG.i9bGKB@chimera>
References: <ZPPBiNHr1LC.A.9ZH.K9bGKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <ZPPBiNHr1LC.A.9ZH.K9bGKB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Rich Ercolani <rercola-YxllIAoeIHiVc3sceRu5cw@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.29.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13330
Subject		: nfs4 NULL pointer dereference in _nfs4_do_setlk
Submitter	: Rich Ercolani <rercola-YxllIAoeIHiVc3sceRu5cw@public.gmane.org>
Date		: 2009-05-17 04:44 (8 days old)

