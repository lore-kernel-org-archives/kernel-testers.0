From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #13653] system hangs after resume from suspend to disk, mce related
Date: Mon, 29 Jun 2009 02:11:48 +0200 (CEST)
Message-ID: <6JJ2m5kyucK.A.EED.DJASKB@chimera>
References: <ij4ZQY4URcP.A.F3B.vIASKB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <ij4ZQY4URcP.A.F3B.vIASKB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Andi Kleen <ak-VuQAYsv1563Yd54FQh9/CA@public.gmane.org>, Hidetoshi Seto <seto.hidetoshi-+CUm20s59erQFUHtdCDX3A@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>

This message has been generated automatically as a part of a report
of recent regressions.

The following bug entry is on the current list of known regressions
from 2.6.30.  Please verify if it still should be listed and let me know
(either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=13653
Subject		: system hangs after resume from suspend to disk, mce related
Submitter	: Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Date		: 2009-06-21 19:02 (8 days old)
References	: http://lkml.org/lkml/2009/6/21/86
Handled-By	: Hidetoshi Seto <seto.hidetoshi-+CUm20s59erQFUHtdCDX3A@public.gmane.org>
Patch		: http://patchwork.kernel.org/patch/32062/

