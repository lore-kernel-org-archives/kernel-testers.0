From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #22932] [REGRESSION] [2.6.37-rc1] Fan noise after suspend to ram/disk
Date: Fri,  3 Dec 2010 00:41:43 +0100 (CET)
Message-ID: <gUkHV_Vc3aE.A.yrH.8yC-MB@chimera>
References: <1OMp3vU_qjP.A.JXG.uxC-MB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <1OMp3vU_qjP.A.JXG.uxC-MB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Len Brown <len.brown-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>

This message has been generated automatically as a part of a summary report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.36.  Please verify if it still should be listed and let the tracking team
know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=22932
Subject		: [REGRESSION] [2.6.37-rc1] Fan noise after suspend to ram/disk
Submitter	: Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2010-11-04 16:06 (29 days old)
First-Bad-Commit: http://git.kernel.org/linus/3e384ee6c687cb397581ee8f9440fc8220cfac80
Message-ID	: <201011041706.59046.maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
References	: http://marc.info/?l=linux-kernel&m=128888684308982&w=2
Handled-By	: Rafael J. Wysocki <rjw-KKrjLPT3xs0@public.gmane.org>
Patch		: https://patchwork.kernel.org/patch/354682/

