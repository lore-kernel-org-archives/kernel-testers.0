From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #12420] WARNING: at drivers/ata/libata-sff.c:1017 ata_sff_hsm_move+0x45e/0x750()
Date: Sun, 11 Jan 2009 12:16:28 +0100 (CET)
Message-ID: <oWTznAnH9BI.A.PPH.GHfaJB@chimera>
References: <XU-8icArWLM.A.UpG.8GfaJB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <XU-8icArWLM.A.UpG.8GfaJB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Alan Cox <alan-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Christian Borntraeger <borntraeger-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>, Ingo Molnar <mingo-X9Un+BFzKDI@public.gmane.org>, Jeff Garzik <jgarzik-H+wXaHxf7aLQT0dZR+AlfA@public.gmane.org>, Sergei Shtylyov <sshtylyov-hkdhdckH98+B+jHODAdFcQ@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.28.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=12420
Subject		: WARNING: at drivers/ata/libata-sff.c:1017 ata_sff_hsm_move+0x45e/0x750()
Submitter	: Christian Borntraeger <borntraeger-tA70FqPdS9bQT0dZR+AlfA@public.gmane.org>
Date		: 2009-01-09 12:34 (3 days old)
First-Bad-Commit: http://git.kernel.org/?p=linux/kernel/git/torvalds/linux-2.6.git;a=commit;h=871af1210f13966ab911ed2166e4ab2ce775b99d
References	: http://marc.info/?l=linux-kernel&m=123150457832109&w=4

