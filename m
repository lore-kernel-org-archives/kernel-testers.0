From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #15127] Bluetooth: sleeping function called from invalid context
Date: Mon,  8 Feb 2010 01:28:27 +0100 (CET)
Message-ID: <iuJeop2ribM.A.DgH.XY1bLB@chimera>
References: <2uzMDuY-7_O.A.M1G.7X1bLB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <2uzMDuY-7_O.A.M1G.7X1bLB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, David John <davidjon-XRr60H37pjdAfugRpC6u6w@public.gmane.org>, Luiz Augusto von Dentz <luiz.dentz-430g2QfJUUCGglJvpFV4uA@public.gmane.org>, Marcel Holtmann <marcel-kz+m5ild9QBg9hUCZPvPmw@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.31 and 2.6.32.

The following bug entry is on the current list of known regressions
introduced between 2.6.31 and 2.6.32.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=15127
Subject		: Bluetooth: sleeping function called from invalid context
Submitter	: David John <davidjon-XRr60H37pjdAfugRpC6u6w@public.gmane.org>
Date		: 2010-01-12 9:19 (27 days old)
First-Bad-Commit: http://git.kernel.org/git/linus/9e726b17422bade75fba94e625cd35fd1353e682
References	: http://marc.info/?l=linux-kernel&m=126328727021949&w=4
Handled-By	: Marcel Holtmann <marcel-kz+m5ild9QBg9hUCZPvPmw@public.gmane.org>
Patch		: http://patchwork.kernel.org/patch/76019/

