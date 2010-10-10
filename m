From: "Rafael J. Wysocki" <rjw-KKrjLPT3xs0@public.gmane.org>
Subject: [Bug #16549] 2.6.35: suspicious rcu_dereference_check() usage
Date: Sun, 10 Oct 2010 21:18:51 +0200 (CEST)
Message-ID: <yeAD7A8RDxC.A.OV.owgsMB@chimera>
References: <pyPtebg28EI.A.ZPH.NvgsMB@chimera>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <pyPtebg28EI.A.ZPH.NvgsMB@chimera>
Content-Disposition: inline
Sender: kernel-testers-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-ID: <kernel-testers.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Kernel Mailing List <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
Cc: Kernel Testers List <kernel-testers-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, Maciej Rutecki <maciej.rutecki-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Florian Mickler <florian-sVu6HhrpSfRAfugRpC6u6w@public.gmane.org>, Vladislav Bolkhovitin <vst-d+Crzxg7Rs0@public.gmane.org>

This message has been generated automatically as a part of a report
of regressions introduced between 2.6.34 and 2.6.35.

The following bug entry is on the current list of known regressions
introduced between 2.6.34 and 2.6.35.  Please verify if it still should
be listed and let the tracking team know (either way).


Bug-Entry	: http://bugzilla.kernel.org/show_bug.cgi?id=16549
Subject		: 2.6.35: suspicious rcu_dereference_check() usage
Submitter	: Vladislav Bolkhovitin <vst-d+Crzxg7Rs0@public.gmane.org>
Date		: 2010-08-04 10:56 (68 days old)
Message-ID	: <4C594740.1090608-d+Crzxg7Rs0@public.gmane.org>
References	: http://marc.info/?l=linux-kernel&m=128091938215177&w=2

